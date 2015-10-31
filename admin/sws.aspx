<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sws.aspx.cs" Inherits="admin_news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="style/js/jquery-1.8.2.min.js"></script>
    <script src="style/js/bootstrap.min.js"></script>
    <script src="style/js/js.js"></script>
    <link href="style/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>

    <script type="text/javascript">
        window.onload = function ()
        {

        }

        function getdata() {
            var bc = document.getElementById("bc");
            var sc = document.getElementById("sc");
            var bs = bc.options[bc.selectedIndex].value;
            var ss = sc.options[sc.selectedIndex].value;

            // if (bs == "-1") { return false; }
            $.ajax({
                type: 'post',
                url: 'AsyCenter.aspx',
                data: {
                    aty: 'getnew',
                    bs: bs,
                    ss: ss
                },
                success: function (data) {
                    //tbody.innerHTML = "";
                    cleartable();
                    var md = null;
                    try {
                        md = eval("(" + data + ")");
                    } catch (e) {
                        aprow("无内容...", "", "", "", "");
                        return false;
                    }
                    creatrow(md);
                }
            })
        }

        function creatrow(md) {
            var bn = "";
            var sn = "";
            var times = "";
            var classname = "";
            var tab = 0;
            for (var i = 0; i < md.length; i++) {
                bn = getclassname(data_class, md[i].bclass);
                sn = getclassname(data_class, md[i].sclass);
                times = Inittimes(decode(md[i].fbtimes));
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
                aprow(decode(md[i].titles), bn, sn, times, decode(md[i].id), classname);
            }
            upPFramHeight();

        }

        function Inittimes(timestr) {
            return timestr.substr(0, timestr.indexOf(" "));
        }

        

    </script>
</head>
<body>
    
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="page-header">
				<h1>
					律师事务所管理
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
							<input type="button" class="btn" value="添加事务所" onclick="window.location.href = 'AUsws.aspx'"/>
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
					<table class="table">
						<thead>
							<tr>
								<th>
									编号
								</th>
								<th>
									产品
								</th>
								<th>
									交付时间
								</th>
								<th>
									状态
								</th>
                                <th>
									操作
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Default
								</td>
                                <td>
									Default
								</td>
							</tr>
							<tr class="success">
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Approved
								</td>
							</tr>
							<tr class="error">
								<td>
									2
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									02/04/2012
								</td>
								<td>
									Declined
								</td>
							</tr>
							<tr class="warning">
								<td>
									3
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									03/04/2012
								</td>
								<td>
									Pending
								</td>
							</tr>
							<tr class="info">
								<td>
									4
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									04/04/2012
								</td>
								<td>
									Call in to confirm
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>
