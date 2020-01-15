<%@ page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
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

	});
</script>
<style>

.coloricon {
	padding: 15px;
	width: 25px;
	height: 25px;
	margin-right: 10px;
	border: 2px solid #BDBDBD;
	border-radius: 5px;
}


.whiteColor {
	color: #fff;
}

.whieColor:hover {
	color: #fff;
}


.setting-box {
	margin-top: 20px;
	font-family: 'Noto Sans KR', sans-serif;
}


.toggleOption {
margin-right:0px;
 	margin-top:415px;
	background: #336699;
	height: 100%;
	width: 310px;
	position: fixed;
	right:0;
}


.chat_list-group-item {
  position: relative;
  display: block;
  padding: 0.75rem 1.25rem;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid rgba(0, 0, 0, 0.125); 
  border-top-left-radius: 0.25rem;
  border-top-right-radius: 0.25rem;

  
  }


.chat_list-group-item-action {
  width: 100%;
  color: #495057;
  text-align: inherit; }

.chat_img {
	width: 42px;
	height: 42px;
	border: 3px solid #fcf9f5;
	box-shadow: 1px 1px 1px 1px #BDBDBD;
	margin-top : 10px;
	margin-right: 10px;
}

.media {
  display: flex;
  align-items: flex-start; }
	
	
.h5{
    margin-bottom: 0.5rem;
    font-family: inherit;
    font-weight: 700;
    line-height: 1.2;
    color: inherit;
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
	animation: shake 3s;
	/* When the animation is finished, start again */
	animation-iteration-count: infinite;
}
</style>


<header class="topbar" data-navbarbg="skin5">
    <nav class="navbar top-navbar navbar-expand-md navbar-dark">
        <div class="navbar-header" data-logobg="skin5">
            <!-- This is for the sidebar toggle which is visible on mobile only -->
            <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
            <!-- ============================================================== -->
            <!-- Logo -->
            <!-- ============================================================== -->
            <a class="navbar-brand" href="index.html">
                <!-- Logo icon -->
                <b class="logo-icon p-l-10">
                    <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                    <!-- Dark Logo icon -->
                    <img src="resources/assets/images/logo-icon.png" alt="homepage" class="light-logo" />
                   
                </b>
                <!--End Logo icon -->
                 <!-- Logo text -->
                <span class="logo-text">
                     <!-- dark Logo text -->
                     <img src="resources/assets/images/logo-text.png" alt="homepage" class="light-logo" />
                    
                </span>
                <!-- Logo icon -->
                <!-- <b class="logo-icon"> -->
                    <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                    <!-- Dark Logo icon -->
                    <!-- <img src="../../assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->
                    
                <!-- </b> -->
                <!--End Logo icon -->
            </a>
            <!-- ============================================================== -->
            <!-- End Logo -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Toggle which is visible on mobile only -->
            <!-- ============================================================== -->
            <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
        </div>
        <!-- ============================================================== -->
        <!-- End Logo -->
        <!-- ============================================================== -->
        <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
            <!-- ============================================================== -->
            <!-- toggle and nav items -->
            <!-- ============================================================== -->
            <!-- Hamburger Icon -->
            <ul class="navbar-nav float-left mr-auto">   
                <li class="nav-item d-none d-md-block">
                	<a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar">
                		<i class="mdi mdi-menu font-24"></i>
                	</a>
                </li>
            </ul>
            
            <!-- ============================================================== -->
            <!-- Right side toggle and nav items -->
            <!-- ============================================================== -->
            <ul class="navbar-nav float-right">

                <!-- User profile and search -->
                <!-- ============================================================== -->
                <li class="nav-item">
                <div class="user-img c-pointer"> <!-- 빼도됨 -->
                    <a class="nav-link text-muted waves-effect waves-dark pro-pic" href="javascript:void(0)" id="userBtn">
                    	<img id="userImgTop" src="upload/${member.profilePic}" onerror="this.src='resources/images/login/profile.png'" height="40" width="40" alt="">
                    </a>
                </div>
                </li>
                
                  <!-- Chatting Icon -->
                 <li class="nav-item ">
                  <a class="nav-link waves-effect waves-dark" href="javascript:void(0)" id="chatBtn"> 
                   	 	<i class="far fa-comment fa-lg"></i>
                    </a>
                </li>
                
                <!-- Alarm Icon -->
                <li class="nav-item ">
                    <a class="nav-link waves-effect waves-dark" href="javascript:void(0)" id="alarmBtn"> 
                    	<i class="far fa-bell fa-lg"></i>
                    </a>
                </li>
                
                <!-- Setting Icon -->
                 <li class="nav-item ">
                    <a class="nav-link waves-effect waves-dark" href="javascript:void(0)" id="settingBtn"> 
                    	<i class="fas fa-cog fa-lg" id="setIcon"></i>
                    </a>
                </li>
            </ul>
            
            
            <!-- toggle content Start-->
            <!-- user toggle  -->
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
                       <li class="chat_list-group-item chat_list-group-item-action flex-column align-items-start"  style="height: 106px;">
                           <div class="d-flex w-100 justify-content-between" id="chatTitle">
                               <div class="media">
                               <img src="resources/images/user/group.png" class="rounded-circle chat_img" alt="" id="userImg">
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
						<li class="chat_list-group-item chat_list-group-item-action flex-column align-items-start"  style="height: 106px;">
                           <div class="d-flex w-100 justify-content-between" id="chatTitle">
                               <div class="media">
                               <img src="resources/images/user/group.png" class="rounded-circle chat_img" alt="" id="userImg">
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
                       <li class="chat_list-group-item chat_list-group-item-action flex-column" style="height: 106px;" id="chatroom" >					                   
                           <div class="d-flex w-100 justify-content-between" id="chatTitle">
                               <div class="media">
                               <div class="user-img c-pointer position-relative">
                               <span class="activity"></span>
                               <img src="resources/images/member/4.jpg" class="rounded-circle chat_img" alt="" id="userImg">   
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
					</ul> -->
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
			</div><!-- toggle content End-->
			
			
        </div>
        
    </nav>
</header>



	<!-- MyProfile Modal -->
	<jsp:include page="../member/myProfileSetting.jsp" />
	<jsp:include page="../chat/newChat.jsp" />
