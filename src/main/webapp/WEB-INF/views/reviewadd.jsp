<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>리뷰 작성하기</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/common/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="resources/common/bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
     <link href="resources/common/bootstrap/css/filter-blog.css" rel="stylesheet">	
  </head>

  <body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="resources/common/bootstrap/index.html">Beauty Salon</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="resources/common/bootstrap/designer.html">Designer</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="resources/common/bootstrap/post.html">Sample Post</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="resources/common/bootstrap/contact.html">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Header -->
    <header class="masthead" style="background-image:url('resources/common/bootstrap/img/home-bg.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1>Clean Blog</h1>
              <span class="subheading">A Blog Theme by Start Bootstrap</span>
            </div>
          </div>
        </div>
      </div>
    </header>
    
    </body>
<body>

  <h3>게시글 작성</h3>
    <div style="padding : 30px;">
        <form method="POST" action="ReviewAddCheck">
          <div class="form-group">
            <label>제목</label>
            <input type="text" name="subject" class="form-control">
          </div>
          <div class="form-group">
            <label>작성자</label>
            <input type="text" name="writer" class="form-control">
          </div>
          <div class="form-group">
            <label>내용</label>
            <textarea name="content" class="form-control" rows="5"></textarea>
          </div>
          
    <div class="row">
    	<div class="col-md-1">
    		길이
    	</div>
    	<div class="col-md-8">
    		<div class="container"> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="length" value="lengthshort"> 숏컷 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="length" value="lengthmedium"> 미디엄 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="length" value="lengthmediumwell"> 미디엄웰던 </label>
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="length" value="lengthlong"> 장발 </label>
			</div>
    	</div>
    </div>
   <div class="row">
    	<div class="col-md-1">
    		펌
    	</div>
    	<div class="col-md-8">
    		<div class="container"> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="farmar" value="lengthshort"> 숏컷 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="farmar" value="lengthmedium"> 미디엄 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="farmar" value="lengthmediumwell"> 미디엄웰던 </label>
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="farmar" value="lengthlong"> 장발 </label>
			</div>
    	</div>
    </div> <div class="row">
    	<div class="col-md-1">
    		매직
    	</div>
    	<div class="col-md-8">
    		<div class="container"> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="magic" value="lengthshort"> 숏컷 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="magic" value="lengthmedium"> 미디엄 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="magic" value="lengthmediumwell"> 미디엄웰던 </label>
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="magic" value="lengthlong"> 장발 </label>
			</div>
    	</div>
    </div> <div class="row">
    	<div class="col-md-1">
    		염색
    	</div>
    	<div class="col-md-8">
    		<div class="container"> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="colorchange" value="lengthshort"> 숏컷 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="colorchange" value="lengthmedium"> 미디엄 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="colorchange" value="lengthmediumwell"> 미디엄웰던 </label>
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="colorchange" value="lengthlong"> 장발 </label>
			</div>
    	</div>
    </div> <div class="row">
    	<div class="col-md-1">
    		케어
    	</div>
    	<div class="col-md-8">
    		<div class="container"> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="care" value="lengthshort"> 숏컷 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="care" value="lengthmedium"> 미디엄 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="care" value="lengthmediumwell"> 미디엄웰던 </label>
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="care" value="lengthlong"> 장발 </label>
			</div>
    	</div>
    </div>
     <div class="row">
    	<div class="col-md-1">
    		기타
    	</div>
    	<div class="col-md-8">
    		<div class="container"> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="etc" value="lengthshort"> 숏컷 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="etc" value="lengthmedium"> 미디엄 </label> 
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="etc" value="lengthmediumwell"> 미디엄웰던 </label>
    			<label class="checkbox-inline"> 
    				<input type="checkbox" name="etc" value="lengthlong"> 장발 </label>
			</div>
    	</div>
    </div>
          
          <input type="submit" class="btn btn-default" value="작성"></input>
        </form>
    </div>
    
    <!-- Bootstrap core JavaScript -->
    <script src="resources/common/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="resources/common/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
     <script src="resources/common/bootstrap/js/filter-blog.js"></script>

  </body>

</html>

