<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AUsws.aspx.cs" Inherits="admin_AUsws" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="style/js/jquery-1.8.2.min.js"></script>
    <script src="style/js/jquery.form.js"></script>
    <script src="style/js/bootstrap.min.js"></script>
    <script src="style/js/js.js"></script>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
     <script type="text/javascript">
         var upok = true;
         window.onload = function ()
         {
             bindupchange();
         }
        
         function bindupchange() {
             var uf = document.getElementById("upfile");
             uf.onchange = function () {
                 if (!upok) { alert('正在上传...'); return false; }
                 upok = false;
                 $("#ufrm").ajaxSubmit({
                     url: "ReceivFile.ashx",
                     type: "post",
                     success: function (data) {
                         data = data.replace("<PRE>", "").replace("</PRE>", "");
                         var r = data.split(":");
                         if (r[0] == "no") {
                             alert(r[1]);
                             upok = true;
                             return false;
                         } else if (r[0] == "ok") {
                             document.getElementById("ufname").value = r[1];
                             document.getElementById("preimg").src = "../img/upload/" + r[1];
                             upok = true;
                             return true;
                         }
                     },
                     erorr: function (data) {
                     }
                 })
             }
         }
    </script>
</head>
<body>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1>
                        <%=PageHead %>
                    </h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        
        <div class="row">
            <div class="span6">
                <label>事务所名称</label><input type="text" id="name" />
                <label>排序</label><input type="text" id="px" />
                <label>事务所图片</label>
                <form method="post" id="ufrm" style="width: 126px; height: 30px; display: block; overflow: hidden; position: relative;">
                    <input type="button" value="上传" id="upbtn" class="btn" style="width: 126px; height: 30px;" />
                    <input type="file" name="upfile" id="upfile" style="width: 126px; height: 30px; position: absolute; top: 0; left: 0; opacity: 0; filter: alpha(opacity=0);" />
                    <input type="hidden" id="ufname" value="" />
                </form>
            </div>
            <div class="span6">
                <img src="style/img/glyphicons-halflings.png" style="margin:auto;width:160px;height:200px;" id="preimg"/>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <label>事务所介绍</label>
                <textarea id="ebox" style="width: 636px; height: 300px;resize:none"></textarea>
                <input type="button" value="确认添加" id="send" style="margin-top: 20px;display:block;" />
            </div>
        </div>
    </div>

</body>
</html>
