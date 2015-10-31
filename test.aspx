<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
        .a{background-color:#08c}
        .b{background-color:#ffd800}

        
    </style>
    <script type="text/javascript">
        function f()
        {
            var tr = document.createElement("tr");
            tr.className = "a";
            tr.innerHTML = "<td>内容一</td><td>内容二</td>";
            document.getElementById("tb").appendChild(tr);
        }

        function a()
        {
            document.getElementById("tbox").innerHTML = "";

            document.getElementById("tbox").innerHTML = "<table><thead><tr><th>标题一</th><th>标题二</th></tr></thead><tbody id='tb'></tbody></table>";
        }
    </script>
</head>
<body>
    <div id="tbox">
   <table>
       <thead>
           <tr>
               <th>标题一</th>
               <th>标题二</th>
           </tr>
       </thead>
       <tbody id="tb">
           <tr class="a"><td>内容一</td><td>内容二</td></tr>
           <tr class="b"><td>内容1</td><td>内容2</td></tr>
       </tbody>
   </table>
        </div>
   <input type="button" value="Change" onclick="f()" />
   <input type="button" value="Change" onclick="a()" />
</body>
</html>
