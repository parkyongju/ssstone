<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sec" uri="http://www.springframework.org/security/tags" %>
  
<!DOCTYPE html>
<html class="no-js">
   <head>
   <style> .js #fouc {display: none} </style> 
    <!-- Required meta tags -->
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="icon" href="/resources/img/favicons/favicon.ico">
    <!-- Libs CSS -->
    <link rel="stylesheet" href="/resources/libs/flickity/dist/flickity.min.css">
    <link rel="stylesheet" href="/resources/libs/@fancyapps/fancybox/dist/jquery.fancybox.min.css">
    <link rel="stylesheet" href="/resources/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/resources/libs/simplebar/dist/simplebar.min.css">
    <link rel="stylesheet" href="/resources/libs/highlightjs/styles/vs2015.css">
    <link rel="stylesheet" href="/resources/libs/flickity-fade/flickity-fade.css">
    <link rel="stylesheet" href="/resources/fonts/feather/feather.css">
    <!-- Theme CSS -->
    <link rel="stylesheet" href="/resources/css/theme.css">
    <link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
    <script src="/resources/libs/jquery/dist/jquery.min.js"></script>
    <title>Super Shining Stone</title>
  </head>
  <body class="no-js">
    <div id="up"></div>
    <!-- 퀵메뉴 스크롤 up -->
    
    <!-- PROMO -->
    <div class="py-3 bg-dark bg-pattern @@classList">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Text -->
            <div class="text-center text-white">
              <span class="heading-xxs letter-spacing-xl" style="margin-left:120px">
                ⚡️ Super Shining Stone ⚡️
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- PROMO end-->
    
    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-sm navbar-light @@classList" style="height:90px; line-height:17px; margin-left:200px;">
    
      <div class="container">
        <!-- Brand -->
        <a class="navbar-brand d-xl-none" href="../shop/main" title="홈으로">
          Super Shining Stone
        </a>
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarClassicCollapse" aria-controls="navbarClassicCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
          
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="navbarClassicCollapse" style="padding:72px 0px 0px 0px; font-family: 'Do Hyeon', sans-serif;">
          <!-- Nav -->
          <ul class="navbar-nav">
            <li class="nav-item dropdown">
              <!-- Toggle -->
              <a class="nav-link font-weight-bold font-size-xl" href="/shop/main" onclick="self.location='/shop/main'" title="홈으로">Home</a>
            </li>
          
            <li class="no-js nav-item dropdown position-static">
              <!-- Toggle -->
              
              <a class="nav-link font-weight-bold font-size-xl" data-toggle="dropdown" href="#" title="귀걸이 / 목걸이">귀걸이 / 목걸이</a>
              <!-- Menu -->
              <div class="dropdown-menu" style="min-width:600px; margin-left:-200px; height:300px">
                <div class="card card-lg">
                  <div class="card-body">
                    <div class="container">
                      <div class="row">
                        <div class="col-6 col-md">
                          <!-- Heading -->
                          <div class="mb-5 font-weight-bold" style="font-size:25px">귀걸이</div>
                          <!-- Links -->
                          <ul class="list-styled mb-0 font-size-h6">
                            <li class="list-styled-item" >
                              <a class="list-styled-link" href="/product/shop?p_category1=귀걸이&p_category2=골드">Gold</a>
                            </li>
                            <li class="list-styled-item">
                              <a class="list-styled-link" href="/product/shop?p_category1=귀걸이&p_category2=실버">Silver</a>
                            </li>
                            <li class="list-styled-item">
                              <a class="list-styled-link" href="/product/shop?p_category1=귀걸이&p_category2=써지컬">Surgical</a>
                            </li>
                            <li class="list-styled-item">
                              <a class="list-styled-link" href="/product/shop?p_category1=귀걸이&p_category2=">귀걸이 전체보기</a>
                            </li> 
                          </ul>
                        </div>
                        <div class="col-6 col-md">
                          <!-- Heading -->
                          <div class="mb-5 font-weight-bold" style="font-size:25px;">목걸이</div>
                          <!-- Links -->
                          <ul class="list-styled mb-0 font-size-h6">
                        <li class="list-styled-item">
                              <a class="list-styled-link" href="/product/shop?p_category1=목걸이&p_category2=골드">Gold</a>
                            </li>
                            <li class="list-styled-item">
                              <a class="list-styled-link" href="/product/shop?p_category1=목걸이&p_category2=실버">Silver</a>
                            </li>
                            <li class="list-styled-item">
                              <a class="list-styled-link" href="/product/shop?p_category1=목걸이&p_category2=초커">Choker</a>
                            </li>
                            <li class="list-styled-item">
                              <a class="list-styled-link" href="/product/shop?p_category1=목걸이&p_category2=써지컬">Surgical</a>
                            </li>
                            <li class="list-styled-item">
                              <a class="list-styled-link" href="/product/shop?p_category1=목걸이&p_category2=">목걸이 전체보기</a>
                            </li> 
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </li>
            
            <li class="no-js nav-item dropdown position-static">
              <!-- Toggle -->
              <a class="nav-link font-weight-bold font-size-xl" data-toggle="dropdown" href="#" title="팔찌 / 시계">팔찌 / 시계</a>
              <!-- Menu -->
              <div class="dropdown-menu" style="min-width:600px; margin-left:-60px">
                <div class="card card-lg">
                  <div class="card-body">
                   <div class="container">
                    <div class="row">
                      <div class="col">
                        <!-- Heading -->
                        <div class="mb-5 font-weight-bold" style="font-size:25px">팔찌</div>
                        <!-- Links -->
                        <ul class="list-styled mb-7 font-size-h6">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="/product/shop?p_category1=팔찌&p_category2=골드">Gold</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="/product/shop?p_category1=팔찌&p_category2=실버">Silver</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="/product/shop?p_category1=팔찌&p_category2=게르마늄">Germanium</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="/product/shop?p_category1=팔찌&p_category2=써지컬">Surgical</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="/product/shop?p_category1=팔찌&p_category2=">팔찌 전체보기</a>
                          </li>
                        </ul>
                      </div>
                      <div class="col">
                        <!-- Heading -->
                        <div class="mb-5 font-weight-bold" style="font-size:25px">시계</div>
                        <!-- Links -->
                        <ul class="list-styled mb-7 font-size-h6">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="/product/shop?p_category1=시계&p_category2=가죽">leather</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="/product/shop?p_category1=시계&p_category2=메탈">metal</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="/product/shop?p_category1=시계&p_category2=">시계 전체보기</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                   </div>
                  </div>
                </div>
              </div>
            </li>
            
            <li class="no-js nav-item dropdown position-static">
                 <!-- Toggle -->
                 <a class="nav-link font-weight-bold font-size-xl" data-toggle="dropdown" href="#" title="반지 / 헤어">반지 / 헤어</a>
                 <!-- Menu -->
                 <div class="dropdown-menu" style="width:600px; padding:16px; margin-left:50px">
                   <div class="card">
                     <div class="card-body">
                       <div class="row">
                         <div class="col">
                           <!-- Heading -->
                           <div class="mb-5 font-weight-bold" style="font-size:25px">반지</div>
                           <!-- Links -->
                           <ul class="list-styled mb-7 font-size-h6">
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=반지&p_category2=골드">Gold</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=반지&p_category2=실버">Silver</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=반지&p_category2=써지컬">Surgical</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=반지&p_category2=">반지 전체보기</a>
                             </li>
                           </ul>
                           <!-- Heading -->
                           <div class="mb-5 font-weight-bold"></div>
                         </div>
                         <div class="col">
                           <!-- Heading -->
                           <div class="mb-5 font-weight-bold" style="font-size:25px">헤어용품</div>
                           <!-- Links -->
                           <ul class="list-styled mb-7 font-size-h6">
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=헤어&p_category2=끈">hair tie</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=헤어&p_category2=곱창밴드">Gopchang Band</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=헤어&p_category2=헤어벤드(머리띠)">hair band</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=헤어&p_category2=반다나">Bandana Hair Band</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=헤어&p_category2=헤어핀">hairclip</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=헤어&p_category2=집게핀">Tongs</a>
                             </li>
                             <li class="list-styled-item">
                               <a class="list-styled-link" href="/product/shop?p_category1=헤어&p_category2=">헤어용품 전체보기</a>
                             </li>
                           </ul>
                        </div>
                      </div>
                    </div>
                     </div>
                    </div>
                  </li>
                  
                      
          <!-- Brand -->
          <a class="no-js" href="/shop/main" style="position: relative; bottom: 35px;">
            &nbsp;&nbsp;&nbsp;
            <img src="/resources/img/covers/sss.gif" class="img-which" alt="ssstone logo" width="120" height="100" style="margin: 0px auto;">
            &nbsp;&nbsp;
          </a>
          
           <li class="nav-item dropdown">
              <!-- Toggle -->
              <a class="nav-link font-weight-bold font-size-xl" href="/shop/faq" title="고객센터">FAQ</a>
            </li>
          
          <li class="nav-item dropdown">
              <!-- Toggle -->
              <a class="nav-link font-weight-bold font-size-xl" href="/product/shop" title="FLEX">쇼핑하기</a>
          </li>
            
           <li class="nav-item dropdown">
              <!-- Toggle -->
              <a class="nav-link font-weight-bold font-size-xl" href="/shop/boardList"  title="게시판">자유게시판</a>
           </li>
          
          <!-- Nav -->
          <ul class="navbar-nav flex" style="line-height:5px">
            <li class="nav-item">
              <a class="nav-link" data-toggle="modal" href="#modalSearch" title="검색" >
                <i class="fe fe-search"></i>
              </a>
            </li>
            
            <sec:authorize access="isAnonymous()">
            <li class="nav-item ml-lg-n4">
              <a class="nav-link" href="/member/agreement" title="회원 가입">
                <i class="fe fe-user"></i>
              </a>
            </li>
            </sec:authorize>
            
            <sec:authorize access="isAnonymous()">
                 <li class="nav-item ml-lg-n4">
                    <a class="nav-link" href="/member/login" title="로그인">
                      <i class="fe fe-log-in"></i>
                    </a>
               </li>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
               <sec:authentication property="principal.member.m_no" var='m_no'/>
             <li class="nav-item ml-lg-n4">             
                 <a class="nav-link" href="/member/mypage?m_no=${m_no}" title="마이페이지">
                   <i class="fe fe-user"></i>
                 </a>
            </li>
            </sec:authorize>

           <sec:authorize access="isAuthenticated()">
            <li class="nav-item ml-lg-n4">
              <a class="nav-link" data-toggle="modal" href="#modalShoppingCart" title="장바구니">
               <!--  <span data-cart-items=""> -->
                  <i class="fe fe-shopping-cart"></i>
               <!--  </span> -->
              </a>
            </li>
            </sec:authorize>
            
            <sec:authorize access="hasRole('ROLE_MANAGER')">
            <li class="nav-item ml-lg-n4">
              <a class="nav-link" data-toggle="modal" onclick="self.location='/admin/index'" href ='#' title="관리자 페이지">
                  <i class="fa fa-star fa-fw"></i>
              </a>
            </li>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
             <li class="nav-item ml-lg-n4">
             <form action="/logout" method="post" role="form">
                <input type=hidden name="${_csrf.parameterName }" value="${_csrf.token }">
                 <a class="logout nav-link"  href="#" title="로그아웃">
                   <i class="fe fe-log-out" ></i>
                 </a>
              </form>
            </li>
            </sec:authorize>
            
            <script>
               $(".logout").on("click",function(){
                  var form = $("form[role='form']");
                  form.submit();
               })
            </script>
          </ul>
       </ul>
         
        </div>
       
      </div>
     
    </nav>
    </body>
    </html>
  
    
    <!-- NAVBAR end--> 