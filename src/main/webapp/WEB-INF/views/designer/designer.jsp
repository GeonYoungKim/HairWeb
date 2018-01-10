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

    <!-- Bootstrap core CSS -->
    <link href="resources/common/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="resources/common/bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
     <link href="resources/common/bootstrap/css/designer-blog.css" rel="stylesheet">
	
<%List<Map<String, Object>> Designer_list=(List<Map<String,Object>>)request.getAttribute("designer_list"); 	%>

	<script>
		function phone_format(pnum){
			
			return pnum.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
		}
	</script>

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
              <h1>Designer</h1>
              <span class="subheading">profile</span>
            </div>
          </div>
        </div>
      </div>
    </header>
							
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6">
            <div class="well well-sm">
                <div class="row">
               		<%
					int i = 0;	
					for(i=0; i<Designer_list.size(); i++){%>
					<div class="col-xs-6 col-md-6">
                        <img src="http://placehold.it/180x250" alt="" class="img-rounded img-responsive" />
                    </div>
                    <div class="col-xs-6 col-md-6">
                        <h4><%=Designer_list.get(i).get("dname")%><br></h4>
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i><%=Designer_list.get(i).get("dphone")%>
                          	<br />
                            <i class="glyphicon glyphicon-gift"></i><%=Designer_list.get(i).get("demail")%></p>
                        <!-- Pager -->
				          <div class="clearfix">
				            <a class="btn btn-primary" onclick="location='/kr/Designerprofile?dnum=<%=Designer_list.get(i).get("dnum")%>'">자세히 보기  &rarr;</a>
				          </div><br /><br />
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
</div>
	
</body>
</html>

