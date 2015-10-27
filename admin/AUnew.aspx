<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AUnew.aspx.cs" Inherits="admin_addnew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="style/js/jquery-1.8.2.min.js"></script>
    <script src="style/js/jquery.form.js"></script>
    <script src="style/js/bootstrap.min.js"></script>
    <script src="style/js/js.js"></script>
    <script src="kindeditor-4.1.10/kindeditor-min.js"></script>
    <link href="kindeditor-4.1.10/kindeditor-all-min.js"  rel="stylesheet"/>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>

    <script type="text/javascript">

        var edit;
        KindEditor.ready(function (K) {
            edit = K.create('#ebox', {
                uploadJson: 'kindeditor-4.1.10/asp.net/upload_json.ashx',
                fileManagerJson: 'kindeditor-4.1.10/asp.net/file_manager_json.ashx',
                allowFileManager: true,
                width: '500px',
                height:'600px',
                resizeType: 0
            });
        });

        var upok = true;

        window.onload = function ()
        {
            bindupchange();
        }

        function bindupchange() {
            var uf = document.getElementById("upfile");
            uf.onchange = function () {
                if (!upok) { alert('正在上传...'); return false;}
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
                            document.getElementById("preimg").src = "../img/upload/"+r[1];
                            upok = true;
                            return true;
                        }
                    },
                    erorr: function (data) {
                        //data = data.replace("<PRE>", "").replace("</PRE>", "");
                        //var r = data.split(":");
                        //if (r[0] == "no") {
                        //    uf.value = "";
                        //    upfileok = true;
                        //    alert(r[1]);
                        //    return false;
                        //} else if (r[0] == "ok") {
                        //    upfileok = true;
                        //    alert("上传成功!");
                        //    window.location.reload();
                        //    return true;
                        //}
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
        <div class="container">
    <div class="row">
        <div class="row">
            <div class="span4">
                <fieldset>
                    <label>新闻标题</label>
                    <input type="text" placeholder="新闻标题"/>
                </fieldset>
                <fieldset>
                    <label>新闻类别</label>
                    <div>
                        <select id="bc">
                            <option value="请选择">请选择</option>
                        </select>
                        <select id="sc">
                            <option value="请选择">请选择</option>
                        </select>
                    </div>
                </fieldset>
                 <fieldset>
                    <label>新闻图片</label>
                    <form method="post" id="ufrm" style="width:126px;height:30px;display:block;overflow:hidden;position:relative;" >
                        <input type="button" value="上传" id="upbtn" class="btn" style="width:126px;height:30px;"/>
                        <input type="file" name="upfile" id="upfile" style="width:126px;height:30px; position:absolute;top:0;left:0;opacity:0;filter: alpha(opacity=0);"/>
                        <input type="hidden" id="ufname" value="" />
                    </form>
                    <div style="width:300px;height:200px;">
                        <img src="style/img/glyphicons-halflings.png" style="width:100%;height:100%;" id="preimg" />
                    </div>
                </fieldset>
            </div>

            <div class="span8">
                <textarea id="ebox" style="width:500px;height:650px" ></textarea>
                <input type="button" value="确认添加" id="send" style="margin-top:20px;"/>
            </div>

           
        </div>
    </div>
            </div>
</div>

</body>
</html>
