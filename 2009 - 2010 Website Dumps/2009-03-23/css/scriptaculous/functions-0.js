window.onload = loadup;

function loadup() {
 //css :hover only works on <a href> tags.. ie5/6
 //:. manually change style on li:mouseover
 printPage();
 jsEnabled();
}

function printPage() {
 var printPage = document.getElementById('print');
 var printPage2 = document.getElementById('print2');

 if (printPage) {
  printPage.onclick = function () {
   window.print();
  }

  printPage2.onclick = function () {
   window.print();
  }

  //printPage.style.display = 'block';
  printPage.style.display = 'inline';
  printPage2.style.display = 'inline';
 }
}
//return array of classes by name
function getElementsByClassName(oElm, strTagName, strClassName){
    var arrElements = (strTagName == "*" && oElm.all)? oElm.all : oElm.getElementsByTagName(strTagName);
    var arrReturnElements = new Array();
    strClassName = strClassName.replace(/\-/g, "\\-");
    var oRegExp = new RegExp("(^|\\s)" + strClassName + "(\\s|$)");
    var oElement;
    for(var i=0; i<arrElements.length; i++){
        oElement = arrElements[i];
        if(oRegExp.test(oElement.className)){
            arrReturnElements.push(oElement);
        }
    }
    return (arrReturnElements)
}

function jsEnabled() {
 var tabberTabs = getElementsByClassName(document, "div", "tabberTabs");
 var assetBottom = getElementsByClassName(document, "div", "assetBottom");

 for(i=0;i<tabberTabs.length;i++) {
  tabberTabs[i].getElementsByTagName('h2')[0].style.textAlign = 'center';
 }

 for(i=0;i<assetBottom.length;i++) {
  assetBottom[i].style.display = 'block';
 }

}

// end of file!