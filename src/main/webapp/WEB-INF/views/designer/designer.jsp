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
     <link href="resources/common/bootstrap/css/clean-blog.min.css" rel="stylesheet">
	<%List<Map<String, Object>> Designer_list=(List<Map<String,Object>>)request.getAttribute("designer_list"); 	%>

<style type="text/css">
body{
	background-size:cover;
	background-repeat: no-repeat;
}
.row{
	background-color: white;
}
.btn-primary {
  background-color: #0085A1;
  border-color: #0085A1; }

.btn-primary:hover, .btn-primary:focus, .btn-primary:active {
    color: #fff;
    background-color: #00657b !important;
    border-color: #00657b !important; }
p {
  line-height: 1.5;
  margin: 30px 0; }
 p a {
    text-decoration: underline; }
a {
  color: #212529;
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  transition: all 0.2s; }
  a:focus, a:hover {
    color: #0085A1; }
</style>
 </head>

  <body class="masthead" style="background-image:url('resources/common/bootstrap/img/Main.jpg')">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="/kr/">Seokyoung Beauty Salon</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="resources/common/bootstrap/index.html"><font size=5>Reservation</font></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/kr/Designer"><font size=5>Designer</font></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/kr/Review"><font size=5>Review</font></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/kr/QnA"><font size=5>Q&A</font></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <br><br><br><br>
    
    
    <!--  -->
	<div class="container">
		<div class="row">
       	 	<div class="col-xs-12 col-sm-6 col-md-6">
       			<div class="well well-sm">
       				<div class="row"><%
					int i = 0;	
					for(i=1; i<4; i++){%>
       					<div class="col-xs-6 col-md-6">
       						  <img src="resources/common/bootstrap/img/d_<%=i %>.jpg" alt="" class="img-rounded img-responsive" />
                    	</div>
                    	<div class="col-xs-6 col-md-6">
                    		<h4><%=Designer_list.get(i).get("dname")%><br></h4>
                    		  <p>
                            <i class="glyphicon glyphicon-envelope"></i><%=Designer_list.get(i).get("dphone")%>
                          	<br />
                            <i class="glyphicon glyphicon-gift"></i><%=Designer_list.get(i).get("demail")%></p>
                      		<div class="clearfix">
				            <a class="btn btn-primary" onclick="location='/kr/Designerprofile?dnum=<%=Designer_list.get(i).get("dnum")%>'">자세히 보기  &rarr;</a>
				         	 </div><br /><br />
                    	</div><%} %>
       				</div>
       			</div>
        	</div>
        </div>
</div>

<!-- Bootstrap core JavaScript -->
	<script src="resources/common/bootstrap/vendor/jquery/jquery.min.js"></script>
	<script
		src="resources/common/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>

