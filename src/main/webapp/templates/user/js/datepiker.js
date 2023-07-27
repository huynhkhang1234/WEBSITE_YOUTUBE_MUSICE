<
    script nonce = "4cd934fb-656f-4728-9f2c-18c1cb6832cd" > (function (w, d) {
        ! function (bv, bw, bx, by) {
            bv[bx] = bv[bx] || {};
            bv[bx].executed = [];
            bv.zaraz = {
                deferred: [],
                listeners: []
            };
            bv.zaraz.q = [];
            bv.zaraz._f = function (bz) {
                return function () {
                    var bA = Array.prototype.slice.call(arguments);
                    bv.zaraz.q.push({
                        m: bz,
                        a: bA
                    })
                }
            };
            for (const bB of ["track", "set", "debug"]) bv.zaraz[bB] = bv.zaraz._f(bB);
            bv.zaraz.init = () => {
                var bC = bw.getElementsByTagName(by)[0],
                    bD = bw.createElement(by),
                    bE = bw.getElementsByTagName("title")[0];
                bE && (bv[bx].t = bw.getElementsByTagName("title")[0].text);
                bv[bx].x = Math.random();
                bv[bx].w = bv.screen.width;
                bv[bx].h = bv.screen.height;
                bv[bx].j = bv.innerHeight;
                bv[bx].e = bv.innerWidth;
                bv[bx].l = bv.location.href;
                bv[bx].r = bw.referrer;
                bv[bx].k = bv.screen.colorDepth;
                bv[bx].n = bw.characterSet;
                bv[bx].o = (new Date).getTimezoneOffset();
                if (bv.dataLayer)
                    for (const bI of Object.entries(Object.entries(dataLayer).reduce(((bJ, bK) => ({
                            ...bJ[1],
                            ...bK[1]
                        }))))) zaraz.set(bI[0], bI[1], {
                        scope: "page"
                    });
                bv[bx].q = [];
                for (; bv.zaraz.q.length;) {
                    const bL = bv.zaraz.q.shift();
                    bv[bx].q.push(bL)
                }
                bD.defer = !0;
                for (const bM of [localStorage, sessionStorage]) Object.keys(bM || {}).filter((bO => bO.startsWith("_zaraz_"))).forEach((bN => {
                    try {
                        bv[bx]["z_" + bN.slice(7)] = JSON.parse(bM.getItem(bN))
                    } catch {
                        bv[bx]["z_" + bN.slice(7)] = bM.getItem(bN)
                    }
                }));
                bD.referrerPolicy = "origin";
                bD.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(bv[bx])));
                bC.parentNode.insertBefore(bD, bC)
            };
            ["complete", "interactive"].includes(bw.readyState) ? zaraz.init() : bv.addEventListener("DOMContentLoaded", zaraz.init)
        }(w, d, "zarazData", "script");
    })(window, document); < /script></head >
<
body >
    <
    div class = "wrapper" >
    <
    div class = "image-holder" >
    <
    img src = "images/form-wizard.png"
alt = "" >
    <
    /div> <
    form action = "" >
    <
    div class = "form-header" >
    <
    a href = "#" > #Academic Programs < /a> <
    h3 > Register
for the course online < /h3> <
    /div> <
    div id = "wizard" >

    <
    h4 > < /h4> <
    section >
    <
    div class = "form-row"
style = "margin-bottom: 26px;" >
    <
    label
for = "" >
Is this course
for UF Online ?
    <
    /label> <
    div class = "form-holder" >
    <
    select name = ""
id = ""
class = "form-control" >
    <
    option value = "no"
class = "option" > No < /option> <
    option value = "yes"
class = "option" > Yes < /option> <
    /select> <
    i class = "zmdi zmdi-caret-down" > < /i> <
    /div> <
    /div> <
    div class = "form-row" >
    <
    label
for = "" >
Preferred System:
    <
    /label> <
    div class = "form-holder" >
    <
    select name = ""
id = ""
class = "form-control" >
    <
    option value = "canvas"
class = "option" > Canvas < /option> <
    option value = "svg"
class = "option" > Svg < /option> <
    /select> <
    i class = "zmdi zmdi-caret-down" > < /i> <
    /div> <
    /div> <
    div class = "form-row" >
    <
    label
for = "" >
College / Department:
    <
    /label> <
    div class = "form-holder" >
    <
    select name = ""
id = ""
class = "form-control" >
    <
    option value = "florida"
class = "option" > University of Florida < /option> <
    option value = "havard"
class = "option" > University of Havard < /option> <
    option value = "oxford"
class = "option" > University of Oxford < /option> <
    /select> <
    i class = "zmdi zmdi-caret-down" > < /i> <
    /div> <
    /div> <
    div class = "form-row" >
    <
    label
for = "" >
Term:
    <
    /label> <
    div class = "form-holder" >
    <
    select name = ""
id = ""
class = "form-control" >
    <
    option value = ""
selected disabled > Select Term < /option> <
    option value = "term 1"
class = "option" > Term 1 < /option> <
    option value = "term 2"
class = "option" > Term 2 < /option> <
    option value = "term 3"
class = "option" > Term 3 < /option> <
    /select> <
    i class = "zmdi zmdi-caret-down" > < /i> <
    /div> <
    /div> <
    div class = "form-row" >
    <
    label
for = "" >
Instructor Username:
    <
    /label> <
    div class = "form-holder" >
    <
    input type = "text"
class = "form-control" >
    <
    /div> <
    /div> <
    /section>

    <
    h4 > < /h4> <
    section >
    <
    div class = "form-row" >
    <
    label
for = "" >
Date of Birth:
    <
    /label> <
    div class = "form-holder" >
    <
    input type = "text"
class = "form-control datepicker-here"
data - language = 'en'
data - date - format = "dd - mm - yyyy"
id = "dp1" >
    <
    /div> <
    /div> <
    div class = "form-row" >
    <
    label
for = "" >
Country of Birth:
    <
    /label> <
    div class = "form-holder" >
    <
    select name = ""
id = ""
class = "form-control" >
    <
    option value = "united states"
class = "option" > United States < /option> <
    option value = "united kingdom"
class = "option" > United Kingdom < /option> <
    option value = "viet nam"
class = "option" > Viet Nam < /option> <
    /select> <
    i class = "zmdi zmdi-caret-down" > < /i> <
    /div> <
    /div> <
    div class = "form-row" >
    <
    label
for = "" >
Your Email:
    <
    /label> <
    div class = "form-holder" >
    <
    input type = "text"
class = "form-control" >
    <
    /div> <
    /div> <
    div class = "form-row"
style = "margin-bottom: 3.4vh" >
    <
    label
for = "" >
Phone Number:
    <
    /label> <
    div class = "form-holder" >
    <
    input type = "text"
class = "form-control" >
    <
    /div> <
    /div> <
    div class = "form-row"
style = "margin-bottom: 50px;" >
    <
    label
for = "" >
Gender:
    <
    /label> <
    div class = "form-holder" >
    <
    div class = "checkbox-circle" >
    <
    label class = "male" >
    <
    input type = "radio"
name = "gender"
value = "male"
checked > Male < br >
    <
    span class = "checkmark" > < /span> <
    /label> <
    label class = "female" >
    <
    input type = "radio"
name = "gender"
value = "female" > Female < br >
    <
    span class = "checkmark" > < /span> <
    /label> <
    label >
    <
    input type = "radio"
name = "gender"
value = "transgender" > Transgender < br >
    <
    span class = "checkmark" > < /span> <
    /label> <
    /div> <
    /div> <
    /div> <
    /section>

    <
    h4 > < /h4> <
    section >
    <
    div class = "form-row" >
    <
    label
for = "" >
Course ID:
    <
    /label> <
    div class = "form-holder" >
    <
    input type = "text"
class = "form-control"
placeholder = "Ex. abc 12345 or abc 1234L" >
    <
    /div> <
    /div> <
    div class = "form-row" >
    <
    label
for = "" >
Course Title:
    <
    /label> <
    div class = "form-holder" >
    <
    input type = "text"
class = "form-control"
placeholder = "Ex. Intro to physic" >
    <
    /div> <
    /div> <
    div class = "form-row" >
    <
    label
for = "" >
Section(s):
    <
    /label> <
    div class = "form-holder" >
    <
    input type = "text"
class = "form-control"
placeholder = "Ex. 3679 or 33fa, 4295" >
    <
    /div> <
    /div> <
    div class = "form-row"
style = "margin-bottom: 38px" >
    <
    label
for = "" >
Select Teacher:
    <
    /label> <
    div class = "form-holder" >
    <
    select name = ""
id = ""
class = "form-control" >
    <
    option value = "frances meyer"
class = "option" > Frances Meyer < /option> <
    option value = "johan lucas"
class = "option" > Johan Lucas < /option> <
    option value = "merry linn"
class = "option" > Merry Linn < /option> <
    /select> <
    i class = "zmdi zmdi-caret-down" > < /i> <
    /div> <
    /div> <
    div class = "checkbox-circle"
style = "margin-bottom: 48px;" >
    <
    label >
    <
    input type = "checkbox"
checked > I agree all statement in Terms & Conditions <
    span class = "checkmark" > < /span> <
    /label> <
    /div> <
    /section> <
    /div> <
    /form> <
    /div> <
    script src = "js/jquery-3.3.1.min.js" > < /script>

    <
    script src = "js/jquery.steps.js" > < /script>

    <
    script src = "vendor/date-picker/js/datepicker.js" > < /script> <
    script src = "vendor/date-picker/js/datepicker.en.js" > < /script> <
    script src = "js/main.js" > < /script>


    <
    script async src = "https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" > < /script> <
        script >
        window.dataLayer = window.dataLayer || [];

function gtag() {
    dataLayer.push(arguments);
}
gtag('js', new Date());

gtag('config', 'UA-23581568-13'); <
/script> <
script defer src = "https://static.cloudflareinsights.com/beacon.min.js/vb26e4fa9e5134444860be286fd8771851679335129114"
integrity = "sha512-M3hN/6cva/SjwrOtyXeUa5IuCT0sedyfT+jK/OV+s+D0RnzrTfwjwJHhd+wYfMm9HJSrZ1IKksOdddLuN6KOzw=="
data - cf - beacon = '{"rayId":"7b09df484a7007b1","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.3.0","si":100}'
crossorigin = "anonymous" > < /script> <
    /body> <
    /html>