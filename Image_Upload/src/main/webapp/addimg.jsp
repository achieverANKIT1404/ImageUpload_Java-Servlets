<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Image</title>
</head>
<body>
		<h1 style="color:red" align="center">ADD IMAGE DETAIL</h1>

		<div align="center">
		
		<form action="add" method="post" enctype="multipart/form-data">
		   Select Image :
		   <input type="file" name="img_filename">
		   <input type="submit" value="Add Image">
		</form>
		
		</div>
		
</body>
</html>