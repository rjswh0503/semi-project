<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.Blob"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginServlet" method="post" enctype="multipart/form-data">
		
		 <label for="tour_id">������ ��ȣ: </label> 
			<input type="text" name="TOUR_ID" id="tour_id" required> <br> 
			
			<label for="user_id">���� �̸�: </label>
			<input type="text" name="USER_ID" id="user_id" value="<%=session.getAttribute("user_id")%>" required> <br>
			
			 <label for="tour_name">������ �̸�: </label>
			 <input type="text" name="TOUR_NAME" id="tour_name" required> <br>
			 
			 <label for="tour_location">������ �ּ�: </label>
			 <input type="text" name="TOUR_LOCATION" id="tour_location" required> <br>
			 
			 <label for="tour_phone">��ȭ��ȣ: </label> 
			 <input type="text" name="TOUR_PHONE" id="tour_phone" required> <br>
			 
			 <label for="tour_time">��ð�: </label>
		 	<input type="text" name="TOUR_TIME" id="tour_time" required><br>
		 	
		 	<label for="tour_comment">������ ����: </label> 
		 	<input type="text" name="TOUR_COMMENT" id="tour_comment" required> <br>
		 	
			<label for="TOUR_IMG">�̹���: </label>
			 <input type="file" name="TOUR_IMG" id="TOUR_IMG" required> <br>
			 
			<button type="submit">���ε�</button>
			<input type="hidden" name="action" value="insertTour">		
		
	</form>
</body>
</html>