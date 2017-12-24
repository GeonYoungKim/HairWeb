<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog - Start Bootstrap Theme</title>

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
  		.hairimg{ width: 300px; height:auto;}
  	</style>
  
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
</body>
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
<body>

<div class="container">
	<div class="row">
		<section class="content">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-body">
							<div class="error-notice">
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
								  <input type="checkbox" id="inlineCheckbox1" value="option1"> 뿌리 매직　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox2" value="option2"> 볼륨 매직　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox3" value="option3"> 일반 매직　
								</label>	
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox3" value="option3"> 클리닉 매직　
								</label>	
					          </div>
					          <div class="oaerror primary">
					            <strong>염색　　</strong>
					            <label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox1" value="option1"> 숏컷　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox2" value="option2"> 단발　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox3" value="option3"> 미디엄　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox3" value="option3"> 장발　
								</label>	
					          </div>
					          <div class="oaerror success">
					            <strong>케어　　</strong>
					            <label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox1" value="option1"> 무코타　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox2" value="option2"> 로레알　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox3" value="option3"> 아베다　
								</label>
					          </div>
					          <div class="oaerror inverse">
					            <strong>기타　　</strong>
					            <label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox1" value="option1"> 숏컷　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox2" value="option2"> 단발　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox3" value="option3"> 미디엄　
								</label>
								<label class="checkbox inline">
								  <input type="checkbox" id="inlineCheckbox3" value="option3"> 장발　
								</label>	
					          </div>
	 						<input type="button" class="button-search" value="검색하기">
	 	</div></div></div></div></section></div></div>
	 	
	 <div class="table-container">
							<table class="table table-filter">
								<tbody>
									<tr>
										<td data-status="shorthair" data-status2="valonfam">
											<a href="/kr/ReviewHair"><img src="resources/common/bootstrap/img/aaa.jpg" class="hairimg">shorthair
										</a></td>
										<td data-status="shoulderhair" data-status2="ccurlfam">
											<img src="resources/common/bootstrap/img/aab.jpg" class="hairimg">shoulderhair
										</td>
										<td data-status="longhair">
											<img src="resources/common/bootstrap/img/aac.jpg" class="hairimg">longhair
										</td>
									</tr>
									<tr>
										<td data-status="shorthair">
											<img src="resources/common/bootstrap/img/aad.jpg" class="hairimg">rr1
										</td>
										<td data-status="shoulderhair">
											<img src="resources/common/bootstrap/img/aae.jpg" class="hairimg">rr2
										</td>
										<td data-status="longhair">
											<img src="resources/common/bootstrap/img/aaf.jpg" class="hairimg">rr3
										</td>
									</tr>
									<tr>
										<td data-status="shorthair">
											<img src="resources/common/bootstrap/img/aaa.jpg" class="hairimg">rr1
										</td>
										<td data-status="shoulderhair">
											<img src="resources/common/bootstrap/img/aaa.jpg" class="hairimg">rr2
										</td>
										<td data-status="longhair">
											<img src="resources/common/bootstrap/img/aaa.jpg" class="hairimg">rr3
										</td>
									</tr>
							</tbody></table></div>
	 

    <!-- Bootstrap core JavaScript -->
    <script src="resources/common/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="resources/common/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
     <script src="resources/common/bootstrap/js/filter-blog.js"></script>

  </body>

</html>

