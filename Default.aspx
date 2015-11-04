<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/common/head.ascx" TagPrefix="uc1" TagName="head" %>
<%@ Register Src="~/common/foot.ascx" TagPrefix="uc1" TagName="foot" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/swkj.css" rel="stylesheet" />
    <link href="css/swkjbt.css" rel="stylesheet" />
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/swkj.js"></script>
    <title>四川省雅安市律师协会官方网站</title>
    <style type="text/css">
        .top5 {
            width: 487px;
            height: 71px;
        }
            .top5:hover .top5_1 {
                background-color: #49AEA5;
            }

            .top5:hover .top5_2 {
                background-color: #8FD0CA;
            }

            .top5:hover .top5_3 {
                background-color: #8FD0CA;
            }

            .top5:hover .top5_2_s1 {
                color: #ffffff;
            }

            .top5:hover .top5_2_s2 {
                color: #ffffff;
            }
            .top5:hover .top5_3 span {
                color:#676666;
            }
            .top5:hover .top5_1 span {
                color:#ffffff;
            }

        .top5_1 {
            display: block;
            float: left;
            width: 70px;
            height: 70px;
            background-color: #DBD7D7;
        }
            .top5_1 span {
                color: #7B7979;
                font-size: 32px;
                line-height: 70px;
                margin-left: 15px;
            }

        .top5_2 {
            display: block;
            float: left;
            background-color: #F7F7F7;
            height: 70px;
            width: 360px;
        }
        .top5_2_s1 {
            display: block;
            margin: 16px 0 0 15px;
            letter-spacing: 1px;
            color: #7B7979;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }
        .top5_2_s2 {
            display: block;
            margin-left: 15px;
            letter-spacing: 1px;
            color: #BAB9B9;
            font-size: 12px;
        }

        .top5_3 {
            display: block;
            float: left;
            height: 70px;
            background-color: #F7F7F7;
            width: 56px;
        }
            .top5_3 span {
                line-height: 70px;
                color: #BFB9C0;
            }
        .p1 {
            position: absolute;
            margin-left: -510px;
            width: 510px;
            height: 355px;
        }
        .p2 {
            position: absolute;
            margin-left: -510px;
            visibility: hidden;
            margin-top:-71px;
            width: 510px;
            height: 355px;
        }
        .p3 {
            position: absolute;
            margin-left: -510px;
            visibility: hidden;
            margin-top:-142px;
            width: 510px;
            height: 355px;
        }
        .p4 {
            position: absolute;
            margin-left: -510px;
            visibility: hidden;
            margin-top:-213px;
            width: 510px;
            height: 355px;
        }
        .p5 {
            position: absolute;
            margin-left: -510px;
            visibility: hidden;
            margin-top:-284px;
            width: 510px;
            height: 355px;
        }
        #p1:hover .p1{
            visibility:visible;
        }
        #p1:hover .p2{
            visibility:hidden;
        }
        #p1:hover .p3{
            visibility:hidden;
        }
        #p1:hover .p4{
            visibility:hidden;
        }
        #p1:hover .p5{
            visibility:hidden;
        }


        #p2:hover .p1{
            visibility:hidden;
        }
        #p2:hover .p2{
            visibility:visible;
        }
        #p2:hover .p3{
            visibility:hidden;
        }
        #p2:hover .p4{
            visibility:hidden;
        }
        #p2:hover .p5{
            visibility:hidden;
        }

        #p3:hover .p1{
            visibility:hidden;
        }
        #p3:hover .p2{
            visibility:hidden;
        }
        #p3:hover .p3{
            visibility:visible;
        }
        #p3:hover .p4{
            visibility:hidden;
        }
        #p3:hover .p5{
            visibility:hidden;
        }

        #p4:hover .p1{
            visibility:hidden;
        }
        #p4:hover .p2{
            visibility:hidden;
        }
        #p4:hover .p3{
            visibility:hidden;
        }
        #p4:hover .p4{
            visibility:visible;
        }
        #p4:hover .p5{
            visibility:hidden;
        }

        #p5:hover .p1{
            visibility:hidden;
        }
        #p5:hover .p2{
            visibility:hidden;
        }
        #p5:hover .p3{
            visibility:hidden;
        }
        #p5:hover .p4{
            visibility:hidden;
        }
        #p5:hover .p5{
            visibility:visible;
        }
        .csstimes {
            float: left;
            width: 100px;
            height: 90px;
            background-color: #E4E4E4;
        }
        .csstimes1 {
            font-size: 35px;
            display: block;
            text-align: center;
            line-height: 77px;
        }

        .csstimes2 {
            display: block;
            text-align: center;
            margin-top: -18px;
        }
        .times_title {
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            width: 300px;
            display: block;
            font-size: 17px;
            color: #A6A6A6;
            font-family: 微软雅黑;
            height: 32px;
            line-height: 40px;
            letter-spacing: 1px;
        }

        .times_content {
            display: block;
            height: 40px;
            font-size: 12px;
            text-overflow: ellipsis;
            overflow: hidden;
            color: #7E7D7D;
            margin-top:12px;
            letter-spacing: 3px;
        }
        .leftdiv {
            margin-top: 16px;
            height: 90px;
        }

            .leftdiv:hover .csstimes {
                background-color: #49AEA5;
            }
            .leftdiv:hover .csstimes1 {
                color:#ffffff;
            }
            .leftdiv:hover .csstimes2 {
                color:#ffffff;
            }
            .leftdiv:hover .cright {
                background-color:#8FD0CA;
            }
            .leftdiv:hover .times_title {
                color:#ffffff;
            }
            .leftdiv:hover .times_content {
                color:#ffffff;
            }
        .cs3_1 {
            width:318px;
            height:100px;           
        }
        .cright {
            height: 90px;
        }
        .cs3_2_s1 {
            font-size: 17px;
            font-weight: bold;
            font-family: 微软雅黑;
            letter-spacing: 6px;
            display: block;
            color: #49AEA5;
            float: left;
        }

        .cs3_2_s2 {
            font-size: 12px;
            font-weight: bold;
            display: block;
            color: #A1A1A1;
            float: left;
            margin-top: 4px;
        }
        .cs3_2_s3 a {
            font-size: 12px;
            font-weight: bold;
            display: block;
            color: #49AEA5;
            float: left;
            margin-top: 4px;
            margin-left: 32px;
            letter-spacing: 2px;
        }

            .cs3_2_s3 a:hover {
                text-decoration: none;
                color:#49AEA5;
            }
        .hx1 {
            width: 300px;
            height: 2px;
            background-color: #CDC8C8;
            margin-bottom: 14px;
        }

        .hx2 {
            width: 100px;
            height: 2px;
            background-color: #4CC8BD;
            display: block;
        }
        .c1 a{
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            width: 300px;
            display: block;
            font-size: 17px;
            color: #A6A6A6;
            font-family: 微软雅黑;
            height: 25px;
        }
            .c1 a:hover {
            text-decoration:none;
            color:#49AEA5;
            }
        .c2 {
            color: #BDBDBD;
            display: block;
            float: left;
            font-size:12px;
        }

        .c3 {
            display: block;
            float: left;
            color: #BDBDBD;
            margin-left: 80px;
            font-size:12px;
        }
        .sws {
            width: 170px;
            height: 150px;
            border: 9px solid #FFFFFF;
            filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
            -moz-background-size: 100% 100%;
            background-size: 100% 100%;
        }

        .swsbk {
            border: 1px solid #8FD0CA;
            float: left;
            margin-right: 10px;
            margin-bottom: 20px;
            height:220px;
        }
            .swsbk:hover .sws {
                background-image:url(img/xq.jpg) !important;
                background-repeat:no-repeat;
            }
        .swsmc {
            display: block;
            text-align: center;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            color: #FFFFFF;
            letter-spacing: 1px;
            width: 188px;
            font-weight: bold;
            background-color: #8FD0CA;
            height: 42px;
            line-height: 42px;
            margin-top: 10px;
        }
    </style>

    <script type="text/javascript">
        window.onload = function () {
            $('.carousel').carousel(
            { interval: 5000 })
            dh();
            Inittop5();
        }
        function Inittop5()
        {
            var tv = document.getElementById("top5value").value;
            var json_tv = null;
            try {
                json_tv = eval("("+tv+")");
            } catch (e) {
                return false;
            }
            var tops = "";
            for (var i = 0; i < json_tv.length; i++) {
                tops = tops + createtop5(decode(json_tv[i].titles), decode(json_tv[i].fbtimes), decode(json_tv[i].pic))
            }
            document.getElementById("top5box").innerHTML = tops;
        }

       
         function decode(str) {
            str = decodeURIComponent(str.replace(/\+/g, '%20'));
            return str;
        }
      
        function createtop5(title,times,pic) {
            var str = "<div class='top5' id='p1'  onmouseover='this.style.cursor='pointer'' onclick='window.location.href='#''><div class='top5_1'><span>01</span></div><div class='top5_2'><span class='top5_2_s1'>"+title+"</span><span class='top5_2_s2'>POST TIME:"+times+"</span></div><div class='top5_3'><span>more</span></div><div class='p1'><img src='img/upload/"+pic+"' style='width:100%;height:100%' /></div></div>";
            return str;
        }

    </script>
</head>

<body> 
<uc1:head runat="server" ID="head" />    
<%--顶部幻灯片开始--%>
<div>
        <div class="container-fluid" style="padding:0">
            <div class="row-fluid">
                <div class="span12">
                    <div class="carousel slide" id="carousel-464264" style="margin-bottom:0px !important">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <a href="#">
                                    <img src="img/banner1.jpg" style="margin: auto" /></a>
                            </div>
                            <div class="item">
                                <a href="#">
                                    <img src="img/banner2.jpg" style="margin: auto" /></a>
                            </div>
                        </div>
                        <a data-slide="prev" href="#carousel-464264" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-464264" class="right carousel-control">›</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--顶部幻灯片结束--%>

<%--幻灯片下横栏开始--%>
<div style="height: 90px; background-image: url(img/top_down.jpg);">
        <div style="width: 1000px;height:80px; margin: auto">
            <div class="row-fluid">
                <div class="span3"><img src="img/t1.png" /></div>
                <div class="span3"><img src="img/t2.png" /></div>
                <div class="span3"><img src="img/t3.png" /></div>
                <div class="span3"><img src="img/t4.png" /></div>
            </div>
        </div>
    </div>
<%--幻灯片下横栏结束--%>

<%--最新图文开始--%>
<div>
    <div style="width: 1000px; margin: auto">
        <div class="row-fluid" style="margin-top: 30px">
            <div class="span10">
                <div style="float:left;display:block"><span style="font-size: 45px;line-height: 50px;color: #49AEA5;font-family:楷体;">NEWS</span></div>
                <div style="float:left;display:block;margin-left: 15px;">
                    <div><span style="font-size: 17px;line-height: 31px;letter-spacing: 2px;color: #E05113;font-weight: bold;font-family: 微软雅黑;">律协</span><span style="font-size: 17px;line-height: 31px;letter-spacing: 2px;color: #49AEA5;font-weight: bold;font-family: 微软雅黑;">最新图文</span></div>
                    <div><span style="display: block;margin-top: -5px;color: #A1A1A1;">Bar Association News Topic</span></div>
                </div>
            </div>
            <div class="span2" style="margin-top: 12px;" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                <span style="background-color: #8FD0CA;width: 80px;height: 30px;display: block;color: #ffffff;letter-spacing: 3px;text-align: center;line-height: 30px;float: left;margin-left: 22px;">更多</span>
                <span style="background-color: #CDC8C8;width: 40px;height: 30px;display: block;color: #ffffff;letter-spacing: 3px;text-align: center;line-height: 30px;float: left;margin-left: 5px;">▶</span>
            </div>
        </div>
        </div>

      <%--分隔符--%>
     <div><hr style="border:0;background-color:#E6FAF8;height:1px;margin-top:5px;"/> </div>

     <div style="width: 1000px; margin: auto">
               <div class="row-fluid" style="margin-top: 10px">
            <div class="span6"></div>
            <div class="span6" id="top5box">
                <div class="top5" id="p1"  onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="top5_1"><span>01</span></div><div class="top5_2"><span class="top5_2_s1">这里是测试标题标题！</span><span class="top5_2_s2">POST TIME:2015-11-08</span></div><div class="top5_3"><span>more</span></div><div class="p1"><img src="img/a1.jpg" style="width:100%;height:100%" /></div></div>
                <div class="top5" id="p2"  onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="top5_1"><span>02</span></div><div class="top5_2"><span class="top5_2_s1">这里是测试标题标题！</span><span class="top5_2_s2">POST TIME:2015-11-08</span></div><div class="top5_3"><span>more</span></div><div class="p2"><img src="img/a2.jpg" style="width:100%;height:100%" /></div></div>
                <div class="top5" id="p3"  onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="top5_1"><span>03</span></div><div class="top5_2"><span class="top5_2_s1">这里是测试标题标题！</span><span class="top5_2_s2">POST TIME:2015-11-08</span></div><div class="top5_3"><span>more</span></div><div class="p3"><img src="img/a3.jpg" style="width:100%;height:100%" /></div></div>
                <div class="top5" id="p4"  onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="top5_1"><span>04</span></div><div class="top5_2"><span class="top5_2_s1">这里是测试标题标题！</span><span class="top5_2_s2">POST TIME:2015-11-08</span></div><div class="top5_3"><span>more</span></div><div class="p4"><img src="img/a4.jpg" style="width:100%;height:100%" /></div></div>
                <div class="top5" id="p5"  onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="top5_1"><span>05</span></div><div class="top5_2"><span class="top5_2_s1">这里是测试标题标题！</span><span class="top5_2_s2">POST TIME:2015-11-08</span></div><div class="top5_3"><span>more</span></div><div class="p5"><img src="img/a5.jpg" style="width:100%;height:100%" /></div></div>
            </div>
        </div>
    </div>
    <input type="hidden" id="top5value" value="<%=json_pic %>" />

</div>
<%--最新图文结束--%>

<%--协会动态行业新闻开始--%>
<div style="width: 1000px; margin: auto">
        <div class="row-fluid">
            <div class="span6">
                <div class="row-fluid" style="margin-top: 30px">
                    <div class="span8">
                        <div style="float: left; display: block;">
                            <div><span style="font-size: 17px; line-height: 31px; letter-spacing: 2px; color: #E05113; font-weight: bold; font-family: 微软雅黑;">律协</span><span style="font-size: 17px; line-height: 31px; letter-spacing: 2px; color: #49AEA5; font-weight: bold; font-family: 微软雅黑;">协会动态</span></div>
                            <div><span style="display: block; margin-top: -5px; color: #A1A1A1;">Association Dynamics</span></div>
                        </div>
                    </div>
                    <div class="span4" style="margin-top: 12px;" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <span style="background-color: #8FD0CA; width: 80px; height: 30px; display: block; color: #ffffff; letter-spacing: 3px; text-align: center; line-height: 30px; float: left; margin-left: 30px;">更多</span>
                        <span style="background-color: #CDC8C8; width: 40px; height: 30px; display: block; color: #ffffff; letter-spacing: 3px; text-align: center; line-height: 30px; float: left; margin-left: 5px;">▶</span>
                    </div>
                </div>

                <div class="leftdiv" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                    <div class="csstimes"><span class="csstimes1">06</span><span class="csstimes2">2015.11</span></div>
                    <div class="cright"><div style="float: left;width: 370px;height:90px;margin-left:15px;"><span class="times_title">这里是标题，这里是标题</span><span class="times_content">这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容</span></div></div>
                </div>

                <div class="leftdiv" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                    <div class="csstimes"><span class="csstimes1">06</span><span class="csstimes2">2015.11</span></div>
                    <div class="cright"><div style="float: left;width: 370px;height:90px;margin-left:15px;"><span class="times_title">这里是标题，这里是标题</span><span class="times_content">这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容</span></div></div>
                </div>

                <div class="leftdiv" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                    <div class="csstimes"><span class="csstimes1">06</span><span class="csstimes2">2015.11</span></div>
                    <div class="cright"><div style="float: left;width: 370px;height:90px;margin-left:15px;"><span class="times_title">这里是标题，这里是标题</span><span class="times_content">这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容</span></div></div>
                </div>
            </div>


            <div class="span6">
                <div class="row-fluid" style="margin-top: 30px">
                    <div class="span8">
                        <div style="float: left; display: block;">
                            <div><span style="font-size: 17px; line-height: 31px; letter-spacing: 2px; color: #E05113; font-weight: bold; font-family: 微软雅黑;">律协</span><span style="font-size: 17px; line-height: 31px; letter-spacing: 2px; color: #49AEA5; font-weight: bold; font-family: 微软雅黑;">行业新闻</span></div>
                            <div><span style="display: block; margin-top: -5px; color: #A1A1A1;">Industry News</span></div>
                        </div>
                    </div>
                    <div class="span4" style="margin-top: 12px;" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                        <span style="background-color: #8FD0CA; width: 80px; height: 30px; display: block; color: #ffffff; letter-spacing: 3px; text-align: center; line-height: 30px; float: left; margin-left: 30px;">更多</span>
                        <span style="background-color: #CDC8C8; width: 40px; height: 30px; display: block; color: #ffffff; letter-spacing: 3px; text-align: center; line-height: 30px; float: left; margin-left: 5px;">▶</span>
                    </div>
                </div>

                <div class="leftdiv" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                    <div class="csstimes"><span class="csstimes1">06</span><span class="csstimes2">2015.11</span></div>
                    <div class="cright"><div style="float: left;width: 370px;height:90px;margin-left:15px;"><span class="times_title">这里是标题，这里是标题</span><span class="times_content">这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容</span></div></div>
                </div>

                <div class="leftdiv" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                    <div class="csstimes"><span class="csstimes1">06</span><span class="csstimes2">2015.11</span></div>
                    <div class="cright"><div style="float: left;width: 370px;height:90px;margin-left:15px;"><span class="times_title">这里是标题，这里是标题</span><span class="times_content">这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容</span></div></div>
                </div>

                <div class="leftdiv" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                    <div class="csstimes"><span class="csstimes1">06</span><span class="csstimes2">2015.11</span></div>
                    <div class="cright"><div style="float: left;width: 370px;height:90px;margin-left:15px;"><span class="times_title">这里是标题，这里是标题</span><span class="times_content">这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容这里是内容，这里是内容</span></div></div>
                </div>
            </div>
        </div>
    </div>
<%--协会动态行业新闻结束--%>

<%--党建、检索、诚信开始--%>
<div style="width: 1000px; margin: auto">
<div class="row-fluid" style="margin-top: 40px">
    <div class="span4">
        <div style="height:28px"><span class="cs3_2_s1">法律·检索</span><span class="cs3_2_s2">Legal Retrieval</span><span class="cs3_2_s3"><a href="#" style="margin-left: 67px;">更多...</a></span></div>
        <div class="hx1"><span class="hx2"></span></div>
        <div class="cs3_1" style="background-image:url(img/b2.jpg);background-position:left 0;background-repeat:no-repeat;"></div>
        <div style="margin-top:15px;" id="jsbox">
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
        </div>
    </div>

    <div class="span4">
        <div style="height:28px"><span class="cs3_2_s1">诚信·信息</span><span class="cs3_2_s2">Integrity Information</span><span class="cs3_2_s3"><a href="#" style="margin-left: 36px;">更多...</a></span></div>
        <div class="hx1"><span class="hx2"></span></div>
        <div class="cs3_1" style="background-image:url(img/b3.jpg);background-position:left 0;background-repeat:no-repeat;"></div>
        <div style="margin-top:15px;">
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
        </div>
    </div>

    <div class="span4">
        <div style="height:28px"><span class="cs3_2_s1">律师·党建</span><span class="cs3_2_s2">Party Construction</span><span class="cs3_2_s3"><a href="#" style="margin-left: 44px;">更多...</a></span></div>
        <div class="hx1"><span class="hx2"></span></div>
        <div class="cs3_1" style="background-image:url(img/b1.jpg);background-position:left 0;background-repeat:no-repeat;"></div>
        <div style="margin-top:15px;">
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
            <div>
                <div><span class="c1"><a href="#">这里是标题！这里是标题！这里是标题！这里是标题！这里是标题！</a></span></div>
                <div style="height:10px"><span class="c2">POST TIME:2015-11-08</span><span class="c3">READ:452</span></div>
                <div><hr style="width: 300px;display: block;margin-bottom: 15px;"/></div>
            </div>
        </div>
    </div>
</div>
</div>
<%--党建、检索、诚信结束--%>

<%--律师事务所信息开始--%>
    <div style="width: 1000px; margin: auto">
        <div class="row-fluid" style="margin-top: 30px">
            <div class="span10">
                <div style="float: left; display: block"><span style="font-size: 45px; line-height: 50px; color: #49AEA5; font-family: 楷体;letter-spacing: -1px;">FIRMS</span></div>
                <div style="float: left; display: block; margin-left: 15px;">
                    <div><span style="font-size: 17px; line-height: 31px; letter-spacing: 2px; color: #E05113; font-weight: bold; font-family: 微软雅黑;">事务所</span><span style="font-size: 17px; line-height: 31px; letter-spacing: 2px; color: #49AEA5; font-weight: bold; font-family: 微软雅黑;">信息</span></div>
                    <div><span style="display: block; margin-top: -5px; color: #A1A1A1;">Firms Information</span></div>
                </div>
            </div>
            <div class="span2" style="margin-top: 12px;" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                <span style="background-color: #8FD0CA; width: 80px; height: 30px; display: block; color: #ffffff; letter-spacing: 3px; text-align: center; line-height: 30px; float: left; margin-left: 13px;">更多</span>
                <span style="background-color: #CDC8C8; width: 40px; height: 30px; display: block; color: #ffffff; letter-spacing: 3px; text-align: center; line-height: 30px; float: left; margin-left: 5px;">▶</span>
            </div>
        </div>
    </div>
    <div>
        <hr style="border: 0; background-color: #E6FAF8; height: 1px; margin-top: 5px;" />
    </div>
    <div style="width: 1000px; margin: auto;min-height:245px;">
        <div class="swsbk" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="sws" style="background-image:url(img/firms.jpg);"></div><span class="swsmc">四川同兴律师事务所</span></div>
        <div class="swsbk" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="sws" style="background-image:url(img/firms.jpg);"></div><span class="swsmc">四川同兴律师事务所</span></div>
        <div class="swsbk" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="sws" style="background-image:url(img/firms.jpg);"></div><span class="swsmc">四川同兴律师事务所</span></div>
        <div class="swsbk" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="sws" style="background-image:url(img/firms.jpg);"></div><span class="swsmc">四川同兴律师事务所</span></div>
        <div class="swsbk" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><div class="sws" style="background-image:url(img/firms.jpg);"></div><span class="swsmc">四川同兴律师事务所</span></div>
    </div>
    <div style="width: 1000px; margin: auto;min-height:40px;">
        <div style="float:right;margin-bottom:20px;margin-right:10px;"><a href="javascript:void(0)" class="button button-glow button-rounded button-raised button-primary button-small">换一批</a></div>
    </div>
<%--律师事务所信息结束--%>
<uc1:foot runat="server" ID="foot" />
<%--隐藏表单--%>

</body>
</html>
