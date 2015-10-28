<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cpw.aspx.cs" Inherits="admin_cpw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="style/js/jquery-1.8.2.min.js"></script>
    <script src="style/js/bootstrap.min.js"></script>
    <script src="style/js/js.js"></script>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span4"></div>
            <div class="span4">
                <form>
                    <fieldset>
                        <legend>密码修改</legend>
                        <label>旧密码</label><input type="text" />
                        <label>新密码</label><input type="text" />
                        <label>再次输入新密码</label><input type="text" />
                        <span class="help-block">这里填写帮助信息.</span>
                        <button type="button" class="btn">提交</button>
                    </fieldset>
                </form>
            </div>
            <div class="span4"></div>
        </div>
    </div>
    
</body>
</html>
