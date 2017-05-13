// Only for Chrome, Firefox, Opera, IE>7
function loadXsltFile(datafile, transfofile, nodeid){
    var xmlhttpdata = new XMLHttpRequest();
    xmlhttpdata.transfofile = transfofile;
    xmlhttpdata.nodeid = nodeid;
    xmlhttpdata.onload = function(){
        var xmlhttptransfo = new XMLHttpRequest();
        xmlhttptransfo.data = this.responseXML;
        xmlhttptransfo.nodeid = this.nodeid;
        xmlhttptransfo.onload = function(){
            if(document.implementation && document.implementation.createDocument){
                xsltProcessor = new XSLTProcessor();
                xsltProcessor.importStylesheet(this.responseXML);
                html = xsltProcessor.transformToFragment(this.data, document);
                document.getElementById(this.nodeid).appendChild(html);
            }
        }
        xmlhttptransfo.open('GET', this.transfofile);
        xmlhttptransfo.send();
    }
    xmlhttpdata.open('GET', datafile);
    xmlhttpdata.send();
}
