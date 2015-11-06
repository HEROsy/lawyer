<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="common_head" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../css/swkj.css" rel="stylesheet" />
    <link href="../css/swkjbt.css" rel="stylesheet" />
    <title></title>

    <style type="text/css">
        #dh0 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
        }

            #dh0:hover {
                background-image: url("../img/block.png");
            }

        #dh1 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
        }

            #dh1:hover {
                background-image: url("../img/block.png");
            }

        #dh4 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
        }

            #dh4:hover {
                background-image: url("../img/block.png");
            }

        #dh5 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
        }

            #dh5:hover {
                background-image: url("../img/block.png");
            }

        #dh6 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
        }

            #dh6:hover {
                background-image: url("../img/block.png");
            }

        #dh7 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
        }

            #dh7:hover {
                background-image: url("../img/block.png");
            }

        #dh2 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
        }

            #dh2:hover {
                background-image: url("../img/block.png");
            }

                #dh2:hover .dhf {
                    visibility: visible;
                }

                #dh2:hover .dhf1 {
                    visibility: visible;
                }

        #dh3 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
        }

            #dh3:hover {
                background-image: url("../img/block.png");
            }

                #dh3:hover .dhf2 {
                    visibility: visible;
                }

                #dh3:hover .dhf3 {
                    visibility: visible;
                }
                 #dh3:hover .dhf4 {
                    visibility: visible;
                }
                #dh3:hover .dhfleft {
                    visibility: visible;
                }

        .dh1 {
            width: 100px;
            height: 100px;
            display: block;
            float: left;
            background-image: url("../img/block.png");
        }

        .dhf {
            height: 50px;
            margin-top: 25px;
            visibility: hidden;
            line-height: 50px;
            text-align: center;
            background-color: #49AEA5;
            border: 1px solid #ffffff;
            border-right: none;
            color: #ffffff;
            letter-spacing: 2px;
            font-weight: bold;
            margin-left: 3px;
            position:absolute;
            z-index:1;
            width: 96px;
        }

            .dhf:hover {
                background-color: #8FD0CA;
            }

        .dhf1 {
            height: 50px;
            visibility: hidden;
            line-height: 50px;
            text-align: center;
            background-color: #49AEA5;
            border: 1px solid #ffffff;
            border-top: none;
            border-right: none;
            color: #ffffff;
            letter-spacing: 2px;
            font-weight: bold;
            margin-left: 3px;
            position:absolute;
            z-index:1;
            width: 96px;
            margin-top: 77px;
        }

            .dhf1:hover {
                background-color: #8FD0CA;
            }

        .dhf2 {
            height: 50px;
            margin-top: 25px;
            visibility: hidden;
            line-height: 50px;
            text-align: center;
            background-color: #49AEA5;
            border: 1px solid #ffffff;
            border-right: none;
            color: #ffffff;
            letter-spacing: 2px;
            font-weight: bold;
            margin-left: 3px;
            position:absolute;
            z-index:1;
            width: 96px;
        }

            .dhf2:hover {
                background-color: #8FD0CA;
            }

        .dhf3 {
            height: 50px;
            visibility: hidden;
            line-height: 50px;
            text-align: center;
            background-color: #49AEA5;
            border: 1px solid #ffffff;
            border-top: none;
            border-right: none;
            color: #ffffff;
            letter-spacing: 2px;
            font-weight: bold;
            margin-left: 3px;
            position:absolute;
            z-index:1;
            width: 96px;
            margin-top: 77px;
        }
         .dhf4 {
            height: 50px;
            visibility: hidden;
            line-height: 50px;
            text-align: center;
            background-color: #49AEA5;
            border: 1px solid #ffffff;
            border-top: none;
            border-right: none;
            color: #ffffff;
            letter-spacing: 2px;
            font-weight: bold;
            margin-left: 3px;
            position:absolute;
            z-index:1;
            width: 96px;
            margin-top: 128px;
        }
         .dhf4:hover {
                background-color: #8FD0CA;
            }
        .dhfleft {
            height: 50px;
            visibility: hidden;
            line-height: 50px;
            text-align: center;
            background-color: #49AEA5;
            border: 1px solid #ffffff;
            border-top: none;
            border-right: none;
            color: #ffffff;
            letter-spacing: 2px;
            font-weight: bold;
            border-left: 1px solid #ffffff;
            position:absolute;
            z-index:1;
        }

            .dhfleft:hover {
                background-color: #8FD0CA;
            }

        .dhf3:hover {
            background-color: #8FD0CA;
        }

        .ch {
            display: block;
            text-align: center;
            line-height: 90px;
            font-weight: bold;
            color: #ffffff;
            letter-spacing: 2px;
        }

        .en {
            display: block;
            text-align: center;
            margin-top: -35px;
            color: #ffffff;
        }
    </style>

    <script type="text/javascript">

        function dh() {
            var nowurl;
            nowurl = window.location.href;
            if (nowurl.indexOf("newlist.aspx") > 0) {
                document.getElementById("dh3").style.backgroundImage = "url(../img/block.png)";
            }
            else if (nowurl.indexOf("Text") > 0) {

            }
            else if (nowurl.indexOf("Text") > 0) {

            }
            else if (nowurl.indexOf("Text") > 0) {

            }
            else if (nowurl.indexOf("Text") > 0) {

            }
            else if (nowurl.indexOf("Text") > 0) {

            }
            else if (nowurl.indexOf("Text") > 0) {

            } else {
                document.getElementById("dh0").style.backgroundImage = "url(../img/block.png)";
            }
        }

    </script>
</head>
<body>

    <div style="background-color: #49aea5">
        <%--顶部欢迎词--%>
        <div style="width: 1000px; margin: auto">
            <div class="row-fluid">
                <div class="span12" style="margin-top: 10px">
                    <img src="../img/messagebox.png" /><span style="color: #ffffff; letter-spacing: 1px; font-size: 12px;">欢迎来到四川省雅安市律师协会官方网站</span>
                </div>
            </div>
        </div>

        <%--导航条--%>
        <div style="background-color: #8fd0ca; height: 100px;">
            <div style="width: 1000px; margin: auto">
                <div class="row-fluid">
                    <div class="span12">
                        <div style="width: 200px; display: block; float: left">
                            <img src="../img/logo.png" />
                        </div>
                        <div id="dh0" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span class="ch">网站首页</span><span class="en">Home</span></div>
                        <div id="dh1" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span class="ch">关于律协</span><span class="en">About</span></div>
                        <div id="dh2" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <span class="ch">信息中心</span><span class="en">Information</span>
                            <div class="dhf" onclick="window.location.href='#'">协会动态</div>
                            <div class="dhf1" onclick="window.location.href='#'">行业新闻</div>
                        </div>
                        <div id="dh3" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'">
                            <span class="ch">律师党建</span><span class="en">Building</span>
                            <div class="dhf2" onclick="window.location.href='#'">党委简介</div>
                            <div class="dhf3" onclick="window.location.href='#'">党委动态</div>
                            <div class="dhf4" onclick="window.location.href='#'">党建理论</div>
                            <div class="dhfleft" style ="position: absolute;width: 97px;margin: 77px 0 0 100px;" onclick="window.location.href='#'">会议精神</div>
                            <div class="dhfleft" style ="position: absolute;width: 97px;margin: 128px 0 0 100px;" onclick="window.location.href='#'">党委通知</div>
                        </div>
                        <div id="dh4" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span class="ch">法律检索</span><span class="en">Retrieval</span></div>
                        <div id="dh5" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span class="ch">律师黄页</span><span class="en">Pages</span></div>
                        <div id="dh6" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span class="ch">诚信信息</span><span class="en">Sincerity</span></div>
                        <div id="dh7" onmouseover="this.style.cursor='pointer'" onclick="window.location.href='#'"><span class="ch">联系我们</span><span class="en">Contact</span></div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</body>
</html>
