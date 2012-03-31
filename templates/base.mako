<%! from spline import i18n %>

<!DOCTYPE html>
<html>
<head>
    <title>${self.title()} - ${config['spline.site_title']}</title>
    <link rel="shortcut icon" type="image/png" href="${h.static_uri('local', 'favicon-treekun.png')}">
    <link rel="stylesheet" type="text/css" href="${url(controller='main', action='css')}">
    <%include file="/widgets.mako" args="widget='head_tag'"/>
    % for plugin, script in c.javascripts:
    <script type="text/javascript" src="${h.static_uri(plugin, 'script/%s.js' % script)}"></script>
    % endfor
</head>
<body class="no-js">
<div id="header">
    <div id="title"><a href="${url('/')}">${config['spline.site_title']}</a></div>
    <div id="page-name">${self.title_in_page()}</div>
    <%include file="/widgets.mako" args="widget='page_header'"/>
</div>

<%def name="recursive_menu(links)">
<ul>
  % for link in links:
    <li>
        ## Instantiate the translator. XXX: Cache this?
        <%translate = link.translator_class(c)%>
        <%label=translate(link.label, context=link.i18n_context)%>
        % if not link.label:
        <!-- nothin -->
        % elif link.url:
        <a href="${link.url}">${label}</a>
        % else:
        <a>${label}</a>
        % endif
        % if link.children:
        ${recursive_menu(link.children)}
        % endif
    </li>
  % endfor
</ul>
</%def>
<div id="menu">
    ${recursive_menu(c.links)}
</div>

<%include file="/widgets.mako" args="widget='before_content'"/>

<% flash = h.flash.pop_messages() %>
% if flash:
<ul id="flash">
    % for message in flash:
    <li class="flash-${message.category}">
        <img src="${h.static_uri('spline', "icons/{0}.png".format(message.icon))}" alt="">
        ${message}
    </li>
    % endfor
</ul>
% endif

## I hate wrapper divs, but these allow for some very nice layout.
## #content is used for columns; +padding, -margin, overflow: hidden.
## #body-wrapper is used for any-source-order columns.
<div id="body">
 <div id="content-wrapper">
  <div id="content">
    ${next.body()}
  </div>
 </div>
</div>
<div id="footer">
    ## Unlike the header, which is made of distinct components, the footer is a
    ## fairly arbitrary blob.  So, screw it, let deployments override the whole
    ## shebang.
    <%include file="/base-footer.mako" />
</div>
</body>
</html>

<%def name="title()"><% _ = i18n.Translator(c) %>${_('Untitled')}</%def>
<%def name="title_in_page()">${self.title()}</%def>
