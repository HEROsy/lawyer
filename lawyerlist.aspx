<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lawyerlist.aspx.cs" Inherits="lawyerlist" %>

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
    <title>四川省雅安市律师协会官方网站-律师事务所详情列表</title>

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
        .bigtitles {
            height: 150px;
            width: 100%;
        }

            .bigtitles span {
                font-size: 40px;
                font-family: 微软雅黑;
                letter-spacing: 3px;
                line-height: 150px;
                text-align: center;
                display: block;
                font-weight: bold;
            }

        .n1 {
            background-color: #ffffff;
            width: 100%;
            height: 190px;
            margin-bottom: 20px;
        }
        .nn1 {
            overflow:hidden;
        }
        .nn2 {
            overflow:hidden;
        }
        .ss1 {
            display: block;
            float: left;
            width: 72px;
            height: 18px;
            background-color: #0AD0E0;
            line-height: 18px;
            text-align: center;
            color: #ffffff;
            font-size: 12px;
            margin: 30px 0 0 15px;
        }

        .ss2 {
            display: block;
            float: left;
            width: auto;
            height: 36px;
            line-height: 36px;
            text-align: center;
            color: #49AEA5;
            margin: 20px 0 0 10px;
            font-size: 20px;
            font-family: 微软雅黑;
            letter-spacing: 1px;
        }
        .m1 {
            float: left;
            width: 170px;
            height: 120px;
            background-repeat: no-repeat;
            background-position: center 0px;
            filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
            -moz-background-size: 100% 100%;
            margin: 3px 0 0 15px;
        }

        .m2 {
            float: left;
            width: 760px;
            padding: 2px 0px 0px 25px;
            height: 80px;
            overflow: hidden;
        }

        .mm2_1{
                line-height: 28px;
                display: block;
            }
        .mm2_2 {
            clear: both;
            float: right;
            margin: -28px 34px 0 0;
            background-color: #49AEA5;
            width: 103px;
            height: 32px;
            line-height: 30px;
            text-align: center;
            color: #ffffff;
            letter-spacing: 2px;
        }
            .mm2_2:hover {
                background-color: #8fd0ca;
                color:#000000;
            }
        .pagination {
            float: right;
        }

            .pagination ul li a {
                color: #49AEA5 !important;
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
        <div class="row-fluid" style="margin-top: 10px">
            <div class="bigtitles"><span>律师事务所列表</span></div>

            <div class="n1">
                <div class="nn1">
                    <span class="ss1">事务所列表</span><span class="ss2">这里是律师事务所的标题</span>
                </div>

                <div class="nn2">
                    <div class="m1" style="background-image:url(img/firms.jpg)"></div>
                    <div class="m2"><span class="mm2_1">这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容</span></div>
                    <div class="mm2_2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">查看详细</div>
                </div>
            </div>

             <div class="n1">
                <div class="nn1">
                    <span class="ss1">事务所列表</span><span class="ss2">这里是律师事务所的标题</span>
                </div>

                <div class="nn2">
                    <div class="m1" style="background-image:url(img/firms.jpg)"></div>
                    <div class="m2"><span class="mm2_1">这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容</span></div>
                    <div class="mm2_2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">查看详细</div>
                </div>
            </div>

             <div class="n1">
                <div class="nn1">
                    <span class="ss1">事务所列表</span><span class="ss2">这里是律师事务所的标题</span>
                </div>

                <div class="nn2">
                    <div class="m1" style="background-image:url(img/firms.jpg)"></div>
                    <div class="m2"><span class="mm2_1">这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容</span></div>
                    <div class="mm2_2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">查看详细</div>
                </div>
            </div>

             <div class="n1">
                <div class="nn1">
                    <span class="ss1">事务所列表</span><span class="ss2">这里是律师事务所的标题</span>
                </div>

                <div class="nn2">
                    <div class="m1" style="background-image:url(img/firms.jpg)"></div>
                    <div class="m2"><span class="mm2_1">这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容</span></div>
                    <div class="mm2_2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">查看详细</div>
                </div>
            </div>

             <div class="n1">
                <div class="nn1">
                    <span class="ss1">事务所列表</span><span class="ss2">这里是律师事务所的标题</span>
                </div>

                <div class="nn2">
                    <div class="m1" style="background-image:url(img/firms.jpg)"></div>
                    <div class="m2"><span class="mm2_1">这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容</span></div>
                    <div class="mm2_2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">查看详细</div>
                </div>
            </div>

             <div class="n1">
                <div class="nn1">
                    <span class="ss1">事务所列表</span><span class="ss2">这里是律师事务所的标题</span>
                </div>

                <div class="nn2">
                    <div class="m1" style="background-image:url(img/firms.jpg)"></div>
                    <div class="m2"><span class="mm2_1">这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容这里是内容</span></div>
                    <div class="mm2_2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">查看详细</div>
                </div>
            </div>

            <div style="margin-top: 20px">
                <div class="pagination">
                    <ul>
                        <li><a href="#">首页</a></li>
                        <li><a href="#">上一页</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">下一页</a></li>
                        <li><a href="#">尾页</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <uc1:foot runat="server" ID="foot" />
</body>
</html>
