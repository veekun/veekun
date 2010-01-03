 <!--
  function hovercheck(e) {
    e = (e) ? e : ((window.event) ? window.event : ""); if (!e) { return; }
    if (e.target) { obj = (e.target.nodeType == 3) ? e.target.parentNode : e.target; ie = false; } else { obj = e.srcElement; ie = true; }
    if (lastobj === obj) { return; }
    if (lastobj && lastobj.className == "hoverbutton2") { lastobj.style.backgroundColor = ""; lastobj.className = "hoverbutton"; window.defaultStatus = ""; lastobj = null; }
    while (obj.className != "hoverbutton") {
      if (obj == document.body) { return; }
      obj = (obj.parentElement) ? obj.parentElement : obj.parentNode;
    }
    if (obj.className == "hoverbutton") {
      obj.style.backgroundColor = obj.style.borderLeftColor;
      obj.className = "hoverbutton2";
      t = obj.getAttribute("TITLE");
      if (t != "" && t != window.defaultStatus) { window.defaultStatus = obj.getAttribute("TITLE"); }
      lastobj = obj;
    }
  }
 // -->
