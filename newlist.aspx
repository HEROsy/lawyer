<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newlist.aspx.cs" Inherits="newlist" %>

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
            background-image: url(img/article.jpg);
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
            height: 290px;
            margin-bottom: 15px;
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
                color: #939292;
                ;
                letter-spacing: 1px;
            }

                .liebiao a:hover {
                    text-decoration: none;
                    color: #ffffff;
                }

            .liebiao:hover {
                background-color: #8fd0ca;
            }

        .mbx {
            height: 50px;
            background-color: #49AEA5;
            width: 100%;
            border-radius: 5px;
            line-height: 50px;
        }

            .mbx span {
                display: block;
                float: left;
                margin-left: 20px;
                color: #ffffff;
                font-weight: bold;
                letter-spacing: 4px;
                margin-right: -13px;
            }

        .pagination ul li a {
            color: #49AEA5;
        }

        .table th, .table td {
            line-height: 35px !important;
            border-top: 1px solid #fff !important;
            width: 82% !important;
            color: #49AEA5 !important;
            letter-spacing: 1px !important;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
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
                    </div>
                </div>
            </div>

            <div class="span8">
                <div class="mbx">
                    <span>首页</span><span>/</span><span>信息中心</span><span>/</span><span>协会动态</span>
                </div>

                <div style="margin-top: 3px;"><img src="img/newlist.jpg"/></div>

                <div>
                    <div class="container-fluid" style="padding-right: 1px; padding-left: 1px; margin-top: 10px;">
                        <div class="row-fluid">
                            <div class="span12">
                                <table class="table table-hover table-striped">
                                    <tbody>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                        <tr onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                                            <td>这里是标题这里是标题</td>
                                            <td>2015-11-08</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>

                <div>
                    <div class="pagination" style="float: right">
                        <ul>
                            <li><a href="#">上一页</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">下一页</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>


