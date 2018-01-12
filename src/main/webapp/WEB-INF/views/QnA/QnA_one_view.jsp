<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>서경 Blue Shop</title>
<%
Map<String, Object> QnA_one=(Map<String, Object>)request.getAttribute("QnA_one");
Map<String, Object> Answer_one=(Map<String, Object>)request.getAttribute("Answer_one");

%>
<!-- Bootstrap core CSS -->
<link
	href="resources/common/bootstrap/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="resources/common/bootstrap/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="resources/common/bootstrap/css/clean-blog.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	background-size: cover;
	background-repeat: no-repeat;
}
table{
	color:black;
}
#top{
	margin-top:10px;
}
.control-group{
	width: 100%;
    background-color: white;
    color: white;
    padding: 7px 14px;
    border: 1px solid #F6D8CE;    
    cursor: pointer;
}
button[type=submit]{
	background-color: #F6D8CE;
    color: black;
    font-color: white;
}
.row{
	background-color: white;
}
</style>
</head>

<body class="masthead"
	style="background-image: url('resources/common/bootstrap/img/Main.jpg')">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="/kr/">Seokyoung Beauty Salon</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="/kr/reservation"><font size=5>Reservation</font></a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="resources/common/bootstrap/designer.html"><font size=5>Designer</font></a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="resources/common/bootstrap/post.html"><font size=5>Review</font></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/kr/QnA"><font size=5>Q&A</font></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<br><br><br><br><br>
	
	<div class="container">
		 
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
        <p>Question - <%=QnA_one.get("QnA_writer") %> 님</p> 
        	<p><%=QnA_one.get("QnA_body") %></p>  
       	</div>
      </div>
    </div>
	<br>
	<div class="container">
		
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
        <%try{
        	%>        
        	<p>Answer - <%=Answer_one.get("dname")  %> 디자이너</p>  
        	<p><%=Answer_one.get("answer_body") %></p>
        	<%}catch(NullPointerException e){
        		e.printStackTrace();
        		
        	}%>
       	</div>
      </div>
    </div>
		

	<!-- Bootstrap core JavaScript -->
	<script src="resources/common/bootstrap/vendor/jquery/jquery.min.js"></script>
	<script
		src="resources/common/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="resources/common/bootstrap/js/clean-blog.min.js"></script>

</body>

</html>
