<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File" %>
<%@page import="java.awt.image.BufferedImage" %>
<%@page import="javax.imageio.ImageIO" %>
<%@page import="java.awt.Image" %>
<%@page import="java.net.URL" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>서경 Blue Shop</title>
    
    <!-- Bootstrap core CSS -->
    <link href="resources/common/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="resources/common/bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
     <link href="resources/common/bootstrap/css/filter-blog.css" rel="stylesheet">
     
  <style type="text/css">
	body{
		background-size:cover;
		background-repeat: no-repeat;
	}
	.hairimg{ width: 300px; height:auto;}
	.container{
		width:80%;
		height:auto;
		padding:20px;
		margin: 0 auto;
	}
	.table-container{
		width:80%;
		margin: 0 auto;
	}
</style>

  <%
  	List<Map<String, Object>> Review_List
  	=(List<Map<String,Object>>)request.getAttribute("Review_List"); 	
	List<Map<String, Object>> Hair_List
  	=(List<Map<String,Object>>)request.getAttribute("Hair_List"); 
%>
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
    <br><br><br><br><br><br>
   
    
<div class="container">
	<div class="row">
		<section class="content">
			<div class="col-md-12 col-md-offset-8">
				<div class="panel panel-default">
					<div class="panel-body">
							<div class="error-notice">
					          <div class="oaerror warning">
					             <strong>펌　　　</strong>
					            <label class="checkbox inline">
								  <input type="checkbox" name="farmer" value="valonfam"> 발롱펌　
								</label>
								<label class="checkbox inline">　
								  <input type="checkbox" name="farmer" value="ccurlfam"> C컬펌　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="farmer" value="scurlfam"> S컬펌　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="farmer" value="wavefam"> 물결펌　
								</label>	
								<label class="checkbox inline">
								  <input type="checkbox" name="farmer" value="tressfam"> 가르마펌　
								</label>	
					          </div>
					          <div class="oaerror info">
					            <strong>매직　　</strong>
					            <label class="checkbox inline">
								  <input type="checkbox" name="magic" value="option1"> 뿌리 매직　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="magic" value="option2"> 볼륨 매직　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="magic" value="option3"> 일반 매직　
								</label>	
								<label class="checkbox inline">
								  <input type="checkbox" name="magic" value="option3"> 클리닉 매직　
								</label>	
					          </div>
					          <div class="oaerror danger">
					            <strong>길이　　</strong>
					             <label class="checkbox inline">
								  <input type="checkbox" name="length" value="shorthair"> 숏컷　
								</label>
								 <label class="checkbox inline">
								  <input type="checkbox"name="length" value="shoulderhair"> 단발　
								</label>
								 <label class="checkbox inline">
								  <input type="checkbox" name="length" value="mideumhair"> 미디움 　
								</label>
								 <label class="checkbox inline">
								  <input type="checkbox" name="length" value="longhair"> 긴 머리　
								</label>
					          </div>
					          <div class="oaerror primary">
					            <strong>염색　　</strong>
					            <label class="checkbox inline">
								  <input type="checkbox" name="color" value="option1"> 탈색　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="color" value="option2"> 단발　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="color" value="option3"> 미디엄　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="color" value="option3"> 장발　
								</label>	
					          </div>
					          <div class="oaerror success">
					            <strong>케어　　</strong>
					            <label class="checkbox inline">
								  <input type="checkbox" name="care" value="option1"> 무코타　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="care" value="option2"> 로레알　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="care" value="option3"> 아베다　
								</label>
					          </div>
					          <div class="oaerror inverse">
					            <strong>기타　　</strong>
					            <label class="checkbox inline">
								  <input type="checkbox" name="etc" value="option1"> 숏컷　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="etc" value="option2"> 단발　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="etc" value="option3"> 미디엄　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" name="etc" value="option3"> 장발　
								</label>	
					          </div>
	 						<input type="button" class="button-search" value="검색하기">
	 	</div></div></div></div></section></div></div>
	
	
		<div class="table-container">
		<table class="table table-filter">
			<tbody>
				<tr>
				<%
					for(int i=0;i<Review_List.size();i++){
						int q=Hair_List.size();
						int w=0; 
					
						if(i%3==0){%>
								</tr><tr>
						<% }	
						while(w!=q){
							if(Review_List.get(i).get("r_num").equals(Hair_List.get(w).get("r_num"))){
						%>
							<td data-status1="<%=Review_List.get(i).get("r_farmar")%>" data-status2="<%=Review_List.get(i).get("r_magic")%>"
							  data-status3="<%=Review_List.get(i).get("r_length")%>" data-status4="<%=Review_List.get(i).get("r_color")%>"
							    data-status5="<%=Review_List.get(i).get("r_care")%>" data-status6="<%=Review_List.get(i).get("r_etc")%>">
								<img src="<%=Hair_List.get(w).get("img_src")%>" class="hairimg"
								onclick="location='/kr/ReviewHair?r_num=<%=Hair_List.get(w).get("r_num")%>'">
							</td>
						<%
							break;}w++;
						} } %>
				</tr>
	</tbody></table></div>


    <!-- Bootstrap core JavaScript -->
    <script src="resources/common/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="resources/common/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
     <script src="resources/common/bootstrap/js/filter-blog.js"></script>

  </body>

</html>

