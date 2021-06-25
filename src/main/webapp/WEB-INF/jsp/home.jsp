<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
console.log("inside the javacritp")
$(document).ready(function(){
	console.log(localStorage.getItem("token"))

	$('#list').click(function(e){
		console.log(localStorage.getItem("token"))
		$.ajax({
		    url: "http://localhost:4780/user/list",
		    type: "GET",
		    headers:{ "Authorization": 'Bearer '+localStorage.getItem("token")},
		    success: function(data) {
		    	
		    	$('body').html(data);
		    	
		    
		    }
	
		
		
		
		
		});
	})
	
});</script>
<title>Insert title here</title>
</head>
<body>
<h1>Home Page</h1>
<a href="#" id="list">list</a><br>
<a href="#" id="add">add</a><br>
<a href="#" id="login">login</a><br>
<a href="#" id="logout">logout</a><br>
</body>
</html>