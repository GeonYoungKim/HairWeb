<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- Custom styles for this template -->
      <link href="resources/common/bootstrap/css/designerprofile.css" rel="stylesheet">
      <style>
  		.hairimg{ width: 300px; height:auto;}
  	</style>
    
    <%
    List<Map<String, Object>> select_search_hair=(List<Map<String, Object>>)request.getAttribute("select_search_hair");
	
    %>
   
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>


<link href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet" media="screen">

<article>
    
    <header>
        
        <h1>Your Blog Post Title</h1>
        
    </header>
    
    <div class="background-bar">
        
    </div>
    
    <section class="container-fluid main-body">
        <section class="row">
            
            <div class="hidden-xs col-sm-1 col-md-2">
                
            </div>
            
            <div class="col-xs-12 col-sm-10 col-md-8">
            
                <div class="content-holder">
                    
                    <div class="content-description">
                        
                        <div class="author-avatar">
                            <img src="<%=select_search_hair.get(0).get("img_src")%>" class="img-circle" />
                        </div>
                        <div class="author-name">
                            <h3>Author Name</h3>
                        </div>
                        <div class="row blog-info">
                            <div class="col-xs-12 col-sm-6">
                                <span class="lead text-muted"><i class="fa fa-clock-o"></i> Published: 37 days ago</span>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <span class="lead text-muted"><i class="fa fa-tags"></i> some, tags, here</span>
                            </div>
                        </div>
                        
                    </div>
                    
                    <div class="content-body">
                         <div class="table-container">
		<table class="table table-filter">
			<tbody>
				<tr>
				<%
					for(int i=0;i<select_search_hair.size();i++){
						if(i%3==0){%>
								</tr><tr>
						<% }	
						%>
							<td>
								<img src="<%=select_search_hair.get(i).get("img_src")%>" class="hairimg"
								onclick="location='/kr/ReviewHair?r_num=<%=select_search_hair.get(i).get("r_num")%>'">
							</td>
						<%
						} %>
				</tr>
	</tbody></table></div>
                        
                        
                   </div>
                </div>
            </div>
            <div class="hidden-xs col-sm-1 col-md-2">
            </div>
            
        </section>
    </section>
    
</article>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>