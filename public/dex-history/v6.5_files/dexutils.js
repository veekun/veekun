function add_move_table_controls() {
    var table = $('#js-movetable');
    var target = $('#js-move-table-controls');
    if (!table || !target) return;

    target.append('Only show moves from: ');

    var version_els = table.find('tr:first-child.heading th img');
    var ver_ct = version_els.length;
    var ver = 1;
    version_els.each(function(){
        ver++;
        var closure_ver = ver;
        var link = this.cloneNode(false);
        var handler = function(){
            reduce_move_table(closure_ver, ver_ct + 1)
        }
        link.addEventListener('click', handler, false);
        target.append(link);
        target.append(' ');
    });

    var all_link = $("<span>all</span>");
    all_link.click(function(){
        reset_move_table();
        fix_move_table_highlighting();
    });
    target.append(all_link);

    target.addClass('js-move-table-controls');
}

function reduce_move_table(idx, ver_ct) {
    reset_move_table();

    $(' #js-movetable td:nth-child(' + idx + '):not(:has(img)) ')
        .filter(function(){ return !this.textContent.match(/\S/) })
        .parent().addClass('js-move-table-reduced');

    $(' #js-movetable tr.js-versionless ').addClass('js-move-table-reduced');

//    $(' #js-movetable tr.heading:not(:has( ~ tr:not(.js-move-table-reduced) ~ tr.heading )) ').addClass('js-move-table-reduced');

    var version_cells = $(' #js-movetable td, #js-movetable th ')
    for (var i = 1; i <= ver_ct; i++) {
        if (i == idx) continue;
        version_cells.filter(':nth-child(' + i + ')').addClass('js-move-table-reduced');
    }

    fix_move_table_highlighting();
}

function reset_move_table() {
    $('.js-move-table-reduced').removeClass('js-move-table-reduced');
}

function fix_move_table_highlighting() {
    $(' #js-movetable tr ').removeClass('color1').removeClass('color2');
    $(' #js-movetable tr:not(.heading):not(.js-move-table-reduced):even ').addClass('color1');
    $(' #js-movetable tr:not(.heading):not(.js-move-table-reduced):odd  ').addClass('color2');
}

$(add_move_table_controls);
