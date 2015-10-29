<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AUnew.aspx.cs" Inherits="admin_addnew"  %>

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
        var upok = true;
        var data_class;

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

        window.onload = function ()
        {
            bindupchange();
            bindsend();
            InitClassValue();
            bindbc();
        }

        function InitClassValue()
        {
            var v = document.getElementById("bsvalue").value; 
            data_class = eval("("+v+")");
        }

        function bindbc()
        {
            var bc = document.getElementById("bc");
            bc.length = 0;
            bc.options.add(new Option("请选择","-1"));
            for (var i = 0; i < data_class.length; i++) {
                if(data_class[i].type=="b")
                {
                    bc.options.add(new Option(decodeURIComponent(data_class[i].names),decodeURIComponent(data_class[i].id)));
                }
            }
            bc.onchange = function ()
            {
                bindsc();
            }
        }

        function bindsc() {
            var bc = document.getElementById("bc");
            var sindex = bc.selectedIndex;
            var svalue = bc.options[sindex].value;

            var sc = document.getElementById("sc");
            sc.length = 0;
            sc.options.add(new Option("请选择", "-1"));
            for (var i = 0; i < data_class.length; i++) {
                if (data_class[i].pid == svalue) {
                    sc.options.add(new Option(decodeURIComponent(data_class[i].names), decodeURIComponent(data_class[i].id)));
                }
            }
        }

        function bindsend()
        {
            var btn = document.getElementById("send");
            btn.onclick = function ()
            {
                var sindex = -1;
                var title = document.getElementById("title").value;
                sindex = document.getElementById("bc").selectedIndex;
                var bc = document.getElementById("bc").options[sindex].value;
                sindex = document.getElementById("sc").selectedIndex;
                var sc = document.getElementById("sc").options[sindex].value;
                var pic = document.getElementById("ufname").value;
                edit.sync();
                var contents = document.getElementById("ebox").value;

                //必填项
                if (title.replace(/\s+/g, "") == "") { alert("请输入标题！"); return false; }
                if (bc == "-1" || sc == "-1") { alert('请选择分类！'); return false;}
                if (contents.replace(/\s+/g, "") == "") { alert("请输入正文内容！"); return false; }

                btn.disabled = true;
                $.ajax({
                    type: 'post',
                    url: 'AsyCenter.aspx',
                    data: {
                        aty:'addnew',
                        title: title,
                        bc: bc,
                        sc: sc,
                        pic: pic,
                        contents:contents
                    },
                    success: function (data)
                    {
                        var r = data.split(":");
                        if (r[0] == "ok") {
                            alert('添加完成');
                            window.location.reload();
                        } else {
                            alert('添加失败');
                            btn.disabled = false;
                            window.location.reload();
                        }
                    }
                })
            }
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
            <div class="span4">
                <fieldset>
                    <label>新闻标题</label>
                    <input type="text" placeholder="新闻标题" id="title"/>
                </fieldset>
                <fieldset>
                    <label>新闻类别</label>
                    <div>
                        <select id="bc">
                            <option value="-1">请选择</option>
                        </select>
                        <select id="sc">
                            <option value="-1">请选择</option>
                        </select>
                    </div>
                </fieldset>
                <input type="hidden" value='<%=classvalue %>' id="bsvalue"/>
                <fieldset>
                    <label>新闻图片</label>
                    <form method="post" id="ufrm" style="width: 126px; height: 30px; display: block; overflow: hidden; position: relative;">
                        <input type="button" value="上传" id="upbtn" class="btn" style="width: 126px; height: 30px;" />
                        <input type="file" name="upfile" id="upfile" style="width: 126px; height: 30px; position: absolute; top: 0; left: 0; opacity: 0; filter: alpha(opacity=0);" />
                        <input type="hidden" id="ufname" value="" />
                    </form>
                    <div style="width: 300px; height: 200px;">
                        <img src="style/img/glyphicons-halflings.png" style="width: 100%; height: 100%;" id="preimg" />
                    </div>
                </fieldset>
            </div>

            <div class="span8">
                <textarea id="ebox" style="width: 500px; height: 650px"></textarea>
                <input type="button" value="确认添加" id="send" style="margin-top: 20px;" />
            </div>


        </div>
    </div>

</body>
</html>
