<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.Random"%>
<%@page import="model.Reservation"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="resources/common/quickpoll_bootstrap/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="resources/common/quickpoll_bootstrap/assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Paper Dashboard PRO by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

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
		
		<style type="text/css">
		.col-md-6 {
		    position: relative;
		    top: 150px;
		    left: 350px;
		    
		}
		#loginFormValidation{
			position: relative;
			width: 500px;
			height: 500px;
		
		}
		.text-center{
			position: absolute;
			top: 10px;
		    left: 130px;
		}
		.content{
			position: relative;
		}
		.form-group{
			top: 10px;
		    left: 130px
		}
		.gun{
			font-size: 300%;
		}
		.my_margin{
			margin-bottom: 23px;
		}
		.gun2{
			font-size: 200%;
		}
		.com{
			position: absolute;
			
			font-size: 200%;
		}
		.kaka{
			position: absolute;
			left: 150px;
			font-size: 200%;
			background-color: #FFFF00;
			color:#61380B;
		}
		.naver{
			position: absolute;
			left: 300px;
			font-size: 200%;
			background-color: #00FF00;
		}
		.form-control{
			
			font-size:200% ;
		}
		
		</style>
		 <script type="text/javascript">
            function setPhoneNumber(val) {
                var numList = val.split("-");
                document.smsForm.sphone1.value = numList[0];
                document.smsForm.sphone2.value = numList[1];
	            if(numList[2] != undefined){
	                    document.smsForm.sphone3.value = numList[2];
	        	}
            }

            function loadJSON() {
                var data_file = "/calljson.jsp";
                var http_request = new XMLHttpRequest();
                try {
                    // Opera 8.0+, Firefox, Chrome, Safari
                    http_request = new XMLHttpRequest();
                } catch (e) {
                    // Internet Explorer Browsers
                    try {
                        http_request = new ActiveXObject("Msxml2.XMLHTTP");

                    } catch (e) {

                        try {
                            http_request = new ActiveXObject("Microsoft.XMLHTTP");
                        } catch (e) {
                            // Eror
                            alert("지원하지 않는브라우저!");
                            return false;
                        }

                    }
                }
                http_request.onreadystatechange = function() {
                    if (http_request.readyState == 4) {
                        // Javascript function JSON.parse to parse JSON data
                        var jsonObj = JSON.parse(http_request.responseText);
                        if (jsonObj['result'] == "Success") {
                            var aList = jsonObj['list'];
                            var selectHtml = "<select name=\"sendPhone\" onchange=\"setPhoneNumber(this.value)\">";
                            selectHtml += "<option value='' selected>발신번호를 선택해주세요</option>";
                            for (var i = 0; i < aList.length; i++) {
                                selectHtml += "<option value=\"" + aList[i] + "\">";
                                selectHtml += aList[i];
                                selectHtml += "</option>";
                            }
                            selectHtml += "</select>";
                            document.getElementById("sendPhoneList").innerHTML = selectHtml;
                        }
                    }
                }

                http_request.open("GET", data_file, true);
                http_request.send();
            }
        </script>
</head>
	<%
			Reservation reservation=(Reservation)request.getAttribute("Reservation");
			Gson gson=new Gson();
			String json_reservation=gson.toJson(reservation);
			json_reservation=json_reservation.replaceAll("\"", "'");
			Random random=new Random();
			String certification_number="인증번호  ["+(random.nextInt(9000)+1000)+"]";			
	%>
<body class="masthead"
	style="background-image: url('resources/common/bootstrap/img/Main.jpg')" onload="loadJSON()">
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
	
	                    <div class="col-md-6">
	                        <div class="card">
	                            <div id="loginFormValidation">
	                                <div class="header text-center my_margin">
										<h4 class="title gun">
											고객 정보 입력
										</h4>
									</div>
	                                <div class="content">
	                                    <div class="form-group my_marqgin">
	                                        <label class="gun">고객 이름 <star>*</star></label><br/>
		                                        <input  class="form-control"
		                                               name="name"
		                                               type="text"
		                                               required="true"
		                                               size="100"
												/>
	                                    </div>
	                                    <div class="form-group my_margin">
		                                    <form method="post" name="smsForm22" action="sms">
		                                    	
		                                        <label class="gun">고객 번호 <star>*</star></label><br/>
			                                        <input name="rphone"
			                                               type="text"
			                                                class="form-control"
			                                               required="true"
			                                               placeholder="010-0000-0000 '-'를 다 입력해주세요"
			                                               size="100" 
			                                               height="80px"
													/>												
												<input type="hidden" name="action" value="go">
												<input type="submit" class="gun2" value="인증요청">
												<input type="hidden" name="msg" value="<%=certification_number%>">
												<input type="hidden" name="json_reservation" value="<%=json_reservation%>">
												<input type="hidden" name="smsType" value="S">
												<input type="hidden" name="sphone1" value="010">
												<input type="hidden" name="sphone2" value="4101">
												<input type="hidden" name="sphone3" value="9304">
											</form>
	                                    </div>
	                                
		                                <div class="form-group my_margin">								
											<button  class="btn btn-info btn-fill btn-wd com" >예약하기</button>
											<button  class="btn btn-info btn-wd kaka">kakao</button>
											<button  class="btn btn-info btn-wd naver" >naver</button>	
										</div>	
										</div>									
	                            </div>
	                        </div>
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
	<script src="resources/common/quickpoll_bootstrap/assets/js/demo.js?ver1=2"></script>
<!-- Custom scripts for this template -->
	<script src="resources/common/bootstrap/js/clean-blog.min.js"></script>
<script
		src="resources/common/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script type="text/javascript">
        $().ready(function(){
			$('#registerFormValidation').validate();
            $('#loginFormValidation').validate();
            $('#allInputsFormValidation').validate();
        });
    </script>

</html>
