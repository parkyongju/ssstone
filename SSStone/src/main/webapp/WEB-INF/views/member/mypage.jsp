<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../includes/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<sec:authorize access="isAuthenticated()">
   <sec:authentication property="principal.member.m_no" var='m_no'/>
   
    <!-- BREADCRUMB -->
    <nav class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item"><a class="text-gray-400" href="/shop/main">Home</a></li>
              <li class="breadcrumb-item active"><a class="text-gray-400" href="/member/mypage?m_no=${m_no}">My Page</a></li>        
            </ol>
          </div>
        </div>
      </div>
    </nav>
    <!-- BREADCRUMB end -->

    <!-- CONTENT -->
    <section class="pt-7 pb-12">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h3 class="mb-10">My Page</h3>

          </div>
        </div>
        <div class="row">
          <div class="col-12 col-md-3">

            <!-- Nav -->
            <nav class="mb-10 mb-md-0">
              <div class="list-group list-group-sm list-group-strong list-group-flush-x">            
             	<a class="list-group-item-action" ><c:out value="${member.m_name}"/>님 환영합니다<i class="fe fe-heart"></i></a>
              <!--  회원번호 가져오기 -->
              <a class="list-group-item list-group-item-action dropright-toggle active" href="/member/mypage?m_no=${m_no}">
                  My Page
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle" href="/member/modifyMemberInfo?m_no=${m_no} ">
                  회원 정보 수정
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle" href="/member/order?m_no=${m_no}">
                  구매목록
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle" href="/payment/shopcart?m_no=${m_no}">
                  장바구니
                </a>           
                 <a class="list-group-item list-group-item-action dropright-toggle" href="/member/withdrawal?m_no=${m_no}">
                  회원 탈퇴
                </a>
              </div>
            </nav>
            <!-- 옆메뉴 종료 -->

          </div>
          
          <div class="col-12 col-md-9 col-lg-8 offset-lg-1">   
            <!-- Order -->
             <c:forEach items="${mypage}" var="member">
            <div class="card card-lg mb-5 border">           
              <div class="card-body pb-0">
                <!-- Info -->
                <div class="card card-sm">
                  <div class="card-body bg-light">
                    
                    <div class="row" style="margin-bottom: 15px;">   
                                                        
                      <div class="col-7 col-lg-4">
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">Order No:</h6>
                        <!-- Text -->
                        <p class="mb-lg-0 font-size-sm font-weight-bold" >                          
                             <c:out value="${member.pc_no}" />                             
                        </p>
                      </div>
                      
                      <div class="col-7 col-lg-4">                  
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">Shipped date:</h6>
                        <!-- Text -->
                        <p class="mb-lg-0 font-size-sm font-weight-bold">                   
                         <fmt:formatDate value="${member.pc_date}" pattern="yyyy/MM/dd"/>                         
                        </p>
                      </div>
                      
                      <div class="col-7 col-lg-4">
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">Status:</h6>
                        <!-- Text -->
                        <p id="deliverystatus" class="mb-0 font-size-sm font-weight-bold" >                         
                             <i class="fe fe-truck"></i> 배송 중
                        </p>
                      </div>
                      </div>
                      
                      <div class="row" style="margin-bottom: 15px;">
                      <div class="col-9 col-lg-10">
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">Order Address:</h6>
                        <!-- Text -->
                        <p class="mb-0 font-size-sm font-weight-bold">
                         <c:out value="${member.m_address1}" />   <c:out value="${member.m_address2}" />   <c:out value="${member.m_address3}" />   
                        </p>
                      </div>
                      </div>
                     
                     <div class="row"> 
                     <div class="col-12 col-lg-11">
                    <div class="form-row">
                      <div class="col-8">                   
                        <!-- Button -->
                        <a class="btn btn-lg btn-block btn-outline-dark" href="/member/mypageDetail?pc_no=${member.pc_no}" title="상품자세히보기">                        
                        Order Details
                        </a>
                        <!-- Button end-->
                      </div>    
                    </div>
                  </div>
                  
                    </div>                    
                  </div>
                </div>                
              </div>
              
            </div>
           </c:forEach>
             

            <!-- Pagination -->
            <nav class="d-flex justify-content-center justify-content-md-end mt-10">
              <ul class="pagination pagination-sm text-gray-400">
                <li class="page-item">
                  <a class="page-link page-link-arrow" href="#">
                    <i class="fa fa-caret-left"></i>
                  </a>
                </li>
                <li class="page-item active">
                  <a class="page-link" href="#">1</a>
                </li>
        
                <li class="page-item">
                  <a class="page-link page-link-arrow" href="#">
                    <i class="fa fa-caret-right"></i>
                  </a>
                </li>
              </ul>
            </nav>
            <!--  Pagination end -->

          </div>
        </div>
      </div>
    </section>
</sec:authorize>




<%@ include file="../includes/footer.jsp" %>