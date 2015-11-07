<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lxww.aspx.cs" Inherits="lxww" %>

<%@ Register Src="~/common/foot.ascx" TagPrefix="uc1" TagName="foot" %>
<%@ Register Src="~/common/head.ascx" TagPrefix="uc1" TagName="head" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/css/swkj.css" rel="stylesheet" />
    <link href="/css/swkjbt.css" rel="stylesheet" />
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/swkj.js"></script>
    <title>四川省雅安市律师协会官方网站-联系我们</title>

    <style type="text/css">
        #banner {
            width: 100%;
            margin: auto;
            background-image: url(img/contactus.jpg);
            background-repeat: no-repeat;
            background-position: center 0px;
            filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
            -moz-background-size: 100% 100%;
            background-size: 100% 100%;
        }   
    </style>

    <script type="text/javascript">
        window.onload = function () {
            dh();
            gd();
        }
        window.onresize = gd;
        function gd() {
            document.getElementById("banner").style.height = document.documentElement.clientWidth / 5 + "px";
        }
    </script>
</head>

<body style="background-color:#F7F7F7">
    <uc1:head runat="server" ID="head" />

    <div id="banner">
    </div>

    <div style="width: 1000px; margin: auto">      
            <img src="img/lxww.jpg"/>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>
