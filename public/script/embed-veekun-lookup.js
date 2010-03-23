// This is intended for third parties to use, so it can NOT assume jQuery
// exists -- or anything else, for that matter!

// Let the suggestion script know where it's hosted.  Gross hack but kinda
// necessary for development
__veekun_url_prefix = 'http://veekun.com';

// Load a script, then run something when it's done.
// http://www.nczonline.net/blog/2009/07/28/the-best-way-to-load-external-javascript/
function __veekun_dynamically_load_scripts(scripts, callback) {
    url = scripts[0];
    other_scripts = scripts.slice(1);

    // Craft element
    var script_el = document.createElement('script');
    script_el.setAttribute('type', 'text/javascript');

    // Recurse if there are more scripts to load
    var full_callback;
    if (other_scripts.length)
        full_callback = function() {
            __veekun_dynamically_load_scripts(other_scripts, callback);
        };
    else
        full_callback = callback;

    // Bind handlers
    var event_name;
    if (script_el.readyState)  // IE
        event_name = 'onreadystatechange';
    else  // everyone else
        event_name = 'onload';

    script_el[event_name] = function() {
        if (script_el.readyState &&
            script_el.readyState != 'complete' &&
            script_el.readyState != 'loaded')
        {
            return;
        }

        full_callback();
    };

    script_el.setAttribute('src', __veekun_url_prefix + url);
    document.getElementsByTagName('head')[0].appendChild(script_el);
}


// Inject the suggestions dropdown styling
(function() {
    var link_el = document.createElement('link');
    link_el.setAttribute('rel', 'stylesheet');
    link_el.setAttribute('type', 'text/css');
    link_el.setAttribute('href', __veekun_url_prefix + '/static/pokedex/css/pokedex-suggestions.css');
    document.getElementsByTagName('head')[0].appendChild(link_el);
})();


// Load scripts and go
var __veekun_js = [ '/static/pokedex/script/pokedex-suggestions.js' ];
if (! window.$ || ! window.jQuery)
    __veekun_js.unshift('/static/spline/script/lib/jquery-1.3.2.min.js');

__veekun_dynamically_load_scripts(__veekun_js, function(){});
