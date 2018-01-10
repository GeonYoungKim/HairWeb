<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog - Start Bootstrap Theme</title>
    
     <% 
	  List<Map<String, Object>> review_hair=(List<Map<String, Object>>)request.getAttribute("review_hair");
	  List<Map<String, Object>> select_search_designer=(List<Map<String, Object>>)request.getAttribute("select_search_designer");
	
	%>

    <!-- Bootstrap core CSS -->
    <link href="resources/common/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="resources/common/bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
     <link href="resources/common/bootstrap/css/filter-blog.css" rel="stylesheet">
      <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
  
  	<style>
  		#zoom_img {text-align:center; margin-bottom:15px; }
			.thumb {overflow:hidden;}
			.thumb li {width:25%; float:left; text-align:center;}
			.thumb li a {border:1px solid #555; overflow:hidden;}
			.thumb li a,
			.thumb li a img {width:150px; height:100px; display:block;}
			.thumb li.on a {border:2px solid #a52323; width:148px; height:98px;}
			.thumb li.on a img {margin:-1px 0 0 -1px;}

  	</style>
  </head>

  <body>
  	<h3>디자이너</h3>
    <%for(int i=0; i<select_search_designer.size(); i++){%>
  	 이름: <%=select_search_designer.get(i).get("dname") %><br>
  	전화번호: <%=select_search_designer.get(i).get("dphone") %><br>
  	이메일: <%=select_search_designer.get(i).get("demail") %><br>
  <%} %>
  
    <div id="zoom_img"><img src="<%=review_hair.get(0).get("img_src")%>" width=400 height=550 alt="image 1"></div>
	<ul class="thumb">
	   <%for(int i=0; i<review_hair.size(); i++){%>
	   	<li>
	   		 <a href="#"><img src="<%=review_hair.get(i).get("img_src")%>" alt="image <%=i%>"></a>
	   	</li>
	   <%} %>
	</ul>


    <!-- Bootstrap core JavaScript -->
    <script src="resources/common/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="resources/common/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
     <script src="resources/common/bootstrap/js/reviewhair.js"></script>

  </body>

</html>

