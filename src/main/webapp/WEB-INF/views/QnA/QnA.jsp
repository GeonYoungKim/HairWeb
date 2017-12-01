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
input[type=text] {
    width: 100%;
    background-color: white;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    
    border: 1px solid blue;
    border-radius: 4px;
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
						href="resources/common/bootstrap/index.html"><font size=5>Reservation</font></a>
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
					<P ALIGN="center"><font SIZE="6" COLOR="BLACK"><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QnA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></font>
					<button onclick="location='/kr/insert_QnA_view'" type="submit" class="btn btn-primary" id="sendMessageButton">글쓰기</button></P>
				
					<table  BORDER="1" BORDERCOLOR="black" CELLPADDING="5" ALIGN="center">
					<TR><TD align="center" WIDTH="70">번호</TD><TD align="center" WIDTH="80">머리말</TD><TD align="center" WIDTH="650">제목</TD><TD align="center" WIDTH="150">글쓴이</TD>
					
					<%
						if(QnA_list.size()>10){
							 if(QnA_page_num==0){
								for(int i=0;i<10;i++){
								%>
								<tr style="cursor:pointer;" onclick="location='/kr/QnA_one_view?QnA_no=<%=QnA_list.get(i).get("QnA_no")%>'">
										<TD align="center"><%=QnA_list.get(i).get("QnA_no")%></TD>
										<TD align="center"><%=QnA_list.get(i).get("QnA_preface")%></TD>
										<%if((Integer.parseInt(QnA_list.get(i).get("QnA_answer_flag")+""))==0){
											%>
											<TD align="center"><%=QnA_list.get(i).get("QnA_title")%></TD>
										<% }else{
											%>
											<TD align="center"><%=QnA_list.get(i).get("QnA_title")%>  <img src="resources/common/bootstrap/img/answer.png" width="50px" height="30px"></TD>
										<% }%>
										
										
										<TD align="center"><%=QnA_list.get(i).get("QnA_writer")%></TD>
										</tr>
								<%							
						}}else{
							for(int i=QnA_page_num-10;i<QnA_list.size();i++){
								%>
								<tr style="cursor:pointer;" onclick="location='/kr/QnA_one_view?QnA_no=<%=QnA_list.get(i).get("QnA_no")%>'">
										<TD align="center"><%=QnA_list.get(i).get("QnA_no")%></TD>
										<TD align="center"><%=QnA_list.get(i).get("QnA_preface")%></TD>
										<%if((Integer.parseInt(QnA_list.get(i).get("QnA_answer_flag")+""))==0){
											%>
											<TD align="center"><%=QnA_list.get(i).get("QnA_title")%></TD>
										<% }else{
											%>
											<TD align="center"><%=QnA_list.get(i).get("QnA_title")%>  <img src="resources/common/bootstrap/img/answer.png" width="50px" height="30px"></TD>
										<% }%>
										<TD align="center"><%=QnA_list.get(i).get("QnA_writer")%></TD>
										</tr>
								
								<%		
								if(ten==10){
									break;
								}
								ten++;
						
						}}}else{
							for(int i=0;i<QnA_list.size();i++){ %>
								<tr style="cursor:pointer;" onclick="location='/kr/QnA_one_view?QnA_no=<%=QnA_list.get(i).get("QnA_no")%>'">
									<TD align="center"><%=QnA_list.get(i).get("QnA_no")%></TD>
									<TD align="center"><%=QnA_list.get(i).get("QnA_preface")%></TD>
									<%if((Integer.parseInt(QnA_list.get(i).get("QnA_answer_flag")+""))==0){
											%>
											<TD align="center"><%=QnA_list.get(i).get("QnA_title")%></TD>
										<% }else{
											%>
											<TD align="center"><%=QnA_list.get(i).get("QnA_title")%>  <img src="resources/common/bootstrap/img/answer.png" width="50px" height="30px"></TD>
										<% }%>
									<TD align="center"><%=QnA_list.get(i).get("QnA_writer")%></TD>
									</tr>
								<%}} %>						
					</table>
					<br>
					
					<table CELLPADDING="10" ALIGN="center">
					
		                <tr>
		                
		                <%
		                	if(QnAunit==0){
		                		%>
		                			<td><a>1</a></td>
		                		<%
		                	}else{
				                for(int i=0;i<QnAunit+1;i++){
				                	%>
				                <td><a href=/kr/QnA?QnA_page_num=<%=(i+1)*10%>><%=i+1 %></a></td>
				                <%}} %>
		                </tr></table>
					
					<br>
		              <div class="form-group col-xs-12 floating-label-form-group controls">
		                <table CELLPADDING="10" ALIGN="center">
		                <tr>
		                <td><input type="text" class="form-control" placeholder="검색" ></td><td><button type="submit" class="btn btn-primary" id="sendMessageButton">검색</button></td>
		                </tr></table>
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
