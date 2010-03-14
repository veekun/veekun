var dexsuggest_oldvalue = "";
var dexsuggest_host_el  = null;
var dexsuggest_request  = null;

// set a teensy delay on the ajax request so we don't interrupt typing
var dexsuggest_timeout  = null;
function dexsuggest_change_wrapper(evt) {
    if (dexsuggest_timeout)
        window.clearTimeout(dexsuggest_timeout);

    window.setTimeout(dexsuggest_change, 100, evt);
}

// handle keypresses
function dexsuggest_change(evt) {
    dexsuggest_timeout = null;

    if (evt.keyCode == 9 || evt.keyCode == 13) return;

    var suggestbox = document.getElementById("dexsuggest");
    var el = evt.target;
    var suggestvalue = el.value;
    
    if (suggestvalue == dexsuggest_oldvalue) return;
    dexsuggest_oldvalue = suggestvalue;
    
    if (!suggestvalue && suggestbox) {
        suggestbox.style.visibility == "hidden";
        return;
    }

    if (dexsuggest_request)
        dexsuggest_request.abort();

    var url = "/dex/suggest?extended=1;search=" + suggestvalue;
    var type;
    if ($(dexsuggest_host_el).is(".js-dexsuggest-pokemon"))
        type = "pokemon";
    else if ($(dexsuggest_host_el).is(".js-dexsuggest-move"))
        type = "move";

    if (type)
        url += ";type=" + type;

    dexsuggest_request = $.ajax({
        type: "GET",
        url: url,
        dataType: "json",
        error: function() {
            dexsuggest_request = null;
        },
        success: function(res) {
            dexsuggest_request = null;
            if (res[0] != el.value) return;

            while (suggestbox.firstChild)
                suggestbox.removeChild(suggestbox.firstChild);
            suggestbox.scrollTop = 0;

            var opt;
            var len = suggestvalue.length;
            for (var i = 0; i < res[1].length; i++) {
                opt = document.createElement('li');
                var typed_part = document.createElement('span');
                typed_part.className = 'typed';
                typed_part.appendChild(
                    document.createTextNode( res[1][i].label.substr(0, len) )
                );
                opt.appendChild(typed_part);

                var untyped_part = res[1][i].label.substr(len);
                opt.appendChild( document.createTextNode(untyped_part) );

                if (res[1][i].image) {
                    opt.style.backgroundImage = "url(" + res[1][i].image + ")";

                    if (res[1][i].bottom_align)  // special hack for Pokemon
                        opt.style.backgroundPosition = "0.33em bottom";
                    // XXX: any way to just override the vertical position?
                    else if (res[1][i].left_4px)  // special hack for items
                        opt.style.backgroundPosition = "0.66em center";
                    // XXX: THIS IS AWFUL, need better solution STAT
                }

                $(opt).click(dexsuggest_update_host);

                suggestbox.appendChild(opt);
            }

            if (res[1].length) {
                suggestbox.style.visibility = "visible";
            } else {
                suggestbox.style.visibility = "hidden";
            }
            
            dexsuggest_resize();
        }
    });
}

function dexsuggest_update_host(evt) {
    $(dexsuggest_host_el).val(evt.currentTarget.textContent);
}

function dexsuggest_press(evt) {
    var suggestbox = document.getElementById('dexsuggest');
    if (!suggestbox) return;

    var el = evt.target;
    var suggestvalue = el.value;
    
    var old_host_el = dexsuggest_host_el;
    dexsuggest_host_el = el;
    if (el != old_host_el) {
        dexsuggest_resize();
    }

    if (!evt.charCode) {  // no character generated
        if (evt.keyCode == 27) {  // esc
            dexsuggest_hide();

        // These two cases are used for moving the selection highlight up and
        // down the fake listbox.
        } else if (evt.keyCode == 38) {  // up
            if (suggestbox.style.visibility == "hidden")
                return;

            var selected = $('#dexsuggest > .selected').get(0);
            var prev;
            if (selected) {
                prev = selected.previousSibling;
            } else {
                prev = $('#dexsuggest > li:last-child').get(0);
            }
            if (prev) {
                prev.className = 'selected';
                if (selected)
                    selected.className = undefined;

                dexsuggest_scrollto(prev);
                evt.preventDefault();
            }
        } else if (evt.keyCode == 40) {  // down
            if (suggestbox.style.visibility == "hidden")
                suggestbox.style.visibility = "visible";

            var selected = $('#dexsuggest > .selected').get(0);
            var next;
            if (selected) {
                next = selected.nextSibling;
            } else {
                next = $('#dexsuggest > li').get(0);
            }
            if (next) {
                next.className = 'selected';
                if (selected)
                    selected.className = undefined;

                dexsuggest_scrollto(next);
                evt.preventDefault();
            }

        // Select the highlighted entry if there be one, otherwise submit
        } else if (evt.keyCode == 13) {  // enter
            // no suggestbox -> normal submit
            if (suggestbox.style.visibility == "hidden")
                return;

            var selected = $('#dexsuggest > .selected').get(0);

            // nothing selected
            if (!selected)
                return;

            // otherwise, copy selection to target box...
            $(evt.target).val( selected.textContent );

            // ...and kill submit
            evt.preventDefault();

            dexsuggest_hide();
        }
    }
}

function dexsuggest_scrollto(el) {
    var min_bottom = el.offsetTop + el.offsetHeight;
    if (el.parentNode.scrollTop < min_bottom - el.parentNode.offsetHeight)
        el.parentNode.scrollTop = min_bottom - el.parentNode.offsetHeight;

    var max_top = el.offsetTop;
    if (el.parentNode.scrollTop > max_top)
        el.parentNode.scrollTop = max_top;
}

function dexsuggest_resize() {
    var el = document.getElementById('dexsuggest');
    if (!el) return;
    if (!dexsuggest_host_el) return;

    var top_el  = dexsuggest_host_el;
    var left_el = dexsuggest_host_el;
    
    var offset_top = top_el ? top_el.offsetHeight : 0;
    while (top_el) {
        offset_top += top_el.offsetTop;
        top_el = top_el.offsetParent;
    }

    var offset_left = 0;
    while (left_el) {
        offset_left += left_el.offsetLeft;
        left_el = left_el.offsetParent;
    }

    el.style.top   = offset_top  + "px";
    el.style.left  = offset_left + "px";
    el.style.width = dexsuggest_host_el.offsetWidth + "px";
}

function dexsuggest_hide() {
    $('#dexsuggest').css('visibility', 'hidden');
}

$(document).ready(function(evt) {
    var suggestbox = document.createElement('ul');
    suggestbox.id = "dexsuggest";
    suggestbox.style.visibility = "hidden";
    document.body.appendChild(suggestbox);
    
    $(".js-dexsuggest")
        .attr("autocomplete", "off")
        .keyup(dexsuggest_change_wrapper)
        .keypress(dexsuggest_press)
        .blur(function(){ window.setTimeout(dexsuggest_hide, 100) });
    $(document).resize(dexsuggest_resize);

    dexsuggest_resize();
});
