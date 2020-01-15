<%@ page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<link href="https://fonts.googleapis.com/css?family=Kalam:700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>
.coloricon {
	padding: 15px;
	width: 25px;
	height: 25px;
	margin-right: 10px;
	border: 2px solid #BDBDBD;
}

.setting-box {
	margin-top: 50px;
}

#userImg, .coloricon {
	border: 3px solid #fcf9f5;
	box-shadow: 1px 1px 1px 1px #BDBDBD;
}

#userImg:hover, .coloricon:hover {
	border: 3px solid #BDBDBD;
}

#settingToggle, #alarmToggle, #chatToggle, #userToggle {
	padding-left: 1%;
	padding-right: 1%;
}

.whiteColor {
	color: #fff;
}

.whieColor:hover {
	color: #fff;
}

.toggleOption {
	padding-top: 30px;
	background: #336699;
	height: 1185%;
	width: 310px;
	position: absolute;
}

.enter {
	margin-right: 100 display: inline
}

#searchChat {
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 3px solid #326295;
	background-color: rgba(255, 255, 255, 0);
	border-left-width: 0px;
	color: #326295;
}

#searchChatname {
	cursor: pointer;
	float: right;
}

#searchChatname:hover {
	color: #326295;
}

#chatTitle img {
	margin-top: 10px;
	width: 40px;
	height: 40px;
	margin-right: 10px;
}

.media h5 {
	font-size: 15px;
	font-weight: bold;
}

.setting-box {
	margin-top: 20px;
	font-family: 'Noto Sans KR', sans-serif;
}

.custom-menu {
	z-index: 1000;
	position: absolute;
	padding: 2px;
	background-color: #f0f3f7;
	text-align: center;
}

/* alarm shake */
#alarmBtn:hover {
	/* Start the shake animation and make the animation last for 0.5 seconds */
	animation: shake 1s;
	/* When the animation is finished, start again */
	animation-iteration-count: infinite;
}
@keyframes shake  {
	0% { transform: translate(2px, 1px) rotate(0deg) scale(1); }
	10% { transform: translate(-1px, -2px) rotate(-1deg); }
	20% { transform: translate(-3px, 0px) rotate(1deg); }
	30% { transform: translate(0px, 2px) rotate(0deg); }
	40% { transform: translate(1px, -1px) rotate(1deg); }
	50% { transform: translate(-1px, 2px) rotate(-1deg); }
	60% { transform: translate(-3px, 1px) rotate(0deg) scale(1.5); }
	70% { transform: translate(2px, 1px) rotate(-1deg); }
	80% { transform: translate(-1px, -1px) rotate(1deg); }
	90% { transform: translate(2px, 2px) rotate(0deg); }
	100% { transform: translate(1px, -2px) rotate(-1deg) scale(0); }
}

.activity {
	height: 15px;
	width: 15px;
	border-radius: 50%;
	display: inline-block;
	position: absolute;
	border: 3px solid #fff;
	bottom: .4rem;
	right: 0rem;
	padding: 0;
	background-color: #326295; /*#ff763b*/
	left: 30px;
	top: 37px;
}

.activity.off {
	background-color: lightgrey;
}

/*   on off 버튼 */
/* input[type="checkbox"] {
	display: none;
} */

.label__on-off {
	overflow: hidden;
	position: relative;
	display: inline-block;
	width: 44px;
	height: 26px;
	-webkit-border-radius: 13px;
	-moz-border-radius: 13px;
	border-radius: 13px;
	background-color: #ed4956;
	color: #fff;
	font-weight: bold;
	cursor: pointer;
	-webkit-transition: all .3s;
	-moz-transition: all .3s;
	-ms-transition: all .3s;
	-o-transition: all .3s;
	transition: all .3s;
}

.label__on-off>* {
	vertical-align: middle;
	-webkit-transition: all .3s;
	-moz-transition: all .3s;
	-ms-transition: all .3s;
	-o-transition: all .3s;
	transition: all .3s;
	font-size: 14px;
}

.label__on-off .marble {
	position: absolute;
	top: 1px;
	left: 1px;
	display: block;
	width: 24px;
	height: 24px;
	background-color: #fff;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	-webkit-box-shadow: 0 0 10px rgba(0, 0, 0, .3);
	-moz-box-shadow: 0 0 10px rgba(0, 0, 0, .3);
	box-shadow: 0 0 10px rgba(0, 0, 0, .3);
}

.label__on-off .on {
	display: none;
	padding-left: 12px;
}

.label__on-off .off {
	padding-left: 30px;
	line-height: 25px;
}

.input__on-off:checked+.label__on-off {
	background-color: #0bba82;
}

.input__on-off:checked+.label__on-off .on {
	display: inline-block;
}

.input__on-off:checked+.label__on-off .off {
	display: none;
}

.input__on-off:checked+.label__on-off .marble {
	left: 20px;
}
.accordionBody {  
	max-height: 650px; 
	overflow: auto;
}
a:hover{
	color:black;
}
</style>
<script>
	$(document).ready(function() {
		$("#userToggle").hide();
		$("#alarmToggle").hide();
		$("#settingToggle").hide();
		$("#chatToggle").hide();

		$("#userBtn").click(function() {
			$("#alarmToggle").hide();
			$("#settingToggle").hide();
			$("#chatToggle").hide();
			$("#userToggle").animate({
				height : 'toggle'
			});
		});

		$("#chatBtn").click(function() {
			$("#userToggle").hide();
			$("#alarmToggle").hide();
			$("#settingtoggle").hide();
			$("#chatToggle").animate({
				height : 'toggle'
			});
		});

		$("#alarmBtn").click(function() {
			$("#userToggle").hide();
			$("#chatToggle").hide();
			$("#settingToggle").hide();
			$("#alarmToggle").animate({
				height : 'toggle'
			});
		});

		$("#settingBtn").click(function() {
			$("#userToggle").hide();
			$("#chatToggle").hide();
			$("#alarmToggle").hide();
			$("#settingToggle").animate({
				height : 'toggle'
			});
		});	
	 $("#settingBtn").on({
		    mouseover: function (event) {
		    	$("#setIcon").addClass("fa-spin");
		    },
		    mouseleave: function (event) {
		    	$("#setIcon").removeClass("fa-spin");
		    }
		});
		//아코디언 
	   /*  $( "#accordion" ).accordion(); */
	   /*  $(".times").on({
			 $(this).children().css( "display", "none");
			$(this).siblings().css("display","inline-block");
		}); */
	});

function Search(){
	$('.ChatList').empty();   
	var plus = "";
	plus += "<input type='text' id='searchChat' style='width: 75%; height:30px; float:left; margin-top: 10px;'>&emsp; <span style='cursor:pointer;' onclick='Cancle()'><i class='fas fa-times'></i></span>";
	plus += "<a href='#' data-toggle='modal' data-target='#newChat' style='float: right;'>&emsp;<i class='fas fa-comment-medical'></i>&emsp;</a>";
	$('.ChatList').append(plus);
}

function Cancle(){
	$('.ChatList').empty();   
	var plus = "";	
	plus += "<a href='#' data-toggle='modal' data-target='#newChat' style='float: right;'><i class='fas fa-comment-medical'></i>&emsp;</a>";
	plus += "<span id='searchChatname' onclick='Search()'><i class='fas fa-search'></i>&emsp;</span><br>";
	$('.ChatList').append(plus);
}

</script>

<c:set var="member" value="${member}" scope="request"/>
<div class="nav-header" style="background-color: #336699;">
	<div class="brand-logo">
		<a href="Index.do"> 
		<b class="logo-abbr"><img src="resources/images/owl_logo_medium_beige.png" alt=""> </b> 
		<span class="logo-compact"><img src="resources/images/owl_plz_beige.png" alt=""></span> 
		<span class="brand-title"> <img src="resources/images/owl_plz_beige.png" alt=""></span>
		</a>
	</div>
</div>


<div class="header" style="background-color: #336699;">
	<div class="header-content clearfix">

		<div class="nav-control">
			<div class="hamburger">
				<span class="toggle-icon" style="color: #fcf9f5;"><i
					class="icon-menu"></i></span>
			</div>
		</div>

		<div class="header-right">
			<ul class="clearfix">

				<!-- User info  -->
				<li class="icons" style="margin-left: 30px; margin-right: 30px">

					<div class="user-img c-pointer position-relative">
						<!-- <span class="activity active"></span> -->
						<a href="javascript:void(0)" id="userBtn"> 
						<img id="userImgTop" src="upload/${member.profilePic}" onerror="this.src='resources/images/login/profile.png'" height="40" width="40" alt=""></a>
					</div> 
				</li>

				<!-- Chatting -->
				<li class="icons" style="margin-right: 25px">
				<a href="javascript:void(0)" id="chatBtn"> <i class="far fa-comment"></i></a>
				</li>

				<!-- Alram -->
				<li class="icons" style="margin-right: 25px"><a
					href="javascript:void(0)" id="alarmBtn"><i class="far fa-bell"></i>
					<span class="badge badge-pill gradient-2">4</span>
					</a>
				</li>

				<!--  Setting - customizing -->
				<li class="icons" style="margin-right: 15px"><a
					href="javascript:void(0)" id="settingBtn"><i class="fas fa-cog"  id="setIcon"></i></a>
				</li>
			</ul>

			<!-- toggle content Start-->
			<div class="toggleOption " id="userToggle"  style="padding-top: 0px; z-index: 20;">
				<div class="text-center setting-box mt-5">
					<div class="user-img c-pointer position-relative">
					<a href="#" data-toggle="modal" data-target="#myProfileSetModal">
						<img src="upload/${member.profilePic}" onerror="this.src='resources/images/login/profile.png'" class="rounded-circle" alt="" id="userImg" height="100" width="100">
						</a>
					</div>
					<h4 class="mt-3 mb-1 " style="color:white; padding-top: 10px;">${member.name}</h4>
					<p class="m-0 whiteColor">${member.email}</p>
				</div>
				<hr>
				<div class="text-center setting-box">
					<ul>
					<li><a href="Logout.do" class="whiteColor"><i class="icon-key"></i> <span>Logout</span></a></li>
					</ul>
				
				</div>
			</div>
			
			<!-- 채팅 목록 토글 -->
			<div class="toggleOption" id="chatToggle" style="padding-top: 0px; z-index: 20;">
				<div  class="ChatList"> 
					<a href="#" data-toggle="modal" data-target="#newChat" style=" float: right;" class="whiteColor"><i class="fas fa-comment-medical"></i>&emsp;</a>					
					<span class ="whiteColor" id="searchChatname" onclick="Search()"><i class="fas fa-search"></i>&emsp;</span>
				<br>
				</div>
				<hr>
				<div class="setting-box">
					 <ul class="list-group">
                       <li class="list-group-item list-group-item-action flex-column align-items-start"  style="height: 106px;">
                           <div class="d-flex w-100 justify-content-between" id="chatTitle">
                               <div class="media">
                               <img src="resources/images/user/group.png" class="rounded-circle" alt="" id="userImg">
                               <h5 style="margin-top: 18px; color: #ffb1b9">Project 1</h5>
                               </div>
                                <small style="float:right;">AM 12:00</small>
                           </div>
                           <ul>
		                      	<li class="d-flex justify-content-between align-items-center">
		                      			진성씨 시말서 제출하세요.
		                        		<span class="badge badge-primary badge-pill" style="background-color: #ffb1b9">2</span>
		                        </li>
                           </ul>             
                       </li>
                       <li class="list-group-item list-group-item-action flex-column align-items-start"  style="height: 106px;">
                           <div class="d-flex w-100 justify-content-between" id="chatTitle">
                               <div class="media">
                               <img src="resources/images/user/group.png" class="rounded-circle" alt="" id="userImg">
                               <h5 style="margin-top: 18px; color: #ccccff">kanban_iy</h5>
                               </div>
                                <small style="float:right;">2020-01-05</small>
                           </div>
                           <ul>
		                      	<li class="d-flex justify-content-between align-items-center">
		                      			이슈 끝나면 Done으로 이동해주세요.
		                        		<span class="badge badge-primary badge-pill" style="background-color: #ccccff">2</span>
		                        </li>
                           </ul>             
                       </li>	                       					 
                       <li class="list-group-item list-group-item-action flex-column" style="height: 106px;" id="chatroom" >					                   
                           <div class="d-flex w-100 justify-content-between" id="chatTitle">
                               <div class="media">
                               <div class="user-img c-pointer position-relative">
                               <span class="activity"></span>
                               <img src="resources/images/member/4.jpg" class="rounded-circle" alt="" id="userImg">   
                               </div>                            
                               <h5 style="margin-top: 18px;">윤다정</h5>
                               </div>
                                <small style="float:right;">AM 11:11</small>
                           </div>
                           <ul>
		                      	<li class="d-flex justify-content-between align-items-center">
		                      			샐러드 사왔어?
		                        		<span class="badge badge-primary badge-pill">1</span>
		                        </li>
                           </ul>             
                       </li>
                       <li class="list-group-item list-group-item-action flex-column align-items-start" style="height: 106px;">
                           <div class="d-flex w-100 justify-content-between" id="chatTitle">
                               <div class="media">
                               <div class="user-img c-pointer position-relative">
                               <span class="activity"></span>
                               <img src="resources/images/member/8.jpg" class="rounded-circle" alt="" id="userImg">   
                               </div> 
                               <h5 style="margin-top: 18px;">정은아</h5>
                               </div>
                                <small style="float:right;">2020-01-06</small>
                           </div>
                           <ul>
		                      	<li class="d-flex justify-content-between align-items-center">
		                      			언니언니~
		                        		<span class="badge badge-primary badge-pill">5</span>
		                        </li>
                           </ul>             
                       </li>
                       <li class="list-group-item list-group-item-action flex-column align-items-start"  style="height: 106px;">
                           <div class="d-flex w-100 justify-content-between" id="chatTitle">
                               <div class="media">
                               <div class="user-img c-pointer position-relative">
                               <span class="activity off"></span>
                               <img src="resources/images/member/3.jpg" class="rounded-circle" alt="" id="userImg">   
                               </div> 
                               <h5 style="margin-top: 18px;">배인영</h5>
                               </div>
                                <small style="float:right;">2020-01-06</small>
                           </div>
                           <ul>
		                      	<li class="d-flex justify-content-between align-items-center">
		                      			Hey! What's up!
		                        		<span class="badge badge-primary badge-pill">1</span>
		                        </li>
                           </ul>             
                       </li>
                    </ul>
				</div>				
		</div>

		
			<!--  알람 토글  -->
			<div class="toggleOption" id="alarmToggle"  style="padding-top: 0px; z-index: 20;">
				<!--  <div class="setting-box" id="accordion">
					 <ul class="list-group">
					 <h3>공지사항</h3>
					 <div>
                      <li class="list-group-item list-group-item-action flex-column align-items-start" style="line-height:2em;">                 
                       			<span class="mr-2"><i class="far fa-bell"></i></span>[공지사항] 프로젝트 기간이 연장되었습니다. 
                       			<input type="checkbox" id="switch1" name="switch1" class="input__on-off" > 
                       			<label for="switch1" class="label__on-off mt-1" style="float: right;"> <span class="marble"></span> 
                       			<span class="on"></span><span class="off"></span></label> 
                       </li> 
                       </div>
                        <h3>드라이브</h3>
                       <li class="list-group-item list-group-item-action flex-column align-items-start" style="line-height:2em;"> 
                       			<span class="mr-2"><i class="far fa-bell"></i></span>[드라이브] 'file.jpg'파일이 업로드 되었습니다.   
                       			<input type="checkbox" id="switch1" name="switch1" class="input__on-off" > 
                       			<label for="switch1" class="label__on-off mt-1" style="float: right;"> <span class="marble"></span> 
                       			<span class="on"></span><span class="off"></span></label>      
                       </li>
						
						<li class="list-group-item list-group-item-action flex-column align-items-start" style="line-height: 2em;">
							<span class="mr-2"><i class="far fa-bell"></i></span>
							[멘션] 배인영 님이 언급하였습니다.  
							<input type="checkbox" id="switch1" name="switch1" class="input__on-off">
							<label for="switch1" class="label__on-off mt-1" style="float: right; "> 
							<span class="marble"></span> 
							<span class="on"></span>
							<span class="off"></span></label>
						</li>
					</ul>
				</div> -->	 
				<div class="setting-box" >
				        <div class="card">
                            <div class="card-body" style="padding:20px;">
                                <div id="accordion-three" class="accordion">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseOne4" aria-expanded="false" aria-controls="collapseOne4"><i class="fa" aria-hidden="true"></i>공지사항 
                                            </h5>
                                        </div>
                                        <div id="collapseOne4" class="collapse" data-parent="#accordion-three" style="line-height:2em;">
                                            <div class="card-body pt-3 accordionBody">
                                            <div class="mt-2"><span class="mr-1"><i class="far fa-bell fa-lg"></i></span>
                                            <span class="badge badge-primary badge-pill mr-1" style="background-color: #ccccff; font-size:13px; color: black;">구매계획</span>
                                            	프로젝트 기간이 연장되었습니다. <span class="ml-1" ><i class="fas fa-times-circle" style="font-size: 1.2em"></i></span>
                                            </div>
                                           
                                            <div class="mt-2">
                                            <span class="mr-1"><i class="far fa-bell fa-lg"></i></span>
                                            <span class="badge badge-primary badge-pill mr-1" style="background-color: #ffb1b9; font-size:13px; color: black">판매전략 프로젝트</span>다음주는 대청소 기간입니다.
                                            <span class="ml-1" ><i class="fas fa-times-circle" style="font-size: 1.2em"></i></span>
                                            </div>
                                           
                                              <div class="mt-2">
                                            <span class="mr-1"><i class="far fa-bell fa-lg"></i></span>
                                            <span class="badge badge-primary badge-pill mr-1" style="background-color: #326295; font-size:13px;">후기관리</span>설날 잘 보내시길 바랍니다.
                                            <span class="ml-1" ><i class="fas fa-times-circle" style="font-size: 1.2em"></i></span>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseTwo5" aria-expanded="false" aria-controls="collapseTwo5"><i class="fa" aria-hidden="true"></i>드라이브</h5>
                                        </div>
                                        <div id="collapseTwo5" class="collapse" data-parent="#accordion-three" style="line-height:2em;">
                                            <div class="card-body pt-3 accordionBody">
                                            <div class="mt-2"><span class="mr-1"><i class="far fa-bell fa-lg"></i></span>
                                            <span class="badge badge-primary badge-pill mr-1" style="background-color: #ccccff; font-size:13px; color: black;">구매계획</span>
                                            	'file.jpg'파일이 업로드 되었습니다. <span class="ml-1" ><i class="fas fa-times-circle" style="font-size: 1.2em"></i></span>
                                            </div>
                                            
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseThree6" aria-expanded="false" aria-controls="collapseThree6"><i class="fa" aria-hidden="true"></i>이슈</h5>
                                        </div>
                                        <div id="collapseThree6" class="collapse" data-parent="#accordion-three" style="line-height:2em;">
                                            <div class="card-body pt-3 accordionBody">
                                            <div class="mt-2 col-md-12"><span class="mr-1"><i class="far fa-bell fa-lg"></i></span>
                                            <span class="badge badge-primary badge-pill mr-1" style="background-color: #ccccff; font-size:13px; color: black;">구매계획</span>
                                            	<a href="#">'[view]로그인 view 구현' 이슈가 등록되었습니다. dddddddddddddd</a> <span class="ml-1" ><a href="#"><i class="fas fa-times-circle" style="font-size: 1.2em"></i></a></span>
                                            </div>
                                          
                                            <div class="but r col-md-12" id="but-2" style="float:right; top: 0px; right: 0px; height:28px;width:45px;">
					          				<input type="checkbox" class="chbox" name="chbox">
					         			 	<div class="knobs" ></div>
					          				<div class="layer"></div>
					          				</div>
                                           
                                            <div class="mt-2"><span class="mr-1"><i class="far fa-bell fa-lg"></i></span>
                                             <span class="badge badge-primary badge-pill mr-1" style="background-color: red; font-size:13px; color: black;">PM</span>
                                            <span class="badge badge-primary badge-pill mr-1" style="background-color: #ccccff; font-size:13px; color: black;">구매계획</span>
                                            	<a href="#">'칸반보드 view 구현'이슈가 승인 요청을 있습니다.</a> <span class="ml-1"><a href="#"><i class="fas fa-times-circle" style="font-size: 1.2em"></i></a></span>
                                             </div>
                                             	<input type="checkbox" id="switch1" name="switch1" class="input__on-off" > 
                       							<label for="switch1" class="label__on-off mt-1" style="float: right;"> <span class="marble"></span> 
                       							<span class="on"></span><span class="off"></span></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseThree7" aria-expanded="false" aria-controls="collapseThree7"><i class="fa" aria-hidden="true"></i>멘션</h5>
                                        </div>
                                        <div id="collapseThree7" class="collapse" data-parent="#accordion-three" style="line-height:2em;">
                                            <div class="card-body pt-3 accordionBody">
                                             <div class="mt-2"><span class="mr-1"><i class="far fa-bell fa-lg"></i></span>
                                            <span class="badge badge-primary badge-pill mr-1" style="background-color: #ccccff; font-size:13px; color: black;">구매계획</span>
                                            	배인영님이 언급하였습니다. 
                                            	<span class="ml-1" ><i class="fas fa-times-circle" style="font-size: 1.2em"></i></span>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
			<!--  ex 2222 -->
			<!-- <div class="dropdown-notfication">
                               
			<div class="dropdown-content-body">
                                    <ul>
                                        <li style="line-height: 1.5em;">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="far fa-bell"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">공지사항</h6>
                                                   		프로젝트 기간이 연장되었습니다.
                                                    <input type="checkbox" id="switch1" name="switch1" class="input__on-off" style="float: right;" > 
                       								<label for="switch1" class="label__on-off mt-1" style="float: right;"> <span class="marble"></span> 
                       								<span class="on"></span><span class="off"></span></label> 
                                                </div>
                                        </li>
                                        <li style="line-height: 1.5em;">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="far fa-bell"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">드라이브</h6>
                                                   	'file.jpg'파일이 업로드 되었습니다.
                                                    <input type="checkbox" id="switch1" name="switch1" class="input__on-off" style="float: right;" > 
                       								<label for="switch1" class="label__on-off mt-1" style="float: right;"> <span class="marble"></span> 
                       								<span class="on"></span><span class="off"></span></label> 
                                                </div>
                                        </li>
                                        <li>
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="far fa-bell"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">이슈</h6>
                                                    	로그인 view 구현' 이슈가 등록되었습니다.
                                                   <input type="checkbox" id="switch1" name="switch1" class="input__on-off" style="float: right;" > 
                       								<label for="switch1" class="label__on-off mt-1" style="float: right;"> <span class="marble"></span> 
                       								<span class="on"></span><span class="off"></span></label>
                                                </div>
                                        </li>
                                    </ul>
                                </div>
							</div> -->
			<!--  끝 div -->
			</div>




			<div class="toggleOption " id="settingToggle"  style="padding-top: 0px; z-index: 20;">
				<div class="text-center setting-box  mt-5">
					<h5 class="mt-3 mb-1 whiteColor">SIDEBAR BACKGROUND</h5>
					<hr>
					<span class="badge coloricon c-pointer" style="background-color: white; display: inline-block;"></span>
					<span class="badge coloricon c-pointer" style="background-color: gray; display: inline-block;"></span>


				</div>
				<div class="text-center setting-box ">
					<h5 class="mt-3 mb-1 whiteColor">SIDEBAR ACTIVE COLOR</h5>
					<hr>
					<span class="badge coloricon c-pointer" style="background-color: white; display: inline-block;"></span>
					<span class="badge coloricon c-pointer" style="background-color: #f7c9c9;display: inline-block;"></span>
					<span class="badge coloricon c-pointer" style="background-color: #e0d8cd; display: inline-block;"></span>
					<span class="badge coloricon c-pointer" style="background-color: #91a8d1; display: inline-block;"></span>
					<span class="badge coloricon c-pointer" style="background-color: #c4d7a4; display: inline-block;"></span>
				</div>

  <!-- 처음에는 기본된 폰트로 둘까? -->
				<div class="text-center setting-box">
					<h5 class="mt-3 mb-1 whiteColor">SELECT FONT</h5>
					<hr>
					<div class="col-lg-12">
						<select class="form-control" id="val-skill" name="val-skill">
							<option value="">Please select</option>
							<option value="주아체">배달의민족 - 주아체</option>
							<option value="도현체">배달의민족 - 도현체</option>
							<option value="맑은고딕">맑은고딕</option>
							<option value="궁서체">궁서체</option>
						</select>
					</div>
				</div>
				<!-- toggle content End-->

			</div>
		</div>
	</div>
</div>



	<!-- MyProfile Modal -->
	<jsp:include page="../member/myProfileSetting.jsp" />
	<jsp:include page="../chat/newChat.jsp" />
