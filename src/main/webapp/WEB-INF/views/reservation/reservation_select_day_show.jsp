<%@page import="java.util.Iterator"%>
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


<!-- Bootstrap core CSS     -->
<link
	href="resources/common/quickpoll_bootstrap/assets/css/bootstrap.min.css"
	rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link
	href="resources/common/quickpoll_bootstrap/assets/css/paper-dashboard.css?ver1=1"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="resources/common/quickpoll_bootstrap/assets/css/demo.css"
	rel="stylesheet" />


<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link
	href="resources/common/quickpoll_bootstrap/assets/css/themify-icons.css"
	rel="stylesheet">
	<!-- Custom styles for this template -->
<link href="resources/common/bootstrap/css/clean-blog.min.css"
	rel="stylesheet">
	
	
	<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
	
	<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
	<!-- Custom fonts for this template -->
<link
	href="resources/common/bootstrap/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
	<link
	href="resources/common/bootstrap/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<style type="text/css">
body {
	background-size: cover;
	background-repeat: no-repeat;
}
.row{
	width: 1400px; 
	height: 800px;
	
}

#fullCalendar{
	width: 800px; 
	height: 800px; 
	margin-left: 0px;
	padding: 25px 25px 25px 25px;
	
}
#tb{
	width: 100%; 
	background-color: white;
}

</style>
    
</head>

<body 
	style="background-image: url('resources/common/bootstrap/img/Main.jpg')">
	
	<% Map<String,Map<String, String>> reservation_possible_map=(Map<String,Map<String, String>>)request.getAttribute("reservation_possible_map");
	String select_date=(String)request.getAttribute("select_date");
	System.out.println(select_date);
	int size=0;
	%>
	
	<script type="text/javascript">
		
		var map=new Map();
		
		<%for(String key:reservation_possible_map.keySet()){%>
			var k='<%=key%>';
			var serve_map=new Map();
			<%for(String key2:reservation_possible_map.get(key).keySet()){%>
				var k2='<%=key2%>';
				var value='<%=reservation_possible_map.get(key).get(key2)%>';
				serve_map.set(k2,value);
			<%}%>
			
			map.set(k,serve_map);
		<%}%> 
		
		var a=0;
		
		
 		var date='<%=select_date%>';
    	demo2={
    			showSwal: function(type,time,designer){
    		        if(type == 'input-field'){
    		    		var st=time;
    		    		var et=time;
    		    		var d=designer;
    		            swal({
    		                  title: '원하는 헤어를 고르세요',
    		                  html: '<input type="checkbox" name="cut" id="cut" style="width:30px;height:30px;"><font size="5">커트-1h</font><input type="checkbox" name="dye" id="dye" style="width:30px;height:30px;"><font size="5">염색-2h</font><input type="checkbox" name="pum" id="pum" style="width:30px;height:30px;"><font size="5">펌-2h</font>',
    		                  showCancelButton: true,
    		                  closeOnConfirm: false,
    		                  allowOutsideClick: false
    		                },
    		                function() {    		                	
    		                	if($('#cut').prop('checked')==true){
    		                		var str_plus_one=et.substring(0,2);
    		                		var int_plus_one=parseInt(str_plus_one)+1;
    		                		et=et.replace(str_plus_one,int_plus_one);
    		                	}
    		                	if($('#dye').prop('checked')==true){
    		                		var str_plus_one=et.substring(0,2);
    		                		var int_plus_one=parseInt(str_plus_one)+2;
    		                		et=et.replace(str_plus_one,int_plus_one);
    		                	}
    		                	if($('#pum').prop('checked')==true){
    		                		var str_plus_one=et.substring(0,2);
    		                		var int_plus_one=parseInt(str_plus_one)+2;
    		                		et=et.replace(str_plus_one,int_plus_one);
    		                	}
    		                	
    		                	(map.get(d)).forEach(function (item, key, mapObj) {
    		                		if(key==st){
    		                	    	a=1;
    		                	    }
    		                		if(a==1){
    		                	    	if(item=="불가능"){
    		                	    		demo2.showNotification('top','center');
    		                	    		a=0;
    		                	    	}
    		                	    } 
    		                		if(key==et){
    		                	    	a=0;
    		                	    }    		                		   		                	    
    		                	});
    		                	
    		                })//location.replace("http://localhost:8080/kr/test?cut="+$('#cut').prop('checked')+"&dye="+$('#dye').prop('checked')+"&pum="+$('#pum').prop('checked')+"&date="+date+"&time="+t);
    		        }
    			},
    			showNotification: function(from, align){
    		    	color = 4;
    		    	$.notify({
    		        	
    		        	message: "예약이 불가합니다."

    		        },{
    		            type: type[color],
    		            timer: 10,
    		            placement: {
    		                from: from,
    		                align: align
    		            }
    		        });
    			},
    	}
    </script>
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
	<br><br><br><br><br><br><br><br>
	
	<div class="row">
		<table  CELLPADDING="5" ALIGN="center" >
			<TR id="tb">
				<td><div id="fullCalendar"></div></td>
				<td>
						<%-- <jsp:include page="reservation_select_day_include.jsp"></jsp:include> --%>
	            
	                <div class="row">
	                    <div class="col-lg-6 col-md-12">
	                        <div class="card">
	                            
	                            <div class="content">
	    	                       <div id="acordeon">
	    	                            <div class="panel-group" id="accordion">
	    	                            <ul>
	    	                            	<%for(String str:reservation_possible_map.keySet()){
	    	                            	%>
		    	                            <li>
		    	                                <div class="panel panel-border panel-default">
			    	                                <a data-toggle="collapse" href="#collapse<%=size%>">
			    	                                    <div class="panel-heading">
			    	                                        <h4 class="panel-title">
			    	                                        	<%=str %>
			    	                                        	<i class="ti-angle-down"></i>
			    	                                        </h4>
			    	                                    </div>
			    	                                </a>
			    	                                <div id="collapse<%=size%>" class="panel-collapse collapse">
			    	                                	<div class="panel-body">
			    	                                    	<%for(String time:reservation_possible_map.get(str).keySet()){ 
			    	                                    		if("가능".equals(reservation_possible_map.get(str).get(time))){%>
			    	                                    			<font style="cursor:pointer;" size="3" color="green" onclick="demo2.showSwal('input-field','<%=time%>','<%=str%>')"><%=time %>-<%=reservation_possible_map.get(str).get(time) %></font>&nbsp;
					    	                                    <%}else{%>
			    	                                    			<font size="3" color="red"><%=time %>-<%=reservation_possible_map.get(str).get(time) %></font>&nbsp;
					    	                                    <%} %>
			    	                                    	<%} %>
			    	                                    </div>
			    	                                </div>
		    	                                </div>
	    	                               </li>
	    	                               <%size++;} %>
	    	                                </ul>
	    	                            </div>
	    	                        </div><!--  end acordeon -->
	                            </div>
	                        </div>
	                    </div>
					</div>					
	    				
	    
	    	         </td>
			</TR>
		</table>	          	
	</div>
	
</body>

	<!--   Core JS Files. Extra: PerfectScrollbar + TouchPunch libraries inside jquery-ui.min.js   -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery-ui.min.js" type="text/javascript"></script>
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Forms Validations Plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery.validate.min.js"></script>

	<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
	<script src="resources/common/quickpoll_bootstrap/assets/js/moment.min.js"></script>

	<!--  Date Time Picker Plugin is included in this js file -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-datetimepicker.js"></script>

	<!--  Select Picker Plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-selectpicker.js"></script>

	<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-checkbox-radio-switch-tags.js"></script>

	<!-- Circle Percentage-chart -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery.easypiechart.min.js"></script>

	<!--  Charts Plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-notify.js"></script>

	<!-- Sweet Alert 2 plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/sweetalert2.js"></script>

	<!-- Vector Map plugin -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery-jvectormap.js"></script>

	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js"></script>

	<!-- Wizard Plugin    -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery.bootstrap.wizard.min.js"></script>

	<!--  Bootstrap Table Plugin    -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/bootstrap-table.js"></script>

	<!--  Plugin for DataTables.net  -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/jquery.datatables.js"></script>

	<!--  Full Calendar Plugin    -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/fullcalendar.min.js"></script>

	<!-- Paper Dashboard PRO Core javascript and methods for Demo purpose -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard PRO DEMO methods, don't include it in your project! -->
	<script src="resources/common/quickpoll_bootstrap/assets/js/demo.js?ver1=4"></script>
<!-- Custom scripts for this template -->
	<script src="resources/common/bootstrap/js/clean-blog.min.js"></script>
<script
		src="resources/common/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script type="text/javascript">
    	$(document).ready(function(){
           demo.initFullCalendar();
    	});
	</script>

</html>
