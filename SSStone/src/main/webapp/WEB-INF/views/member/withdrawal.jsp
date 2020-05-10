<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file="../includes/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

   
   <!-- Breadcrumb -->
   <ol class="breadcrumb justify-content-center mb-0 text-center text-white font-size-xs">
      <li class="breadcrumb-item"><a class="text-reset" href="/shop/main">Home</a></li>      
      <li class="breadcrumb-item active"><a class="text-reset" href="/member/mypage">My Page</a></li>      
      <li class="breadcrumb-item active"><a class="text-reset" href="/member/withdrawal">Withdrawal</a></li>
   </ol>

<!-- CONTENT -->
<section class="pt-7 pb-12" style="font-family: 'Do Hyeon', sans-serif;">
   <div class="container">
      <div class="row">
      <div class="col-12 text-center">
        <!-- Heading -->
         <h3 class="mb-10">My Withdrawal</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-12 col-md-3">
            <!-- Nav -->
            <nav class="mb-10 mb-md-0">
              <div class="list-group list-group-sm list-group-strong list-group-flush-x">
                <sec:authentication property="principal.member.m_no" var='m_no'/>
              <!--  회원번호 가져오기 -->
              <a class="list-group-item list-group-item-action dropright-toggle active" href="/member/mypage?m_no=${m_no}">
                  배송현황
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle active" href="/member/modifyMemberInfo?m_no=${m_no} ">
                  회원 정보 수정
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle" href="/member/purchaseList?m_no=${m_no}">
                  구매목록
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle" href="/payment/shopcart?m_no=${m_no}">
                  장바구니
                </a>           
                 <a class="list-group-item list-group-item-action dropright-toggle" href="/member/?m_no=${m_no}">
                  회원 탈퇴
                </a>
              </div>
            </nav>
            <!-- 옆메뉴 종료 -->
          </div>
                 
         <div class="col-12 col-md-6">
            <!-- Card -->
            <div class="card card-lg mb-10 mb-md-0">
               <div class="card-body">
                  <!-- Heading -->
                  <h6 class="mb-7">회원탈퇴</h6>
                  <!-- Form -->
                  <form method="post" action="/withdrawal">
                     <div class="row">
                        <div class="col-12">
                           <!-- Email -->
                           <div class="form-group">
                           
                              <label class="sr-only" for="loginEmail"> Email Address</label> 
                              <input class="form-control form-control-sm" name="username" id="loginEmail" type="email" readonly="readonly">
                           </div>
                        </div>
                        <div class="col-12">
                           <!-- Password -->
                           <div class="form-group">
                              <label class="sr-only" for="loginPassword"> 
                              Password *
                              </label> 
                              <input class="form-control form-control-sm" name="password" id="loginPassword" type="password" placeholder="Password *" required>
                           </div>
                        </div>
                  
                        <div class="col-12 col-md-auto">
                           <!-- Link -->
            
                        <input type=hidden name="${_csrf.parameterName }" value="${_csrf.token }">
                        <div class="col-12" style="left: 170px;">
                           <!-- Button -->
                        <button class="login btn btn-outline-border" id="login" type="submit" style="float: left; font-family: 'Do Hyeon', sans-serif">
                           	탈퇴하기
                        </button>
                        </div>
                     </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>





<%@ include file="../includes/footer.jsp"%>