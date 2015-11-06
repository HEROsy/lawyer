<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shownew.aspx.cs" Inherits="shownew" %>

<%@ Register Src="~/common/foot.ascx" TagPrefix="uc1" TagName="foot" %>
<%@ Register Src="~/common/head.ascx" TagPrefix="uc1" TagName="head" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/css/swkj.css" rel="stylesheet" />
    <link href="/css/swkjbt.css" rel="stylesheet" />

    <title>四川省雅安市律师协会官方网站-文章列表页</title>
    <style type="text/css">
        #banner {
            width: 100%;
            margin: auto;
            background-image: url(img/show.jpg);
            background-repeat: no-repeat;
            background-position: center 0px;
            filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
            -moz-background-size: 100% 100%;
            background-size: 100% 100%;
        }

        .left1 {
            width: 100%;
            height: 50px;
            background-color: #49aea5;
        }

            .left1 span {
                line-height: 50px;
                color: #ffffff;
                letter-spacing: 2px;
                font-size: 16px;
                margin-left: 10px;
                font-family: 微软雅黑;
            }

        .left2 {
            border: 1px solid #49aea5;
            width: 100%;
            height: 330px;
            margin-bottom:15px;
        }

        .liebiao {
            display: block;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }

            .liebiao a {
                line-height: 46px;
                margin-left: 10px;
                color: #939292;;
                letter-spacing: 1px;
            }

                .liebiao a:hover {
                    text-decoration: none;
                    color:#ffffff;
                }

            .liebiao:hover {
                background-color: #8fd0ca;
            }
        .tt1 {
            display: block;
            font-size: 25px;
            margin-top: 20px;
            text-align: center;
            line-height: 60px;
            color: #1B7B72;
            font-family: 微软雅黑;
            letter-spacing: 2px;
        }

        .tt2 {
            text-align: center;
            display: block;
            float: left;
            margin-left: 145px;
            letter-spacing: 2px;
            color: #848E8D;
            line-height: 30px;
        }

        .tt3 {
            margin-left: 44px;
            letter-spacing: 2px;
            color: #848e8d;
            line-height: 30px;
        }

        .updown {
            margin-top: 40px;
        }

            .updown span {
                display: block;
                margin-bottom: 7px;
            }

                .updown span a {
                    color: #49AEA5;
                    letter-spacing: 2px;
                }

                    .updown span a:hover {
                        text-decoration: none;
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

<body>
    <uc1:head runat="server" ID="head" />

    <div id="banner">
    </div>

    <div style="width: 1000px; margin: auto">
        <div class="row-fluid" style="margin-top: 10px">
            <div class="span4">
                <div class="left2">
                    <div class="left1">
                        <i class="icon-comment icon-white" style="margin: 2px 0 0 14px;"></i><span>协会动态</span>
                    </div>
                    <div>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                    </div>
                </div>

                <div class="left2">
                    <div class="left1">
                        <i class="icon-comment icon-white" style="margin: 2px 0 0 14px;"></i><span>诚信信息</span>
                    </div>
                    <div>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                    </div>
                </div>

                <div class="left2">
                    <div class="left1">
                        <i class="icon-comment icon-white" style="margin: 2px 0 0 14px;"></i><span>事务所列表</span>
                    </div>
                    <div>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                    </div>
                </div>

            </div>
            <div class="span8">
                <div>
                    <span class="tt1">这里是标题这里是标题这里是标题</span>
                    <span class="tt2">发布时间：2015-11-08</span><span class="tt3">发布者:网站管理员</span>
                </div>
                <div style="margin-top: 20px;color: #5E5D5D;letter-spacing: 1px;">
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                </div>

                <div class="updown">
                    <span><a href="#">上一篇:肯定算积分螺蛳粉</a></span>
                    <span><a href="#">下一篇:粉蛳螺分积算定肯</a></span>
                </div>
            </div>
        </div>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>
