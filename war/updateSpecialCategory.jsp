<%@page import="nayapuranaa.model.SpecialCategory"%>
<%@page import="com.google.appengine.api.datastore.KeyFactory"%>
<%@page import="nayapuranaa.model.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Update SpecialCategory</h1>
	<%
		SpecialCategory cat = new SpecialCategory();
		if(request.getAttribute("specialcategory")!=null){
			cat = (SpecialCategory)request.getAttribute("specialcategory");
		}
	%>
	<form method="post" action="../update" >
		<input type="hidden" name="key" id="key" 
			value="<%=KeyFactory.keyToString(cat.getSpclCategoryId()) %>" /> 
		<table>
			<tr>
				<td>
					UserName :
				</td>
				<td>
					<input type="text" style="width: 185px;" maxlength="30" name="name" id="name" 
						value="<%=cat.getName() %>" />
				</td>
			</tr>
			<%-- <tr>
				<td>
					Email :
				</td>
				<td>
					<input type="text" style="width: 185px;" maxlength="30" name="email" id="email" 
						value="<%=customer.getEmail() %>" />
				</td>
			</tr> --%>
		</table>
		<input type="submit" class="update" title="Update" value="Update" />
	</form>
</body>
</html>