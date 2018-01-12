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
<%List<Map<String, Object>> QnA_list=(List<Map<String,Object>>)request.getAttribute("QnA_list"); 	
	int QnAunit=(QnA_list.size())/10;
	int QnA_page_num=(int)request.getAttribute("QnA_page_num");
	System.out.println(QnA_page_num);
	int ten=1;
	
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
	<br><br><br><br>
	<div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <form action="/kr/QnA_insert" id="contactForm" novalidate>
            <div class="control-group" id="top">
              <div class="form-group floating-label-form-group controls">
                <label>글쓴이</label>
                <input type="text" name="QnA_writer"class="form-control" placeholder="글쓴이" id="name">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>머리말</label>
                <input type="text" name="QnA_preface" class="form-control" placeholder="머리말" id="email">
                <p class="help-block text-danger"></p>
                
              </div>
            </div>
            <div class="control-group">
              <div class="form-group col-xs-12 floating-label-form-group controls">
                <label>제목</label>
                <input type="text" name="QnA_title" class="form-control" placeholder="제목" id="phone">
                <p class="help-block text-danger"></p>
                
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>내용</label>
                <textarea name="QnA_body"rows="10" class="form-control" placeholder="내용" id="message"></textarea>
                <p class="help-block text-danger"></p>
                
              </div>
            </div>
            <br>
            <div id="success"></div>
            <div class="form-group">
              <input type="submit" class="btn btn-primary" id="sendMessageButton" value="글등록">
            </div>
          </form>
        </div>
      </div>
    </div>
				
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
