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
    List<Map<String, Object>> Designer_list=(List<Map<String,Object>>)request.getAttribute("designer_list"); 	
    %>	
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
                         <%
							for(int i=0; i<Designer_list.size(); i++){
								if(Designer_list.get(i).get("dnum") == select_search_hair.get(0).get("r_designernum")){
						%>
                        <div class="author-name">
                            <h3><%=Designer_list.get(i).get("dname")%></h3>
                        </div>
                        <div class="row blog-info">
							 <div class="col-xs-12 col-sm-6">
			                       <span class="lead text-muted"><i class="fa fa-clock-o"></i> <%=Designer_list.get(i).get("dphone")%></span>
			                  </div>
			                  <div class="col-xs-12 col-sm-6">
			                        <span class="lead text-muted"><i class="fa fa-tags"></i> <%=Designer_list.get(i).get("demail")%></span>
			                  </div>
						<%
							}
						}
						%>
                           
                        </div>
                    </div>
                    
                    
                    <div class="body-image">
                  	<%
                  		Object w=null;
						for(int i=0;i<select_search_hair.size();i++){
							if(!(select_search_hair.get(i).get("r_num")).equals(w)){
						%>
			                <img src="<%=select_search_hair.get(i).get("img_src")%>" class="img-responsive"
								onclick="location='/kr/ReviewHair?r_num=<%=select_search_hair.get(i).get("r_num")%>'">
			                 <%}  w = select_search_hair.get(i).get("r_num");
							} %>
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