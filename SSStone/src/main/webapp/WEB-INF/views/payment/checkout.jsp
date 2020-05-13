<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
   <%@ include file="../includes/header.jsp" %>
<link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/5.11.0/css/font-awesome.min.css">
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
   <!-- BREADCRUMB -->
    <nav class="py-3" style="font-family: 'Do Hyeon', sans-serif; margin-left:180px">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item">
                <a class="text-gray-400" href="/shop/main">홈</a>
              </li>
              <li class="breadcrumb-item">
                <a class="text-gray-400" href="/shop/product">장바구니</a>
              </li>
              <li class="breadcrumb-item active">
                     결제하기
              </li>
            </ol>

          </div>
        </div>
      </div>
    </nav>

    <!-- CONTENT -->
    <section class="pt-7 pb-12" style="font-family: 'Do Hyeon', sans-serif;">
      <!-- Form -->
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">
            <h2>결제하기</h2>
         <hr>
          </div>
        </div>
        
        <div class="row">
          <div class="col-12 col-md-7">

              <!-- Heading -->
              <!-- 주문 회원 정보 -->
              <h6 class="mb-7">결제자 정보</h6>
              <!-- Billing details -->
              <div class="row mb-9">
                <div class="col-6">
                  <!-- First Name -->
                  <div class="form-group">
                    <label for="accountName">이름 *</label>
                    <div style="font-size: 30px; border-bottom: 1px solid;">
                    <c:out value="${read.m_name}"/>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-md-6">
                  <!-- Last Name -->
                  <div class="form-group">
                 
                  </div>

                </div>
                <div class="col-10">

                  <!-- Email -->
                  <div class="form-group">
                    <label for="accountEmail"> 이메일 *</label>
                    <div style="font-size: 30px; border-bottom: 1px solid;">
                       <c:out value="${read.m_email}"/>
                    </div>
                  </div>

                </div>
                <div class="col-12">
                  <!-- 번호 -->
                  <div class="form-group">
                    <label for="AccountNewPhone">
                         번호 *
                    </label>
                    <div style="font-size: 30px; border-bottom: 1px solid;">
                    <c:out value="${read.m_phone1 }"/>-<c:out value="${read.m_phone2 }"/>-<c:out value="${read.m_phone3 }"/>
                    <div class="col-7" style="display:flex; width:290px">
                  </div>
               </div>
            </div>
       </div>
       
             <div class="col-4">
                 <!-- 우편번호 -->
                  <div class="form-group">
                <label for="accountAddress">
                       우편번호 *
                 </label>
                  </div>
                  <div style="font-size: 30px; border-bottom: 1px solid;">
                   <c:out value="${read.m_address1}"/>
                   </div>
             </div>
                <div class="col-12">
                  <!-- 주소 -->
                 <div class="form-group" style="font-size: 30px; border-bottom: 1px solid;">
                 <c:out value="${read.m_address2}"/>
                 </div>
                </div>
                
                <div class="col-5">
               <!-- 상세주소 -->
                 <div class="form-group" style="font-size: 30px; border-bottom: 1px solid;">
                 <c:out value="${read.m_address3}"/>
                 </div>
                </div>
                <!-- 주문 회원 정보 -->
                
                <div class="col-5">
            <!-- 참고사항 -->
                 <div class="form-group">
                 
                 </div>
                </div>
                
                <div class="col-12">
                  <!-- 영역 잡아두기용 -->
                 <div class="form-group">
                    <label for="content"> 배송 메세지 (200자 내외) * </label>
               <textarea class="form-control" maxlength="200"
               style="resize: none"></textarea>
                </div>
                </div>
            </div>

          </div>
          <!-- 상품 정보 -->
          <div class="col-12 col-md-5 col-lg-4 offset-lg-1">
            <!-- Heading -->
            <h6 class="mb-7">선택된 상품</h6>
            <!-- Divider -->
            <hr class="my-7">
            <!-- List group -->
            <ul class="list-group list-group-lg list-group-flush-y list-group-flush-x mb-7">
                    <c:forEach items="${cartlist}" var="list">
              <li class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-4">

                    <!-- Image -->
                    <a class="card mb-4" href="#" data-fancybox>
                       <img src='/display?fileName=<c:out value="${list.p_filepath}"/>/<c:out value="${list.p_uuid}"/>_<c:out value="${list.p_filename }"/>' alt="..." class="card-img-top" style="border:1px solid #D8D8D8">
               </a>

                  </div>
                  <div class="col">
                    <p class="mb-4 font-size-sm font-weight-bold">
                      <a class="text-body" href="product.html"><c:out value="${list.p_name}"/></a> <br>
                      <span class="text-muted"><c:out value="${list.p_category1}"/></span>
                      <span class="text-muted"><c:out value="${list.p_category2}"/></span>
                      <span class="text-muted"><fmt:formatNumber value="${list.p_price}" pattern="#,###"/>원</span>
                    </p>

                    <!-- Text -->
                    <div class="font-size-sm text-muted">
                      <c:set var="option" value="null" />
                      <c:if test="${option ne null}">
                         Color: <c:out value="${list.p_option}"/>
                      </c:if>
                    </div>
                  </div>
                  <!-- 상품 정보 끝 -->
                </div>
              </li>
             </c:forEach>
            </ul>
			<div class="card mb-9 bg-light">
              <div class="card-body">
                <ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
                  <li class="list-group-item d-flex font-size-lg font-weight-bold">
                    <span>배송비</span><span class="ml-auto"><fmt:formatNumber value="${2500}" pattern="#,###" />원</span>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 상품 합계금액 -->
            <div class="card mb-9 bg-light">
              <div class="card-body">
                <ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
                  <li class="list-group-item d-flex font-size-lg font-weight-bold">
                    <span>총 금액</span><span class="ml-auto"><fmt:formatNumber value="${sumMoney+ 2500}" pattern="#,###" />원</span>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 상품 합계금액 끝 -->
        <hr>
          <div class="col-12">
          <div class="custom-control custom-checkbox">
               <input type="checkbox" class="custom-control-input" id="U_checkAgreement1" name="U_checkAgreement1">
               <label class="custom-control-label" for="U_checkAgreement1">(필수) 상기 결제정보를 확인하였으며,<br>구매진행에 동의합니다.<br>동의 시 주문 하기 클릭이가능합니다.</label>
                </div>
          </div>
          <hr>
            <div class="form-group" style="text-align:center">
               <div class="box on">
                <button class="btn btn-dark btn-lg" type="button" data-target="#modal" data-toggle="modal" id="nextBtn">
                   결제하기
                </button>
               <button class="btn btn-outline-dark btn-lg" onclick="location.href='../shop/main'" type="button">
                  홈으로
               </button>
               </div>
           </div>
           </div>
          </div>
        </div>
    </section>
    
<!-- 결제 모달창 시작 -->
<div class="row" style="font-family: 'Do Hyeon', sans-serif;">
   <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="modal-Title" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content" style="width:100%; height:100%; margin-top:-20px">
            <div class="modal-body">
               <h6 class="mb-7">결제 정보</h6>
              <hr>
         <!-- 카카오페이 -->
              <!-- List group -->
              <div class="list-group list-group-sm mb-7">
                <div class="list-group-item">
                  <!-- Radio -->
                  <div class="custom-control custom-radio">
                    <!-- Input -->
                    <input class="custom-control-input" id="checkoutPaymentCard1" name="payment" type="radio" data-toggle="collapse" data-action="show" data-target="#checkoutPaymentCardCollapse1">
                    <!-- Label -->
                    <label class="custom-control-label font-size-sm text-body text-nowrap" for="checkoutPaymentCard1">
                           카카오페이 (KAKAOPAY)
                    </label>
                  </div>
                </div>
                <div class="list-group-item collapse py-0" id="checkoutPaymentCardCollapse1">
                  <!-- Form -->
                  <div class="form-row py-5">
               · 카카오톡에서 신용/체크카드 연결하고, 결제도 지문으로 쉽고 편리하게 이용하세요!
               · 본인명의 스마트폰에서 본인명의 카드 등록 후 사용 가능<br>
               · (카드등록 : 카카오톡 > 더보기 > 카카오페이 > 카드)<br>
               · 이용가능 카드사 : 모든 국내 신용/체크카드<br>
               · 카드 결제 시, 결제금액 200만원 이상일 경우 ARS추가 인증이 필요합니다.
                  <br>·  (카카오머니 결제시는 추가인증 없음)
                  </div>
                </div>
                
                <!-- 실시간 계좌이체 -->
                <div class="list-group list-group-sm mb-7">
                <div class="list-group-item">
                  <!-- Radio -->
                  <div class="custom-control custom-radio">
                    <!-- Input -->
                    <input class="custom-control-input" id="checkoutPaymentCard2" name="payment" type="radio" data-toggle="collapse" data-action="show" data-target="#checkoutPaymentCardCollapse2">
                    <!-- Label -->
                    <label class="custom-control-label font-size-sm text-body text-nowrap" for="checkoutPaymentCard2">
                           실시간 계좌이체
                    </label>
                  </div>
                </div>
                <div class="list-group-item collapse py-0" id="checkoutPaymentCardCollapse2">
                  <!-- Form -->
                  <div class="form-row py-5">
               · 본인 계좌 정보입력으로 결제금액이 이체되는 서비스입니다.<br>
               · 인터넷뱅킹과 동일한 보안방식을 적용하므로 안전하며, 상점에 정보가 남지 않습니다.
                  </div>
                </div>
                
                <!-- 휴대폰 결제 -->
                <div class="list-group list-group-sm mb-7">
                <div class="list-group-item">
                  <!-- Radio -->
                  <div class="custom-control custom-radio">
                    <!-- Input -->
                    <input class="custom-control-input" id="checkoutPaymentCard3" name="payment" type="radio" data-toggle="collapse" data-action="show" data-target="#checkoutPaymentCardCollapse3">
                    <!-- Label -->
                    <label class="custom-control-label font-size-sm text-body text-nowrap" for="checkoutPaymentCard3">
                           휴대폰 결제
                    </label>
                  </div>
                </div>
                <div class="list-group-item collapse" id="checkoutPaymentCardCollapse3">
                  <!-- Form -->
                  <div class="form-row py-5">
                  · 결제정보가 상점에 남지 않으며, 보안 적용된 결제창이 새로 뜹니다.<br>
                  · 결제후, 핸드폰 요금청구서에 '소액결제'로 표시됩니다.<br>
                  · 결제후, 결제건의 취소는 해당 달에만 가능합니다.
                  </div>
                </div>
                
                <!-- 신용카드 -->
                <div class="list-group list-group-sm mb-7">
                <div class="list-group-item">
                  <!-- Radio -->
                  <div class="custom-control custom-radio">
                    <!-- Input -->
                    <input class="custom-control-input" id="checkoutPaymentCard4" name="payment" type="radio" data-toggle="collapse" data-action="show" data-target="#checkoutPaymentCardCollapse4">
                    <!-- Label -->
                    <label class="custom-control-label font-size-sm text-body text-nowrap" for="checkoutPaymentCard4">
                          신용카드
                    </label>
                  </div>
                </div>
                <div class="list-group-item collapse py-0" id="checkoutPaymentCardCollapse4">
                  <!-- Form -->
                  <div class="form-row py-5">
                  · 안심클릭 및 인터넷안전결제(IPS)서비스로 128bit SSL로 암호화된 결제 창이 새로 뜹니다.<br>
                  · 결제후, 카드명세서에 [KCP.CO.KR]로 표시되며, 카드 정보는 상점에 남지 않습니다.
                             </div>
                           </div>
                      </div>
                   </div>
                </div>
          </div>
          <div class="form-group" style="text-align:center;">
               <button class="btn btn-dark btn-lg"  data-target="#modal-com" data-toggle="modal" data-dismiss="modal">결제하기</button>
               <button class="btn btn-outline-secondary btn-lg" data-dismiss="modal">닫기</button>
            </div>
            </div>
            <hr>
         </div>
      </div>
   </div>
</div>


<!-- 멀티 모달창 -->
<div class="row">
   <div class="modal fade" id="modal-com">
      <div class="modal-dialog">
         <div class="modal-content" style="font-family:'Do Hyeon', sans-serif; width:650px; height:800px;">
            <div class="modal-header">
                  상품결제 완료
            </div>
            <div class="modal-body" style="text-align:center">
            <i class="far fa-laugh-squint fa-9x"></i><br>
                  구매해주셔서 감사합니다!!
            </div> 
            <div class="form-group" style="text-align:center">
                  자세한 결제 정보는 마이페이지에서 확인할 수 있습니다.
            </div>
            <div class="col-12">
            <form method="post">
	            <div class="form-group" style="text-align:center">
	            	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" > 
	               <button class="btn btn-outline-secondary btn-lg" type="submit" id="home">
	                     확인
	               </button>
	            </div>
            </form>
         </div>
         </div>
      </div>
   </div>
</div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".box button").attr("disabled", true);
	
	$("#U_checkAgreement1").on('click',function(){
		var chk = $('input:checkbox[id="U_checkAgreement1"]').is(":checked");
		if(chk==true){
			$(".box button").removeAttr('disabled');
			$(".box").removeClass("on");
		}
		else{
			$(".box button").attr("disabled", true);
			$(".box").addClass("on");
		}
	});
	$("input[type=radio]").on("change",function(e){
		var chk1 = $('input[id="checkoutPaymentCard1"]').is(":checked");
		var chk2 = $('input[id="checkoutPaymentCard2"]').is(":checked");
		var chk3 = $('input[id="checkoutPaymentCard3"]').is(":checked");
		var chk4 = $('input[id="checkoutPaymentCard4"]').is(":checked");
		
		if(chk1==false){
			$("#checkoutPaymentCardCollapse1").collapse('hide');
		}
		if(chk2==false){
			$("#checkoutPaymentCardCollapse2").collapse('hide');
		}
		if(chk3==false){
			$("#checkoutPaymentCardCollapse3").collapse('hide');
		}
		if(chk4==false){
			$("#checkoutPaymentCardCollapse4").collapse('hide');
		}
		
	});
	   
	$("#home").on("click", function(){
		document.location.href="/shop/main";
	});
});
</script>
<%@ include file="../includes/footer.jsp" %>