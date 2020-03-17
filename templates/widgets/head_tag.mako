<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,700&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
<link rel="search" type="application/opensearchdescription+xml" title="veekun Pokédex" href="${h.static_uri('local', 'pokedex_opensearch.xml')}">
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-246901-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
% if request.headers.get("DNF", "0") != "1":
<style>
  @font-face {
      font-family: "Hellvetica";
      src: url(${h.static_uri('local', 'fonts/Hellvetica.ttf')}) format('truetype');
      font-weight: 400;
      font-style: normal;
  }
  body {
      font-family: "Hellvetica", "Source Sans Pro", "Helvetica Neue", DejaVu Sans, Verdana, sans-serif !important;
  }
</style>
% endif
