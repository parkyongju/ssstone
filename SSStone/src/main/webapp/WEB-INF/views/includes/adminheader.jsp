<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Admin Site</title>

<!-- Bootstrap Core CSS -->

<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
<!-- DataTables CSS -->
<link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
<!-- DataTables Responsive CSS -->
<link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/5.10.1/css/font-awesome.min.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

   <!-- Navigation -->
   <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
         
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="/admin/index">
            <i class="fas fa-won-sign"></i>SSStone 관리자 페이지
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <c:out value="${serverTime }"></c:out>
         </a>
      </div>
      <!-- /.navbar-header -->
      
      <!-- 상단바 -->
      <ul class="nav navbar-top-links navbar-right">
      
        <!-- 홈페이지 모양 -->
         <li class="dropdown">
            <a href="/shop/main" title="ssstone홈페이지"> 
               <i class="fa fa-star fa-fw"></i>               
            </a>
           
         </li>
         <!-- /.dropdown -->
         
        
         <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" title="분기 달성">
               <i class="fa fa-tasks fa-fw"></i>
               <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-tasks">
               <li><a href="#">
                     <div>
                        <p>
                           <strong>이번 분기 목표 달성</strong> 
                           <span class="pull-right text-muted">40% Complete</span>
                        </p>
                        <div class="progress progress-striped active">
                           <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                              <span class="sr-only">40% Complete (success)</span>
                           </div>
                        </div>
                     </div>
               </a></li>
               <li class="divider"></li>
               <li>
                     <a class="text-center" href="#"><strong>더 보기</strong><i class="fa fa-angle-right"></i></a>
               </li>
            </ul> 
            <!-- /.dropdown-tasks -->
         </li>
         <!-- /.dropdown -->

         <!-- 알림 모양 -->
         <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" title="게시판"> 
               <i class="fa fa-bell fa-fw"></i>
               <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-alerts">
               <li>
                  <a href="/shop/boardList">
                     <div>
                        <i class="fa fa-comment fa-fw"></i> 새로운 댓글 
                        <span class="pull-right text-muted small">4분전 </span>
                     </div>
               </a>
              </li>
            </ul>
            <!-- dropdown-menu dropdown-alerts 끝 -->
         </li>         
          <!-- /.dropdown -->
         
         <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" title="로그아웃">
               <i class="fa fa-user fa-fw"></i>
               <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
               <%-- <sec:authorize access="isAuthenticated()"> --%>
                  <li><a href="/customLogout"><i class="fa fa-sign-out fa-fw"></i>로그아웃</a>
               <%-- </sec:authorize>
               <sec:authorize access="isAnonymous()"> --%>                  
            </ul> <!-- /.dropdown-user -->
        </li>
         <!-- /.dropdown -->
     </ul>
      <!-- /.navbar-top-links -->

      <!-- 왼쪽 바 -->
      <div class="navbar-default sidebar" role="navigation">
         <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
              
               <li>
                  <a href="/admin/index"><i class="fa far fa-folder fa-fw"></i>매출 현황</a>
               </li>
               
               <li>
                  <a id="aBtn">
                     <i class="fa far fa-folder fa-fw"></i>상품<span class="fa arrow"></span>
                  </a>
               <!--    <a href="#" id="folderopen" >  
                     <i class="fa far fa-folder-open fa-fw" ></i>상품<span class="fa arrow"></span>
                  </a> -->
                  <ul class="nav nav-second-level">
                     <li>
                        <a href="/admin/productRegister"><i class="fa fa-arrow-right  fa-fw"></i>상품 등록</a>
                     </li>
                     <li>
                        <a href="/admin/productList"><i class="fa fa-arrow-right fa-fw"></i>상품 목록</a>
                     </li>
                  </ul> <!-- /.nav-second-level -->
              </li>
              
              <li>
                 <a href="/admin/member"><i class="fa far fa-folder fa-fw" ></i>회원</a>
              </li>
              
              <li>
                 <a href="/admin/deliveryStatus"><i class="fa far fa-folder fa-fw"></i>배송현황</a>
              </li>
              
              <li>
                 <a href="/admin/adminSignUp"><i class="fa far fa-folder fa-fw"></i>관리자 가입</a>
              </li>
              
              <li>
                 <a href="/admin/manager"><i class="fa far fa-folder fa-fw"></i>관리자 정보</a>
              </li>
              
              <li>
                 <a href="#"><i class="fa far fa-folder fa-fw"></i>통계</a>          
               </li>
               <!-- 통계끝  -->
            </ul>
         </div>
         <!-- /.sidebar-collapse -->
      </div>
      <!-- /.navbar-static-side -->
   </nav>
   <!-- jQuery -->
   <script>
  	$(document).ready(function(){
  		
	/*   $("#folderopen").css("display","none");
	  $("#folder").css("display","inline");
	   */
	  $("#aBtn").click(function(e){
		  e.preventDefault();
		  alert("버트");
	/* 	  $("#folderopen").css("display","inline");
		  $("#folder").css("display","none"); */
	  });
   });
   
   </script>

   