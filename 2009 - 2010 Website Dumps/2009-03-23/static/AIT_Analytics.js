/*
 * Grab analytics data from browser and page, then send to server with an ajax call
 * does NOT use jQuery because pages like wayback, will not have jQuery available
 *
 * To add to page: <script type="text/javascript" src="{path_to_static_file}/AIT_Analytics.js" async="async"></script>
 */
(function (){
    // specify host location
    var prodHost = "https://partner.archive-it.org";
    var qaHost = "https://partner.qa-archive-it.org";
    var localHost = "http://localhost:8888";

    var host = prodHost;

    // gather GET query
    var APIurl = host+"/analytics?"; // url of server script
    var query = "";

    // get user agent
    query += "userAgent=" + encodeURIComponent(window["navigator"].userAgent) + "&";

    // get referrer
    query += "referer=" + encodeURIComponent(document.referrer) + "&";

    // get user-language
    var language = window["navigator"].language || window["navigator"].browserLanguage;
    query += "language=" + language + "&";

    // get page path
    query += "location=" + encodeURIComponent(document.location) + "&";

    // get page title
    query += "title=" + encodeURIComponent(document.title) + "&";

    // get viewport size
    var width = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
    var height = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
    query += "viewport=" + width + "x" + height + "&";

    // get screen size
    var width = screen.width;
    var height = screen.height;
    query += "screen=" + width + "x" + height + "&";

    // send to server side script
    if(navigator.appVersion.indexOf("MSIE")!=-1 && window.XDomainRequest){
        // code for IE
        var xdr = new XDomainRequest();
        xdr.open("GET", APIurl +query);
        xdr.responseType = "json";
        xdr.send();
    } else {
        // code for Firefox, Chrome, Opera, Safari
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("GET", APIurl + query, true);
        //xmlhttp.responseType = "json";   // leave off to appease iOS 6
        xmlhttp.send();
    }

})();