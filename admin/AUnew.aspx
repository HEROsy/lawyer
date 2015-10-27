<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AUnew.aspx.cs" Inherits="admin_addnew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="style/js/jquery-1.8.2.min.js"></script>
    <script src="style/js/bootstrap.min.js"></script>
    <script src="style/js/js.js"></script>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
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

    <div class="row-fluid">
        <div class="row-fluid">
            <div class="span4">
                <fieldset>
                    <label>新闻标题</label>
                    <input type="text" placeholder="新闻标题">
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
                    <div>
                        <select id="bc">
                            <option value="请选择">请选择</option>
                        </select>
                        <select id="sc">
                            <option value="请选择">请选择</option>
                        </select>
                    </div>
                </fieldset>

            </div>
            <div class="span5">
            </div>
            <div class="span3">
            </div>
        </div>
    </div>
</div>

</body>
</html>
