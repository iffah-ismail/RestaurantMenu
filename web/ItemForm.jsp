<%-- 
    Document   : ItemForm
    Created on : 18 Jun 2023, 8:39:18 pm
    Author     : Richelle Juleanne
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.object.item"%>
<%@page import="com.object.MenuDAO"%>
<%@page import="com.controller.MenuServlet"%>
<html>
    <script>
    window.FontAwesomeKitConfig = {"asyncLoading":{"enabled":true},"autoA11y":{"enabled":true},"baseUrl":"https://ka-f.fontawesome.com","baseUrlKit":"https://kit.fontawesome.com","detectConflictsUntil":null,"iconUploads":{},"id":98048931,"license":"free","method":"css","minify":{"enabled":true},"token":"b99e675b6e","v4FontFaceShim":{"enabled":false},"v4shim":{"enabled":false},"v5FontFaceShim":{"enabled":false},"version":"5.15.4"};
!function(t){"function"==typeof define&&define.amd?define("kit-loader",t):t()}((function(){"use strict";function t(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(t);e&&(r=r.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,r)}return n}function e(e){for(var n=1;n<arguments.length;n++){var o=null!=arguments[n]?arguments[n]:{};n%2?t(Object(o),!0).forEach((function(t){r(e,t,o[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(o)):t(Object(o)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(o,t))}))}return e}function n(t){return(n="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function r(t,e,n){return(e=function(t){var e=function(t,e){if("object"!=typeof t||null===t)return t;var n=t[Symbol.toPrimitive];if(void 0!==n){var r=n.call(t,e||"default");if("object"!=typeof r)return r;throw new TypeError("@@toPrimitive must return a primitive value.")}return("string"===e?String:Number)(t)}(t,"string");return"symbol"==typeof e?e:String(e)}(e))in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}function o(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){var n=null==t?null:"undefined"!=typeof Symbol&&t[Symbol.iterator]||t["@@iterator"];if(null!=n){var r,o,i,c,a=[],u=!0,f=!1;try{if(i=(n=n.call(t)).next,0===e){if(Object(n)!==n)return;u=!1}else for(;!(u=(r=i.call(n)).done)&&(a.push(r.value),a.length!==e);u=!0);}catch(t){f=!0,o=t}finally{try{if(!u&&null!=n.return&&(c=n.return(),Object(c)!==c))return}finally{if(f)throw o}}return a}}(t,e)||function(t,e){if(!t)return;if("string"==typeof t)return i(t,e);var n=Object.prototype.toString.call(t).slice(8,-1);"Object"===n&&t.constructor&&(n=t.constructor.name);if("Map"===n||"Set"===n)return Array.from(t);if("Arguments"===n||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return i(t,e)}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function i(t,e){(null==e||e>t.length)&&(e=t.length);for(var n=0,r=new Array(e);n<e;n++)r[n]=t[n];return r}function c(t,e){var n=e&&e.addOn||"",r=e&&e.baseFilename||t.license+n,o=e&&e.minify?".min":"",i=e&&e.fileSuffix||t.method,c=e&&e.subdir||t.method;return t.baseUrl+"/releases/"+("latest"===t.version?"latest":"v".concat(t.version))+"/"+c+"/"+r+o+"."+i}function a(t,e){var n=e||["fa"],r="."+Array.prototype.join.call(n,",."),o=t.querySelectorAll(r);Array.prototype.forEach.call(o,(function(e){var n=e.getAttribute("title");e.setAttribute("aria-hidden","true");var r=!e.nextElementSibling||!e.nextElementSibling.classList.contains("sr-only");if(n&&r){var o=t.createElement("span");o.innerHTML=n,o.classList.add("sr-only"),e.parentNode.insertBefore(o,e.nextSibling)}}))}var u,f=function(){},s="undefined"!=typeof global&&void 0!==global.process&&"function"==typeof global.process.emit,l="undefined"==typeof setImmediate?setTimeout:setImmediate,d=[];function h(){for(var t=0;t<d.length;t++)d[t][0](d[t][1]);d=[],u=!1}function m(t,e){d.push([t,e]),u||(u=!0,l(h,0))}function p(t){var e=t.owner,n=e._state,r=e._data,o=t[n],i=t.then;if("function"==typeof o){n="fulfilled";try{r=o(r)}catch(t){g(i,t)}}v(i,r)||("fulfilled"===n&&b(i,r),"rejected"===n&&g(i,r))}function v(t,e){var r;try{if(t===e)throw new TypeError("A promises callback cannot return that same promise.");if(e&&("function"==typeof e||"object"===n(e))){var o=e.then;if("function"==typeof o)return o.call(e,(function(n){r||(r=!0,e===n?y(t,n):b(t,n))}),(function(e){r||(r=!0,g(t,e))})),!0}}catch(e){return r||g(t,e),!0}return!1}function b(t,e){t!==e&&v(t,e)||y(t,e)}function y(t,e){"pending"===t._state&&(t._state="settled",t._data=e,m(A,t))}function g(t,e){"pending"===t._state&&(t._state="settled",t._data=e,m(S,t))}function w(t){t._then=t._then.forEach(p)}function A(t){t._state="fulfilled",w(t)}function S(t){t._state="rejected",w(t),!t._handled&&s&&global.process.emit("unhandledRejection",t._data,t)}function O(t){global.process.emit("rejectionHandled",t)}function j(t){if("function"!=typeof t)throw new TypeError("Promise resolver "+t+" is not a function");if(this instanceof j==!1)throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.");this._then=[],function(t,e){function n(t){g(e,t)}try{t((function(t){b(e,t)}),n)}catch(t){n(t)}}(t,this)}j.prototype={constructor:j,_state:"pending",_then:null,_data:void 0,_handled:!1,then:function(t,e){var n={owner:this,then:new this.constructor(f),fulfilled:t,rejected:e};return!e&&!t||this._handled||(this._handled=!0,"rejected"===this._state&&s&&m(O,this)),"fulfilled"===this._state||"rejected"===this._state?m(p,n):this._then.push(n),n.then},catch:function(t){return this.then(null,t)}},j.all=function(t){if(!Array.isArray(t))throw new TypeError("You must pass an array to Promise.all().");return new j((function(e,n){var r=[],o=0;function i(t){return o++,function(n){r[t]=n,--o||e(r)}}for(var c,a=0;a<t.length;a++)(c=t[a])&&"function"==typeof c.then?c.then(i(a),n):r[a]=c;o||e(r)}))},j.race=function(t){if(!Array.isArray(t))throw new TypeError("You must pass an array to Promise.race().");return new j((function(e,n){for(var r,o=0;o<t.length;o++)(r=t[o])&&"function"==typeof r.then?r.then(e,n):e(r)}))},j.resolve=function(t){return t&&"object"===n(t)&&t.constructor===j?t:new j((function(e){e(t)}))},j.reject=function(t){return new j((function(e,n){n(t)}))};var E="function"==typeof Promise?Promise:j;function P(t,e){var n=e.fetch,r=e.XMLHttpRequest,o=e.token,i=t;return o&&!function(t){return t.indexOf("kit-upload.css")>-1}(t)&&("URLSearchParams"in window?(i=new URL(t)).searchParams.set("token",o):i=i+"?token="+encodeURIComponent(o)),i=i.toString(),new E((function(t,e){if("function"==typeof n)n(i,{mode:"cors",cache:"default"}).then((function(t){if(t.ok)return t.text();throw new Error("")})).then((function(e){t(e)})).catch(e);else if("function"==typeof r){var o=new r;o.addEventListener("loadend",(function(){this.responseText?t(this.responseText):e(new Error(""))}));["abort","error","timeout"].map((function(t){o.addEventListener(t,(function(){e(new Error(""))}))})),o.open("GET",i),o.send()}else{e(new Error(""))}}))}function _(t,e,n){var r=t;return[[/(url\("?)\.\.\/\.\.\/\.\./g,function(t,n){return"".concat(n).concat(e)}],[/(url\("?)\.\.\/webfonts/g,function(t,r){return"".concat(r).concat(e,"/releases/v").concat(n,"/webfonts")}],[/(url\("?)https:\/\/kit-free([^.])*\.fontawesome\.com/g,function(t,n){return"".concat(n).concat(e)}]].forEach((function(t){var e=o(t,2),n=e[0],i=e[1];r=r.replace(n,i)})),r}function F(t,n){var r=arguments.length>2&&void 0!==arguments[2]?arguments[2]:function(){},o=n.document||o,i=a.bind(a,o,["fa","fab","fas","far","fal","fad","fak"]);t.autoA11y.enabled&&r(i);var u=t.subsetPath&&t.baseUrl+"/"+t.subsetPath,f=[{id:"fa-main",addOn:void 0,url:u}];if(t.v4shim&&t.v4shim.enabled&&f.push({id:"fa-v4-shims",addOn:"-v4-shims"}),t.v5FontFaceShim&&t.v5FontFaceShim.enabled&&f.push({id:"fa-v5-font-face",addOn:"-v5-font-face"}),t.v4FontFaceShim&&t.v4FontFaceShim.enabled&&f.push({id:"fa-v4-font-face",addOn:"-v4-font-face"}),!u&&t.customIconsCssPath){var s=t.customIconsCssPath.indexOf("kit-upload.css")>-1?t.baseUrlKit:t.baseUrl,l=s+"/"+t.customIconsCssPath;f.push({id:"fa-kit-upload",url:l})}var d=f.map((function(r){return new E((function(o,i){var a=r.url||c(t,{addOn:r.addOn,minify:t.minify.enabled}),u={id:r.id},f=t.subset?u:e(e(e({},n),u),{},{baseUrl:t.baseUrl,version:t.version,id:r.id,contentFilter:function(t,e){return _(t,e.baseUrl,e.version)}});P(a,n).then((function(t){o(C(t,f))})).catch(i)}))}));return E.all(d)}function C(t,e){var n=e.contentFilter||function(t,e){return t},r=document.createElement("style"),o=document.createTextNode(n(t,e));return r.appendChild(o),r.media="all",e.id&&r.setAttribute("id",e.id),e&&e.detectingConflicts&&e.detectionIgnoreAttr&&r.setAttributeNode(document.createAttribute(e.detectionIgnoreAttr)),r}function I(t,n){n.autoA11y=t.autoA11y.enabled,"pro"===t.license&&(n.autoFetchSvg=!0,n.fetchSvgFrom=t.baseUrl+"/releases/"+("latest"===t.version?"latest":"v".concat(t.version))+"/svgs",n.fetchUploadedSvgFrom=t.uploadsUrl);var r=[];return t.v4shim.enabled&&r.push(new E((function(r,o){P(c(t,{addOn:"-v4-shims",minify:t.minify.enabled}),n).then((function(t){r(U(t,e(e({},n),{},{id:"fa-v4-shims"})))})).catch(o)}))),r.push(new E((function(r,o){P(t.subsetPath&&t.baseUrl+"/"+t.subsetPath||c(t,{minify:t.minify.enabled}),n).then((function(t){var o=U(t,e(e({},n),{},{id:"fa-main"}));r(function(t,e){var n=e&&void 0!==e.autoFetchSvg?e.autoFetchSvg:void 0,r=e&&void 0!==e.autoA11y?e.autoA11y:void 0;void 0!==r&&t.setAttribute("data-auto-a11y",r?"true":"false");n&&(t.setAttributeNode(document.createAttribute("data-auto-fetch-svg")),t.setAttribute("data-fetch-svg-from",e.fetchSvgFrom),t.setAttribute("data-fetch-uploaded-svg-from",e.fetchUploadedSvgFrom));return t}(o,n))})).catch(o)}))),E.all(r)}function U(t,e){var n=document.createElement("SCRIPT"),r=document.createTextNode(t);return n.appendChild(r),n.referrerPolicy="strict-origin",e.id&&n.setAttribute("id",e.id),e&&e.detectingConflicts&&e.detectionIgnoreAttr&&n.setAttributeNode(document.createAttribute(e.detectionIgnoreAttr)),n}function T(t){var e,n=[],r=document,o=r.documentElement.doScroll,i=(o?/^loaded|^c/:/^loaded|^i|^c/).test(r.readyState);i||r.addEventListener("DOMContentLoaded",e=function(){for(r.removeEventListener("DOMContentLoaded",e),i=1;e=n.shift();)e()}),i?setTimeout(t,0):n.push(t)}function L(t){"undefined"!=typeof MutationObserver&&new MutationObserver(t).observe(document,{childList:!0,subtree:!0})}try{if(window.FontAwesomeKitConfig){var k=window.FontAwesomeKitConfig,x={detectingConflicts:k.detectConflictsUntil&&new Date<=new Date(k.detectConflictsUntil),detectionIgnoreAttr:"data-fa-detection-ignore",fetch:window.fetch,token:k.token,XMLHttpRequest:window.XMLHttpRequest,document:document},M=document.currentScript,N=M?M.parentElement:document.head;(function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};return"js"===t.method?I(t,e):"css"===t.method?F(t,e,(function(t){T(t),L(t)})):void 0})(k,x).then((function(t){t.map((function(t){try{N.insertBefore(t,M?M.nextSibling:null)}catch(e){N.appendChild(t)}})),x.detectingConflicts&&M&&T((function(){M.setAttributeNode(document.createAttribute(x.detectionIgnoreAttr));var t=function(t,e){var n=document.createElement("script");return e&&e.detectionIgnoreAttr&&n.setAttributeNode(document.createAttribute(e.detectionIgnoreAttr)),n.src=c(t,{baseFilename:"conflict-detection",fileSuffix:"js",subdir:"js",minify:t.minify.enabled}),n}(k,x);document.body.appendChild(t)}))})).catch((function(t){console.error("".concat("Font Awesome Kit:"," ").concat(t))}))}}catch(t){console.error("".concat("Font Awesome Kit:"," ").concat(t))}}));
    </script>
<style>
    @import url('https://fonts.googleapis.com/css?family=Poppins');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;
  font-family: 'Poppins', sans-serif;
}

body{
   background-color: white;
}
header{
    box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
}
.wrapper{
  display: flex;
  position: relative;
  
}

.wrapper .sidebar{
  width: 200px;
  height: 100%;
  background: white;
  padding: 30px 0px;
  position: fixed;
  box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2);
}

.wrapper .sidebar h2{
  color: black;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 30px;
  
}

.wrapper .sidebar ul li{
  padding: 15px;
  border-bottom: 1px solid lightgrey;
  border-bottom: 1px solid rgba(0,0,0,0.05);
  border-top: 1px solid rgba(255,255,255,0.05);
}    

.wrapper .sidebar ul li a{
  color: black;
  display: block;
}

.wrapper .sidebar ul li a .fas{
  width: 25px;
}

.wrapper .sidebar ul li:hover{
  background-color: #e9e9e9;
}
    
.wrapper .sidebar ul li:hover a{
  color: lightgrey;
}
 


.wrapper .main_content{
  width: 100%;
  margin-left: 200px;
}

.wrapper .main_content .header{
  padding: 20px;
  background: #fff;
  color: #717171;
  border-bottom: 1px solid #e0e4e8;
}

.wrapper .main_content .info{
  margin: 20px;
  color: #717171;
  line-height: 25px;
}

.wrapper .main_content .info div{
  margin-bottom: 20px;
}

info {
  margin: 0;
  font-family: "Poppins", sans-serif;
  background-color: white;
  
}

.topnav {
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  position: fixed;
  width: 100%;
  overflow: visible;
  margin-top:0;
  text-align: center;

}

.footer {
   box-shadow: 5px 5px 10px black;
   position: fixed;
   left: 0;
   bottom: 0;
   padding: 5px;
   margin-bottom:0;
   width: 100%;
   background-color: white;
   text-align: center;
   font-family: "Poppins", sans-serif;
}

.inputbox {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    font-family: "Poppins", sans-serif;
    height: 28px;
    font-size: 16px;
    width: 97%;
    border-radius: 8px; /* Added border-radius property */
  }

  .image{
      width: 50%;
  }
  .image>img{
      width: 100%;
      object-fit: cover;
  }
  
.move{
  padding-top: 20px;  
  padding-right:0;
  height: 28px;
}

.centerBtn{
  background: none;
    border: none;
    cursor: pointer;
    outline: none;
  font-size: 40px;
}

.centerBtn:hover{
  background-color: white;
  color: black;
  box-shadow: 0px 15px 20px rgb(200, 200, 200);
  font-weight:600px;
  transform: translateY(-1px);
}

form{
padding-left: 0;
}

.sec{
  padding-top: 30px;
  padding-bottom: 0;
  color:black;
  line-height:1;
}

.homebtn {
  width: 28%;
  padding: 5px 120px 5px 120px;
  border: 3px solid white;
  border-radius: 16px;
  background-color: transparent;
  color: white;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
}

.homebtn:hover{
  background-color: rgba(194, 199, 199, 0.5);
}

  .card-holder {
    /* other base styles go here */
    padding-top: 10px;
    display: flex;
    justify-content: center;
    height: 80vh;
    background: white;
    overflow-y: scroll;
  }

  .card {
    /* other card styles go here */
    max-width: 500px;
    width: 100%;
    height: 160%;
    padding: 20px;
    padding-top: 0;
    padding-bottom: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
    background:#e9e9e9;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
  }

  .card h1 {
    text-align: center;
    font-size: 24px;
    margin-top: 0;
  }
  li{
      box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2);
  }
  moveFrm{
      box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
  }
</style>
<div class="wrapper">
    <div class="sidebar">
        <h2><img src="image/icon.png" alt="UMT CAFE" style="width:150px; height:auto;"></h2>
        <ul>
            <li><a href="login?action=logout"><i class="fas fa-sign-out-alt"></i>Log Out</a></li>
            <li><a href="MenuServlet"><i class="fas fa-hamburger"></i>Menu Catalogue</a></li>
            <li><a href="MenuServlet?action=new"><i class="fas fa-plus"></i>Add new item</a></li>
            <li><a href="loadOrder"><i class="fas fa-list" style="color: #000000;"></i>Order List</a></li>
        </ul> 
    </div>
    <div class="main_content">
        <div class="header" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px">Welcome, UMT Cafe Cashier. Have a good day working! </div>  
        
  <div class="card-holder">
    <c:if test="${item == null}">
    <div class="card" style="height: 110%;">
    </c:if>
    <c:if test="${item != null}">
    <div class="card">
    </c:if>
	        <c:if test="${item != null}">
                   <form action="MenuServlet" method="post" enctype="multipart/form-data">
                       <input type="hidden" name="action" value="update"/>
                </c:if>   
                <c:if test="${item == null}">
                   <form action="MenuServlet" method="post" enctype="multipart/form-data">
                       <input type="hidden" name="action" value="insert"/>
                </c:if>
	
	<center>
	<div class="sec">
		<h1>
	                <c:if test="${item != null}">
                            Edit Item
                        </c:if>
                        <c:if test="${item == null}">
                            <i class="fas fa-plus"></i> Add New Item
                        </c:if>
		</h1>
	</div>
	</center>
                <c:if test="${item == null}">
                <input type="hidden" name="reference" value=""/>
                </c:if>
                <c:if test="${item != null}">
                <input type="hidden" name="reference" value="${item.id}"/>
                </c:if>
                <label style="font-size: 15px; color:black;" for="itemname">Item Id</label><br>
                <c:if test="${item == null}">
                <input class="inputbox" type="text" style="font-size: 15px" placeholder=" Enter id" value="" name="itemid" required="required">
                </c:if>
                <c:if test="${item != null}">
                <input class="inputbox" type="text" style="font-size: 15px" placeholder=" Enter id" value="<c:out value=' ${item.id}'/>" name="itemid" required="required">
                </c:if>
                <br><br>
                <label style="font-size: 15px; color:black;" for="itemname">Item Name</label><br>
                <c:if test="${item == null}">
                <input class="inputbox" type="text" style="font-size: 15px" placeholder=" Enter item name" value="" name="itemname" required="required">
                </c:if>
                <c:if test="${item != null}">
                 <input class="inputbox" type="text" style="font-size: 15px" placeholder=" Enter item name" value="<c:out value=' ${item.name}'/>" name="itemname" required="required">   
                </c:if>
                <br><br>

                <label style="font-size: 15px; color:black;;" for="itemprice">Item Price</label><br>
                <c:if test="${item == null}">
                <input class="inputbox" type="text" style="font-size: 15px" placeholder=" Enter item price" value="" name="itemprice" required="required">
                </c:if>
                <c:if test="${item != null}">
                <input class="inputbox" type="text" style="font-size: 15px" placeholder=" Enter item price" value="<c:out value=' ${item.price}'/>" name="itemprice" required="required">
                </c:if>
                <br><br>

                <label style="font-size: 15px; color:black;" for="itemprice">Item Image</label><br>
                <input class="inputbox" type="file" style="font-size: 15px" name="image">
                <c:if test="${item != null}">
                <div class="image" ><img src="data:${item.content};base64,${item.imageData}"/></div>
                </c:if>
                <br><br>

                <label style="font-size: 15px; color:black;" for="itemcategory">Item Category</label><br>
                <c:if test="${item == null}">
                <input class="inputbox" type="text" style="font-size: 15px" value=""
                               style="background-color:#cccccc;" placeholder="-" readonly><br>
                </c:if>
                <c:if test="${item != null}">
                <input class="inputbox" type="text" style="font-size: 15px" value="<c:out value=' ${item.category}'/>"
                               style="background-color:#cccccc;" placeholder="-" readonly><br>
                </c:if>
                <input class="inputbox" list="itemCategoryList" id="itemcategory"
                       name="itemcategory" style="font-size: 15px" placeholder="Choose one">
                <datalist id="itemCategoryList">
                    <option value="Drinks">
                    <option value="Food">
                    <option value="Desserts">
                </datalist>
                <br><br>

                <center>
                <div class="move">
                        <button class="centerBtn" type="submit"><i class="fas fa-save" style="color: #4ae89e; background-color:#e9e9e9; "></i></button>
                </div>
                </center>
        </form>
</div>
  </div>
</div>
</html>