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
    <nav class="py-5" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item"><a class="text-gray-400" href="/shop/main">Home</a></li>
              <li class="breadcrumb-item"><a class="text-gray-400" href="/member/mypage?m_no=${m_no}">My Page</a></li> 
              <li class="breadcrumb-item"><a class="text-gray-400" href="/member/order?m_no=${m_no}">Order</a></li>       
              <li class="breadcrumb-item active"><a class="text-gray-400" href="/member/orderDetail?m_no=${m_no}">Order Detail</a></li>       
            </ol>
          </div>
        </div>
      </div>
    </nav>
    <!-- BREADCRUMB end-->

    <!-- CONTENT -->
    <section class="pt-7 pb-12" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">
          
            <!-- Heading -->
            <h3 class="mb-10">My Account</h3>
          </div>
        </div>
        
        <div class="row">
          <div class="col-12 col-md-3">

        <!-- Nav -->
            <nav class="mb-10 mb-md-0">
              <div class="list-group list-group-sm list-group-strong list-group-flush-x">              
              <a class="list-group-item list-group-item-action dropright-toggle" href="/member/mypage?m_no=${m_no}">
                  My Page
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle" href="/member/modifyMemberInfo?m_no=${m_no} ">
                  회원 정보 수정
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle active" href="/member/order?m_no=${m_no}">
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
            <!-- Nav 종료 -->
          </div>
          
          <div class="col-12 col-md-9 col-lg-8 offset-lg-1">
          <c:forEach items="${orderDetail }" var="order">
            <div class="card card-lg mb-5 border">
              <div class="card-body pb-0">

                <!-- Info -->
                <div class="card card-sm">
                  <div class="card-body bg-light">
                    <div class="row" style="margin-bottom: 15px;">
                    
                      <div class="col-6 col-lg-4">
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">상품번호 : </h6>
                        <!-- Text -->
                        <p class="mb-lg-0 font-size-sm font-weight-bold">
                          <c:out value="${order.p_no }" />
                        </p>
                      </div>
                      
                      <div class="col-6 col-lg-4">
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">상품명 : </h6>
                        <!-- Text -->
                        <p class="mb-lg-0 font-size-sm font-weight-bold">                          
                          <c:out value="${order.p_name }" />                       
                        </p>
                      </div>
                      
                      <div class="col-6 col-lg-4">
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">개수 : </h6>
                        <!-- Text -->
                        <p class="mb-0 font-size-sm font-weight-bold">
                          <c:out value="${order.s_amount}" /> 
                        </p>
                      </div>
                      </div>
                      
                       <div class="row" style="margin-bottom: 15px;">
                      <div class="col-6 col-lg-6">
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">상품상세가격 : </h6>
                        <!-- Text -->
                        <p class="mb-0 font-size-sm font-weight-bold">
                          <fmt:formatNumber value="${order.p_price}" pattern="#,###"/>원<i class="fe fe-x"></i><c:out value="${order.s_amount}" />개                       
                        </p>
                      </div>
                    
                      
                        <div class="col-6 col-lg-6">
                        <!-- Heading -->
                        <h6 class="heading-xxxs text-muted">상품가격 : </h6>
                        <!-- Text -->
                        <p class="mb-0 font-size-sm font-weight-bold">                          
                          <fmt:formatNumber value="${order.purchaseAmount}" pattern="#,###"/>원 
                        </p>
                      </div>
                      
                    </div>
                  </div>
                </div>
                <!-- Info end -->
              </div>
              
              
              <div class="card-footer">
                <!-- Heading -->
                <h6 class="mb-7">Order Items</h6>
                <!-- Divider -->
                <hr class="my-5">
                <!-- List group -->
                <ul class="list-group list-group-lg list-group-flush-y list-group-flush-x">
                  <li class="list-group-item">
                    <div class="row align-items-center">            
                      <div class="col">
                        <!-- Title -->
                        <p class="mb-4 font-size-sm font-weight-bold" title="해당상품으로 이동">
                          <a class="text-body" href="/product/product?p_no=${order.p_no}" >상품보러가기</a><br>
                          <span class="text-muted">상품옵션 : </span>                         
                        </p>
                        <!-- Text -->
                        <div class="font-size-sm text-muted">
                          <c:out value="${order.p_option }" /><br>                                                    
                        </div>
                      </div>
                    </div>
                  </li>        
                </ul>
              </div>
            </div>
            <!-- OrderInfo end-->
           </c:forEach> 
          

            <!-- Total -->
            <div class="card card-lg mb-5 border">
              <div class="card-body">
                <!-- Heading -->
                <h6 class="mb-7">Order Total</h6>
                <!-- List group -->
                <ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
                  <li class="list-group-item d-flex">
                    <span>상품가격 : <br/><br/><i class="fe fe-plus"></i></span>                    
                    <span class="ml-auto">
                    	<c:forEach items="${orderDetail }" var="order">
                    	<fmt:formatNumber value="${order.purchaseAmount}" pattern="#,###"/>원<br/>
                    </c:forEach> 
                    </span>
                  </li>
                  <li class="list-group-item d-flex font-size-lg font-weight-bold">
                    <span>총 합계 : </span>
                    <span id="total" class="ml-auto" >
                    	<fmt:formatNumber value="${total}" pattern="#,###"/>원<br/>
                    </span>
                  </li>
                </ul>
              </div>
            
            </div>
            <!-- Total end-->
                       

            <!-- Details -->
            <div class="card card-lg border">
              <div class="card-body">
                <!-- Heading -->
               <h6 class="mb-7">상품 관련 정보</h6>
                <!-- Content -->
               <div class="row">           
                 <div class="col-12 col-md-6">
                    <!-- Heading -->
                    <p class="mb-4 font-weight-bold">
                      Shipping Address:
                    </p>
                    <p class="mb-7 mb-md-0 text-gray-500">
                        서울특별시 성동구<br/>
                  		왕십리도선동<br/>
                  		무학로2길 54<br/>
                        신방빌딩 5층<br/>                        
                    </p>
                </div>
    
                <div class="col-12 col-md-6">
                    <!-- Heading -->
                    <p class="mb-4 font-weight-bold">
                      Shipping Method:
                    </p>
                    <p class="mb-7 text-gray-500">
                      배송 출발 날짜 :  <br>
                      구매후 1~3일이내 <br>
                      (주말 비포함)<br>
                    </p>
              	 </div>
               </div>
               
               <div class="row">
               <!-- Content -->
                <div class="col-12 col-md-6">                    
                <!--  Heading -->
                <p class="mb-4 font-weight-bold">
                  Phone:
                </p>
                <p class="mb-0 text-gray-500">
                  82-10-3113-8419
                </p>
             	</div>
                           
                <div class="col-12 col-md-6">
                   <!--  Heading -->
                    <p class="mb-4 font-weight-bold">
                      Store Hours:
                    </p>
                    <p class="mb-0 text-gray-500">
                      오전 9시~ 오후 6시 <br>
                      토,일 휴무<br>
                    </p>
                 </div>
                </div>

              </div>
            </div>
            <!-- Details end -->

          </div>
        </div>
      </div>
    </section>
    <!-- CONTENT end-->
</sec:authorize>

<script>
	$(document).ready(function(){
		var pno="${order.p_no}";
		var purchaseAmount="${order.purchaseAmount}";
		var total=0;
		var str="";
		function total(){
			
		
		for(var i=0; i<pno.size(); i++)
		{
			total+=purchaseAmount;
			console.log(total);
		}	
		str+=${total};
		}
	});

</script>

<%@ include file="../includes/footer.jsp" %>