<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display</title>
</head>
<body>
			<h1 style="color:red" align="center">DISPLAY IMAGE DETAIL</h1>

			<a href="index.html">Home</a>
			<div align="center">
			
			<form action="show" method="post">
			   Enter Image Id :
			   <input type="number" name="img_id">
			   <input type="submit" value="Display Image">
			</form>
			
			</div>

		<hr>
		
		<%
		    String img_filename=(String)request.getAttribute("img");
		    String img_id=(String)request.getAttribute("id");
		%>
		
		<div align="center">
		     <table border="5px" style="width:600px">
		          <tr>
		              <th>Image Id </th>
		              <th>Image</th>
		          </tr>
		         
		         <%
		             if(img_filename!="" && img_id!="")
		             {
		         %>
		          
		          <tr>
		              <td><%=img_id %></td>
		              <td><img src="images/<%=img_filename%>" style="width:300px;height:250px"></td>
		          </tr>
		        <%
		             }
		        %>  
		     </table>
</div>
</body>
</html>