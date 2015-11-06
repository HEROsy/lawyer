<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showlawyer.aspx.cs" Inherits="showlawyer" %>

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
    <title>四川省雅安市律师协会官方网站-律师事务所详情</title>

    <style type="text/css">
        #banner {
            width: 100%;
            margin: auto;
            background-image: url(img/lawyer.jpg);
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
            height: 430px;
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
                color: #939292;
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
        .lawyerpic {
            width: 140px;
            height: 190px;
            float: left;
            margin-right: 16px;
            margin-top: 30px;
            border: 4px solid #13B8A9;
            background-repeat: no-repeat;
            background-position: center 0px;
            filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
            -moz-background-size: 100% 100%;
            background-size: 100% 100%;
        }
            .lawyerpic:hover .ckxx{
                visibility:visible;
            }
        .lname {
                display: block;
                position: relative;
                margin: -25px 0 0 37px;
                letter-spacing: 7px;
                font-size: 16px;
                font-weight: bold;
                color: #ffffff;
            }
        .zjz {
            height: 35px;
            width: 100%;    
            background-color: #49AEA5;
            margin-top: 155px;
            filter: alpha(opacity=50);
            -moz-opacity: 0.5;
            -khtml-opacity: 0.5;
            opacity: 0.5;
        }
        .ckxx {
            display: block;
            text-align: center;
            margin-top: -50px;
            background-color: #7AD2CA;
            visibility: hidden;
        }
            .ckxx a {
             color:#ffffff;
            }
            .ckxx a:hover {
             text-decoration:none;
             color:#ffffff;
            }
        .ttt1 {
            width: 100%;
            height: 50px;
            background-color: #49AEA5;
        }
        .ttt2 {
            line-height: 50px;
            color: #ffffff;
            margin-left: 20px;
            font-size: 16px;
            font-family: 微软雅黑;
            letter-spacing: 3px;
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
                        <i class="icon-comment icon-white" style="margin: 2px 0 0 14px;"></i><span>事务所列表</span>
                    </div>
                    <div>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
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
                        <i class="icon-comment icon-white" style="margin: 2px 0 0 14px;"></i><span>协会动态</span>
                    </div>
                    <div>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
                        <span class="liebiao"><a href="#">✚  雅安市中级人民法院定于2016年开始更换法院院长一职</a></span>
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
                <div class="ttt1"><i class="icon-circle-arrow-down icon-white" style="margin-left: 10px;"></i><span class="ttt2">律师事务所简介</span></div>

                <div>
                    <span class="tt1">四川同兴律师事务所</span>
                </div>

                <div style="margin-top: 20px; color: #5E5D5D; letter-spacing: 1px;padding: 0 10px 0 14px;line-height: 25px;">
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                    这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容这里是内容，内容内容
                </div>

                <div class="ttt1" style="margin-top: 30px;margin-bottom: -20px;"><i class="icon-bookmark icon-white" style="margin-left: 10px;"></i><span class="ttt2">律师事务所工作人员</span></div>

                <div style="margin-top: 10px; overflow: hidden;  margin-left: 3px;">
                    <div class="lawyerpic" style="background-image: url(img/zjz.jpg)" onmouseover="this.style.cursor='not-allowed'"><div class="zjz"></div><span class="lname">大黄狗</span><span class="ckxx"><a href="#1" <%--此处href必须有#，后面的数字代表div的ID--%> data-toggle="modal">✖  点击查看详情</a></span></div>
                    <div id="1" <%--这个id跟上面的href紧密联系，此处不能有#号--%> class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3>律师姓名1</h3></div><div class="modal-body"><p>律师简介简介简介111</p></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button></div></div>

                    <div class="lawyerpic" style="background-image: url(img/zjz.jpg)" onmouseover="this.style.cursor='not-allowed'"><div class="zjz"></div><span class="lname">大黄狗</span><span class="ckxx"><a href="#2" data-toggle="modal">✖  点击查看详情</a></span></div>
                    <div id="2" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3>律师姓名2</h3></div><div class="modal-body"><p>律师简介简介简介222</p></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button></div></div>

                    <div class="lawyerpic" style="background-image: url(img/zjz.jpg)" onmouseover="this.style.cursor='not-allowed'"><div class="zjz"></div><span class="lname">大黄狗</span><span class="ckxx"><a href="#3" data-toggle="modal">✖  点击查看详情</a></span></div>
                    <div id="3" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3>律师姓名3</h3></div><div class="modal-body"><p>律师简介简介简介333</p></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button></div></div>

                    <div class="lawyerpic" style="background-image: url(img/zjz.jpg)" onmouseover="this.style.cursor='not-allowed'"><div class="zjz"></div><span class="lname">大黄狗</span><span class="ckxx"><a href="#4" data-toggle="modal">✖  点击查看详情</a></span></div>
                    <div id="4" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3>律师姓名4</h3></div><div class="modal-body"><p>律师简介简介简介444</p></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button></div></div>

                    <div class="lawyerpic" style="background-image: url(img/zjz.jpg)" onmouseover="this.style.cursor='not-allowed'"><div class="zjz"></div><span class="lname">大黄狗</span><span class="ckxx"><a href="#5" data-toggle="modal">✖  点击查看详情</a></span></div>
                    <div id="5" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3>律师姓名5</h3></div><div class="modal-body"><p>律师简介简介简介555</p></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button></div></div>

                    <div class="lawyerpic" style="background-image: url(img/zjz.jpg)" onmouseover="this.style.cursor='not-allowed'"><div class="zjz"></div><span class="lname">大黄狗</span><span class="ckxx"><a href="#6" data-toggle="modal">✖  点击查看详情</a></span></div>
                    <div id="6" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3>律师姓名6</h3></div><div class="modal-body"><p>律师简介简介简介666</p></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button></div></div>
                                       
                </div>

                <div class="updown">
                    <span><a href="#">上一个:四川同兴律师事务所</a></span>
                    <span><a href="#">下一个:四川天责律师事务所</a></span>
                </div>
            </div>
        </div>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>

