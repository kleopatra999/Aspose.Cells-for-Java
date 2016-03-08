<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/head.jsp" %>
<title>Worksheets - Aspose.Cells Grid Suite Demos</title>
<script type="text/javascript" src="grid/acw_client/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	function doClick(method) {
		$.post("FeatureServlet", {
			flag : method.id,
			gridwebuniqueid : $("#mycomponent").attr("webuniqueid")
		}, function(data) {
			$("#gridweb").html(data);
		}, "html");
	}

	//页面加载
	$(document).ready(function() {
		
	 
		var method = {
			id : "pagination"
		};
		doClick(method);
	});
</script>
</head>
<body>
	<div>
		<p>
			Click <b>Reload</b> to see how demo loads data from data source and
			divides it into several pages to improve performance or support
			logical data division for subsequent data preview in the GridWeb
			Control.
		</p>
	</div>

	<div>
		<table>
			<tr>
				<th>Reload Data:</th>
				<td><input id="pagination" type="button" value="Reload"
					onClick="doClick(this);"></td>
			</tr>
		</table>
	</div>

	<div id="gridweb"></div>
</body>
</html>