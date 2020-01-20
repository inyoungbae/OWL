<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 여기는 칸반 jsp -->
<style>
.assigneetitle {
	margin-left: 5px;
	font-weight: bold;
	font-size: 13px;
}

.assignee {
	font-family: "Nunito Sans", sans-serif;
	font-size: 13px;
	font-weight: 500;
}

.badgeIcon {
	display: inline-block;
	font-size: small;
	font-weight: bold;
	padding: 3px;
	color: black;
	margin-right: 7px;
	border-radius: 2px;
}

.badgeIcon2 {
	display: inline-block;
	background-color: #EC6550;
	font-size: small;
	font-weight: bold;
	padding: 3px;
	color: black;
	margin-right: 7px;
	border-radius: 2px;
}

.floatRight {
	float: right;
	color: #326295;
}

.floatRight:hover {
	color: #326295;
}

.issuePiece:hover {
	box-shadow: 1.5px 1.5px 1.5px 1.5px #B4B1B1;
}

.issueTitle {
	font-family: "Nunito Sans", sans-serif;
	font-size: 16px;
	font-weight: 500;
}

.issuePiece {
	border: 2px solid #eeee;
	background-color: #fff;
	margin: 5px 10px 10px 10px; 
	padding: 10px 15px 15px 15px;
	font-size: 1.2em;
	width: 280px;
	height: 80px;
	border-radius: 3px;
	cursor: move;
}

.columnBody {
	border: 2px solid #e9e9e9;
	width: 310px;
	min-height: 20px;
	max-height: 550px;
	list-style-type: none;
	margin: 0;
	padding: 5px 0 0 0;
	float: left;
	margin: 10px;
	border-radius: 3px;
	overflow-y: auto;
	background-color: #e9e9e9;
}

.columnBody:hover {
	border: 2px solid #DAD5D0;
}

.columnTitle {
	border: 4px solid #fff;
	background-color: #fff;
	height: 50px;
	margin-left: 20px;
	margin-right: 20px;
	padding-top: 12px;
	font-weight: 400;
	border-radius: 5px;
	border-bottom-color: #F9AFA4;
}

#kanbanArea {
	height: 600px;
	overflow-y: scroll;
 	display: flex;
	flex-direction: row;
	flex-wrap: nowarp;
	flex-flow: row;
}


.cursor_pointer {
	cursor: pointer;
}

.leftdoor {
	background-color: #e9e9e9;
	margin-top: 20px;
	border : 1px solid #CBD7E3;
}

.leftdoorheader {
	padding : 12px 20px 12px 20px;
}
</style>
<script>
/* 	function addKanbanIssue(colIdx,obj){
	 let issue = '<li class="issuePiece">'
			+		'<div class="dropdown">'
			+			'<label> <span class="badgeIcon float-left" style="background-color: '+ obj.labelColor+'">' + obj.labelName + '</span>'
			+			'<span class="issueTitle">' + obj.issueTitle + '</span>'
			+			'</label>'
			+			'<a href="javascript:void(0)" data-toggle="dropdown" id="dropdownIssueButton" aria-haspopup="true" aria-expanded="false" style="float: right">' 
			+			'<i class="fas fa-ellipsis-v fa-sm"></i></a>'
			+			'<div class="dropdown-menu" aria-labelledby="dropdownIssueButton">'
			+				'<ul class="list-style-none">'
			+					'<li class="pl-3"><a href="#editIssueModal" data-toggle="modal">Edit Issue</a></li>'
			+					'<li class="pl-3"><a href="#">Remove Issue</a></li>'
			+				'</ul>'
			+			'</div>'
			+		'</div>'
			+		'<div>'
			+			'<label>'
			+			'<span class="assigneetitle">'
			+			'<i class="fas fa-user-check"></i>&nbsp; Assignee</span> <span class="assignee">' + obj.assigned + '</span>'
			+			'</label>'
			+		'</div>'
			+	'</li>';
	
		$("#"+colIdx+"Column > .columnBody").append(issue);
	}

	function addColumn(obj){
		console.log("addColumn :" + obj.colIdx);
		let column = '<div class="columnSection" id="'+ obj.colIdx +'Column">'
					+ '<div class="columnTitle text-center mt-2 dropdown">'
					+ '<h4>' + obj.colname
					+ '<a href="javascript:void(0)" data-toggle="dropdown" id = "dropdownColBtn" aria-haspopup="true" aria-expanded="false" style="float: right">' 
					+ '<i class="fas fa-ellipsis-v fa-sm"></i></a>'
					+ '<div class="dropdown-menu" aria-labelledby="dropdownColBtn">'
					+				'<ul class="list-style-none">'
					+	'<li class="pl-3"><a href="#editColumnModal" data-toggle="modal" '
					+    'data-updatecol-id="' + obj.colIdx +'" data-upcolname-id ="'+ obj.colname + '"'   
					+   '>Edit Column</a></li>'
					+					'<li class="pl-3"><a href="#">Remove Column</a></li>'
					+				'</ul>'
					+			'</div>'
					+		'</h4>'
					+	'</div>'
					+	'<ul class="connectedSortable sortableCol columnBody cursor">'
					+	'</ul>'
					+ '</div>';

		$('#kanbanArea').append(column);
	}
    function setKanbanData() {
        console.log("in setKanbanData");
        $.ajax({
			 url : 'GetColumn.do',
			 data : {'projectIdx' :  ${project.projectIdx} },
			 success : function(data) {
				//console.log(data);   //projectIdx, issueTitle, assigned, labelName, labelColor, colIdx, colname
				$.each(data,function(index,obj) {
					if($('#'+obj.colIdx+'Column').length > 0) {// 칼럼 박스가 존재할때
						 addKanbanIssue(obj.colIdx, obj); 
	   					}
					else{ // 칼럼 박스가 존재하지 않을때
						 addColumn(obj);
	   					addKanbanIssue(obj.colIdx, obj); 
					}
				});
				$( ".sortableCol").sortable({
			        connectWith: ".connectedSortable",
			        dropOnEmpty: true       
			     }).disableSelection();
			},
			 error : function() {
				console.log("getColum.do error");
			}
		}); 
    } */
  $(function(){

			let selectoption = '<option value="">Select</option>';
			 	
	//프로젝트 내 라벨 리스트 출력 
	  $.ajax({
			url : 'GetLabelList.do',
			data : {'projectIdx' : ${project.projectIdx}},
			success : function(data) {
				console.log("Showlabel success");
				console.log(data);
				$('#labelList').empty();
				$('#labelIdx').empty();

				
				let lablist = ""; //Make 라벨 부분에서 라벨 목록 보여줄 것 
				let lblist = ""; //add issue에 select box에 보여줄 것 
				
				 $.each(data,function(index, obj) {
				

					lablist +=  '<div class="row labelList" id="'+obj.labelIdx+'">';
					lablist +=  '<div class="col-lg-8">';
					lablist +=  '<span class="badgeIconinList" style="background-color: '+obj.labelColor+'">'+obj.labelName+'</span>';
					lablist +=  '</div>';
					lablist +=  '<div class="col-lg-2">';
					lablist +=  '<button class="btn-link link-gray">Edit</button>';
					lablist +=  '</div>'
					lablist +=  '<div class="col-lg-2">';
					lablist +=  '<button  class="btn-link link-gray">Delete</button>';
					lablist +=  '</div></div><hr>';

					lblist += '<option value="'+obj.labelIdx+'">'+obj.labelName+'</option>'
					
					 });

					$('#labelList').append(lablist);

					$('#labelIdx').append(selectoption);
					$('#labelIdx').append(lblist);


					 
			},error : function() {
				console.log("Showlabel error");
			}
		
			});
		//칼럼 select  

    	//칸반내에서 움직일 수 있게 만들어 주는 function
        function sortableFn (columnidx)  {
            var value ='#' + columnidx;
             $( value ).sortable({
                 connectWith: ".connectedSortable",
                 dropOnEmpty: true        
               }).disableSelection();
             } 

        
         $("#openIssueBtn").click(function() {
            $("#openIssue").removeClass("d-none");
     		$("#closeIssue").hide();
     		$("#openIssue").show();
          });
         
         $("#closeIssueBtn").click(function() {
         	$("#closeIssue").removeClass("d-none");
     		$("#openIssue").hide();
     		$("#closeIssue").show();
          });
	
        

         
	$("#InsertColumnBtn").on("click", function () {	

		console.log("InsertColumnBtn in");
			$.ajax({
				url : 'InsertColumn.do',
				data : {'projectIdx' : ${project.projectIdx}, 'colname' : $('#colname').val()},
				success : function(columnidx) {
					console.log(columnidx);
					console.log(typeof(columnidx));
					if(columnidx > 0) {
		        		 
		        		 let colnm = $('#colname').val();
		        
		        		addColumn(columnidx, colnm);

		        		$('#addColumnModal').modal("hide");
		        		$('#colname').val("");
					}else {
						errorAlert("Column 추가 실패");
					}
				},
				error : function(e) {
		        	errorAlert("Column 추가 error");
					}
				});
	});


	
	$("#addLabelBtn").on("click", function () {	
		
		console.log("addLabelBtn in");
		console.log($('#labelcolor').val());
		console.log($('#labelname').val());

		let lbcolor = $('#labelcolor').val();
		let lbname = $('#labelname').val();
			$.ajax({
				url : 'InsertLabel.do',
				data : {'projectIdx' : ${project.projectIdx}, 'labelColor' : $('#labelcolor').val(), 'labelName' : $('#labelname').val()},
				success : function(data) {
					console.log(data);  // 라벨번호 

				let labelpiece = "";
					labelpiece +=  '<div class="row labelList" id="'+data+'">';
					labelpiece +=  '<div class="col-lg-8">';
					labelpiece +=  '<span class="badgeIconinList" style="background-color: '+lbcolor+'">'+lbname+'</span>';
					labelpiece +=  '</div>';
					labelpiece +=  '<div class="col-lg-2">';
					labelpiece +=  '<button class="btn-link link-gray">Edit</button>';
					labelpiece +=  '</div>'
					labelpiece +=  '<div class="col-lg-2">';
					labelpiece +=  '<button class="btn-link link-gray">Delete</button>';
					labelpiece +=  '</div></div><hr>';
						
				$('#labelList').append(labelpiece);
					
				},
				error : function(e) {
		        	errorAlert("label 추가 error");
				}
			});
		});
/* 	let editColIdx="";
	let editColname="";
    $('#editColumnModal').on('show.bs.modal', function(event) {          
    	editColIdx = $(event.relatedTarget).data('updatecol-id');
    	editColname = $(event.relatedTarget).data('upcolname-id');
    	console.log("에딧 모달");
    	console.log(editColIdx);
    	console.log(editColname);
       /* $(".modal-body").prepend("<b>[ " + updateCol +" ]</b>");
       $("#deletebtn").attr("href","UpdateColumn.do?colIdx=" + updateCol); 
    }); */
    $("#editColumnBtn").click(function() {
        $.ajax({
        	url : 'UpdateColumn.do',
        	data : { 'colname' : $("#editcolName").val(),'projectIdx' : ${project.projectIdx},'colIdx' :  $("#editcolIdx").val()}, 
        	success : function(data) {
            	console.log("업데이트 칼럼 성공 ");
            	//console.log(data);
            	console.log($("#" + data + "Column"));
            	$("#" + data + "Column > h4").html($("#editcolName").val());
        		//$("#"+colIdx+"Column > .columnBody").append(issue);
            	$('#editColumnModal').modal('hide');
            },
            error : function() {
            	errorAlert("칼럼 수정 error");
            }
        });
    });
});
  </script>

<div id="totalbody" class="container-fluid mt-3">
	<div class="row">
		<div class="col-8" style="margin-left: 30px;">

			<a href="#" data-toggle="modal" data-target="#addIssueModal">
				<button id="addIssuebtn" class="btn btn-primary">
					<i class="fas fa-italic"></i>&nbsp;New Issue
				</button>
			</a> 
			
			<a href="#" data-toggle="modal" data-target="#addColumnModal">
				<button class="btn btn-primary">
					<i class="fas fa-columns"></i>&nbsp;New Column
				</button>
			</a>

			<button id="openIssueBtn" class="btn btn-primary">
				<i class="fas fa-columns"></i>&nbsp;Open Issue
			</button>
			
			
			<button id="closeIssueBtn" class="btn btn-primary">
				<i class="fas fa-columns"></i>&nbsp;Close Issue
			</button>

		</div>
		<div class="col-2">
			<a href="#" data-toggle="modal" data-target="#addLabelModal">
				<button class="btn btn-primary">
					<i class="fas fa-tag"></i>&nbsp;Make Label
				</button>
			</a>
		</div>
	</div>

	<div class="row" id="kanbanArea">
		<!--  open issue -->
		<div class="columnSection leftdoor d-none" id="openIssue">
			<div class="text-center mt-2  leftdoorheader">
				<h4> Open Issue
				<span class="float-right"><i class="fas fa-times cursor_pointer" onclick="closeFn()"></i></span>
				</h4>
			</div>
			<ul class="connectedSortable columnBody sortableCol">
				<!-- <li class="issuePiece d-none">Item 1</li> -->
				<li class="issuePiece"></li>
			</ul>
		</div>
		<!--  close issue -->
		<div class="columnSection d-none leftdoor "  id="closeIssue">
			<div class="text-center mt-2 leftdoorheader">
				<h4>
					Close Issue<span class="float-right">
					<i class="fas fa-times cursor_pointer" onclick="closeFn()"></i></span>
				</h4>
			</div>
			<ul class="connectedSortable columnBody sortableCol">
				<li class="issuePiece"></li>
			</ul>
		</div>
		<!-- 칼럼 -->
<!-- 		<div class="columnSection">
			<div class="columnTitle text-center mt-2 dropdown">
				<h4>Undefined section
					<a href="javascript:void(0)" data-toggle="dropdown" id="dropdownColBtn" aria-haspopup="true" aria-expanded="false" style="float: right"> 
					<i class="fas fa-ellipsis-v fa-sm"></i></a>
					
					<div class="dropdown-menu" aria-labelledby="dropdownColBtn">
						<ul class="list-style-none">
							<li class="pl-3"><a href="#editColumnModal" data-toggle="modal">Edit Column</a></li>
							<li class="pl-3"><a href="#">Remove Column</a></li>
						</ul>
					</div>
				</h4>
			</div>

			<ul id="sortable000" class="connectedSortable columnBody cursor">
				<li class="issuePiece d-none">Item 1</li>
				무조건 있어야함!!!
				<li class="issuePiece">
					<div class="dropdown">
						<label> <span class="badgeIcon float-left">Dev</span> 
						<span class="issueTitle">Drive : Development</span>
						</label> 
						<a href="javascript:void(0)" data-toggle="dropdown" id="dropdownIssueButton" aria-haspopup="true" aria-expanded="false" style="float: right"> 
						<i class="fas fa-ellipsis-v fa-sm"></i></a>
						<div class="dropdown-menu" aria-labelledby="dropdownIssueButton">
							<ul class="list-style-none">
								<li class="pl-3"><a href="#editIssueModal"
									data-toggle="modal">Edit Issue</a></li>
								<li class="pl-3"><a href="#">Remove Issue</a></li>
							</ul>
						</div>
					</div>
					<div>
						<label> 
						<span class="assigneetitle">
						<i class="fas fa-user-check"></i>&nbsp; Assignee</span> <span
							class="assignee">Chloe</span>
						</label>
					</div>
				</li>
			</ul>
		</div> -->
		<!-- 끝 -->
	</div>
</div>

<!-- add issue modal -->
<jsp:include page="modal/addIssue.jsp" />
<jsp:include page="modal/editIssue.jsp" />
<jsp:include page="modal/addColumn.jsp" />
<jsp:include page="modal/editColumn.jsp" />
<jsp:include page="modal/addLabel.jsp" />