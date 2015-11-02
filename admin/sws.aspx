<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sws.aspx.cs" Inherits="admin_news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="style/js/jquery-1.8.2.min.js"></script>
    <script src="style/js/bootstrap.min.js"></script>
    <script src="style/js/js.js"></script>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>

    <script type="text/javascript">
        var parentfram = null;
        var body = null;

        window.onload = function () {
            parentfram = window.parent.document.getElementById("fc");
            body = document.getElementsByTagName("body")[0];
            getdata();
        }

        function getdata() {

            $.ajax({
                type: 'post',
                url: 'AsyCenter.aspx',
                data: {
                    aty: 'getsws'
                },
                success: function (data) {
                    var md = null;
                    try {
                        md = eval("(" + data + ")");
                    } catch (e) {
                        emptyrow();
                        return false;
                    }
                    creatrow(md);
                }
            })
        }

        function creatrow(md) {

            var a = "<table class='table table-hover'><thead><tr><th>事务所名称</th><th>排序</th><th>操作</th></tr></thead><tbody id='tbodybox'>";//</tbody></table>";

            var title = "";
            var px = "";
            var classname = "";
            var tab = 0;
            var rowhtml = "";
            for (var i = 0; i < md.length; i++) {
                tab = (i + 5) % 5;
                switch (tab) {
                    case 0:
                        classname = "";
                        break;
                    case 1:
                        classname = "success";
                        break;
                    case 2:
                        classname = "warning";
                        break;
                    case 3:
                        classname = "error";
                        break;
                    case 4:
                        classname = "info";
                        break;
                    default: classname = "";

                }
                rowhtml = aprow(decode(md[i].names),decode(md[i].px), decode(md[i].id), classname);
                a = a + rowhtml;
            }
            a = a + "</tbody></table>";
            document.getElementById("tablebox").innerHTML = a;
            upPFramHeight();

        }

        function Inittimes(timestr) {
            return timestr.substr(0, timestr.indexOf(" "));
        }

        function decode(str) {
            str = decodeURIComponent(str.replace(/\+/g, '%20'));
            return str;
        }

        function aprow(titles, px, id, classname) {

            var inhtml = "<tr class=" + classname + " id='" + id + "'><td>" + titles + "</td>" +
                         "<td>" + px + "</td>" +
                         "<td><input type='button' value='删除' onclick=\"_delete('" + id + "','" + titles + "')\" /> &nbsp&nbsp<input type='button' value='修改' onclick='_update(\"" + id + "\")'/>" +
                         "</td>" +
                         "</tr>";
            return inhtml;
        }

        function _delete(did, title) {
            if (did == "") {
                return false;
            }
            if (confirm("确定要删除 " + title + " ？")) {
                $.ajax({
                    type: "post",
                    url: "AsyCenter.aspx",
                    data: {
                        aty: "deletesws",
                        did: did
                    },
                    success: function (data) {
                        var r = data.split(":");
                        if (r[0] == "ok") {
                            alert("已删除！");
                            var dr = document.getElementById(did);
                            dr.style.display = "none";
                        } else {
                            alert("删除失败！");
                        }
                    },
                    error: function (data) {

                    }

                })
            }
        }

        function _update(uid) {
            if (uid == "") {
                return false;
            }
            window.location.href = "AUsws.aspx?uid=" + uid;
        }

        function upPFramHeight() {
            var oh = parentfram.height;
            var bodyheight = body.clientHeight;
            if (parseInt(bodyheight) > parseInt(oh)) {
                parentfram.height = bodyheight + "px";
            }
        }

        function emptyrow() {
            var a = "<table class='table'><thead><tr><th>事务所名称</th><th>排序</th><th>操作</th></tr></thead><tbody id='tbodybox'>";//</tbody></table>";
            a = a + aprow("无内容...", "", "", "", "", "") + "</tbody></table>";
            document.getElementById("tablebox").innerHTML = a;
        }

    </script>
</head>
<body>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>律师事务所管理
                    </h1>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span12">
                <div class="row-fluid">
                    <div class="span12">
                        <div class="row-fluid">
                            <div class="span2">
                                <input type="button" class="btn" value="添加事务所" onclick="window.location.href = 'AUsws.aspx'" />
                            </div>
                            <div class="span2">
                            </div>
                            <div class="span8">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span12">
                        <div id="tablebox">
                            <table class="table">
                                <thead>
                                    
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
