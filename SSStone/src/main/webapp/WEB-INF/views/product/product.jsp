<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../includes/header.jsp" %>
   
    <!-- BREADCRUMB -->
    <nav class="my-5">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item"> <a class="text-gray-400" href="/shop/main">Home</a> </li>
              <li class="breadcrumb-item"> <a class="text-gray-400" href="/product/shop">Shop</a> </li>             
              <li class="breadcrumb-item active"> <a class="text-gray-400" href="/product/product">Product</a></li>
            </ol>

          </div>
        </div>
      </div>
    </nav>
    <!-- BREADCRUMB end-->


    <!-- PRODUCT -->
    <section>
      <div class="container" style="height: auto;">
        <div class="row">
          <div class="col-12">
            <div class="row">
              <div class="col-12 col-md-6" >

                <!-- Images -->
                <div class="form-row mb-10 mb-md-0" style="width: 1100px; height: auto; position: absolute;">
                  <div class="col-6" style="">

                    <!-- 메인 사진 -->
                    <c:forEach items="${productmain }" var ="mainimg">
                     <a class="card mb-4" href="#" data-fancybox> <img
                        src='/display?fileName=<c:out value="${mainimg.p_filepath}"/>/<c:out value="${mainimg.p_uuid}"/>_<c:out value="${mainimg.p_filename }"/>'
                        alt="..." class="card-img-top" width="160%" height="160%">
                     </a>
                  </c:forEach>
                    </div>
              </div>

              <div class="col-15 col-md-12 pl-lg-8" style="left: 120%; position: absolute;">

                <!-- Header -->
                <div class="row mb-1">
                  <div class="col" >

                    <!-- Preheading -->
                    <c:out value="${product.p_category1}"/>&nbsp;&nbsp;<c:out value="${product.p_category2}"/>

                  </div>
                </div>

                <!-- Heading -->
                <h3 class="mb-2"><c:out value="${product.p_name}" /></h3>

                <!-- Price -->
                <div class="mb-7">
                  <span class="ml-1 font-size-h5 font-weight-bold">금액 : <fmt:formatNumber value="${product.p_price}" pattern="#,###"/>원</span>
                </div>

                <!-- Form -->
                  <div class="form-group">

                    <!-- Label  -->
                    <p class="mb-4">
                      <strong id="colorCaption">
                      <c:set var="option" value="null" />
                      <c:if test="${option ne null}">
                         Color: <c:out value="${product.p_option}"/>
                      </c:if>
                      </strong>
                    </p>

                    <!-- Radio -->
                    <div class="mb-8 ml-n1">
                      <a><br>&nbsp;각 상품당 최대 5개의 구매가 가능합니다.</a>
                    </div>

                  </div>
                  <div class="form-group">
                    <div class="form-row mb-7">
                    <p class="mb-4" style="font-size: 20px; margin-top: 10px;">&nbsp;수량 : </p>
                      <div class="col-12 col-lg-auto">

                        <!-- Quantity -->
                        <select class="custom-select custom-select-sm" id="s_count">
                          <c:choose>
                     <c:when test="${product.p_stock >= 5}">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                     </c:when>
                     <c:when test="${product.p_stock >= 4}">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                     </c:when>
                     <c:when test="${product.p_stock >= 3}">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                     </c:when>
                     <c:when test="${product.p_stock >= 2}">
                        <option>1</option>
                        <option>2</option>
                     </c:when>
                     <c:when test="${product.p_stock >= 1}">
                        <option>1</option>
                     </c:when>
                     </c:choose>
                        </select>
                      </div>
                      <div class="col-12 col-lg">

                        <!-- Submit -->
                        <button id="buy" class="btn btn-block btn-dark mb-2">
                           장바구니 담기 <i class="fe fe-shopping-cart ml-2" ></i>
                        </button>

                      </div>
                      <!-- 남은 수량 -->
                      <c:choose>

                  <c:when test="${product.p_stock <= 10}">
                     <a>&nbsp;&nbsp;수량이 얼마 남지않았습니다.</a>
                  </c:when>
                  
                  <c:otherwise>
                     <a>수량이 <c:out value="${product.p_stock}"/>개 남았습니다.</a>
                  </c:otherwise>
                 </c:choose>
                 <!-- 남은 수량 끝 -->
                    </div>

                    <!-- Text -->
                    <p>
                      <a class="text-reset text-decoration-underline" data-toggle="modal" href="/member/account" title="회원가입" onclick="self.location='/member/account'">회원가입을 원하세요?</a>
                    </p>

                    <!-- Share -->
                    <p class="mb-0">
                      <span class="mr-4">Share:</span>
                      <a class="btn btn-xxs btn-circle btn-light font-size-xxxs text-gray-350" href="https://www.instagram.com/" title="instagram" >
                        <i class="fab fa-instagram"></i>
                      </a>
                      <a class="btn btn-xxs btn-circle btn-light font-size-xxxs text-gray-350" href="https://twitter.com/" title="twitter" >
                        <i class="fab fa-twitter"></i>
                      </a>
                      <a class="btn btn-xxs btn-circle btn-light font-size-xxxs text-gray-350" href="https://ko-kr.facebook.com/" title="facebook" >
                        <i class="fab fa-facebook-f"></i>
                      </a>
                      <a class="btn btn-xxs btn-circle btn-light font-size-xxxs text-gray-350" href="/shop/comingsoon" title="준비중" onclick="self.location='/shop/comingsoon'">
                        <i class="fab fa-pinterest-p"></i>
                      </a>
                    </p>

                  </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </section>

    <!-- DESCRIPTION -->
    <section class="pt-1">
      <div class="container">
        <div class="row">
          <div class="col-12" style="top: 500px;  height: auto; margin-top: 100px;">

            <!-- Nav -->
            <div class="nav nav-tabs nav-overflow justify-content-start justify-content-md-center border-bottom">
              <a class="nav-link active" data-toggle="tab" href="#descriptionTab">
                      상품 상세 설명
              </a>
              <a class="nav-link" data-toggle="tab" href="#shippingTab" title="배송과 반품">
                      배송 & 반품
              </a>
            </div>

            <!-- Content -->
            <div class="tab-content">
              <div class="tab-pane fade show active" id="descriptionTab">
                <div class="row justify-content-center py-9">
                  <div class="col-12 col-lg-10 col-xl-8">
                    <div class="row">
                      <div class="col-12">

                        <!-- 서브이미지 출력 -->
                        <c:forEach items="${productsub }" var="subImg">
                    <a class="card mb-4" href="#" data-fancybox>
                          <img src='/display?fileName=<c:out value="${subImg.p_filepath}"/>\<c:out value="${subImg.p_uuid}"/>_<c:out value="${subImg.p_filename }"/>' alt="..."
                           class="card-img-top" width="200px" height="400px">
                    </a>
                    </c:forEach>
                    <!-- 서브이미지 종료 -->
                    
                    <!-- 상품 상세내용  -->
                        <p class="text-gray-500">
                        <c:out value="${product.p_content}"></c:out>

                      </div>
                      <div class="col-12 col-md-6">

                        <ul class="list list-unstyled mb-md-0 text-gray-500">
                          <li>
                            <strong class="text-body">상품명 : </strong> <c:out value="${product.p_name}"/>
                          </li>
                          <li>
                            <strong class="text-body">재질 : </strong> <c:out value="${product.p_category2}"/>
                          </li>
                          <li>
                            <strong class="text-body">제조사 : </strong> Korea
                          </li>
                        </ul>
                        <!-- 상세내용 끝 -->
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="shippingTab">
                <div class="row justify-content-center py-9">
                  <div class="col-12 col-lg-10 col-xl-8">

                    <!-- Table -->
                    <!-- 배송과 반품 -->
                    <div class="table-responsive">
                      <table class="table table-bordered table-sm table-hover">
                        <thead>
                          <tr>
                            <th>배달 옵션</th>
                            <th>배달 시간</th>
                            <th>가격</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Standard Delivery</td>
                            <td>Delivery in 5 - 7 working days</td>
                            <td>3,000원</td>
                          </tr>
                          <tr>
                            <td>Express Delivery</td>
                            <td>Delivery in 3 - 5 working days</td>
                            <td>10,000원</td>
                          </tr>
                          <tr>
                            <td>무료 배송</td>
                            <td>
                              10만원 이상 구매 시 무료배송
                            </td>
                            <td>무료배송</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <!-- 배송과 반품 끝 -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <br/><br/><br/><br/><br/><br/><br/>
   <br/><br/><br/><br/><br/><br/><br/>
   <!-- PRODUCTS -->
    <section class="pt-11">
      <div class="container">
        <div class="row">
          <div class="col-12" style="margin-top: 200px;">

            <!-- Heading -->
            <h4 class="mb-10 text-center">유사 상품</h4>

            <!-- Items -->
            <div class="row">
              <div class="col-6 col-sm-6 col-md-4">

                <!-- Card -->
                <div class="card mb-7 mb-md-0">

                  <!-- Image -->
                  <img class="card-img-top" src="/resources/img/products/lamp/심플 사각2.jpg" alt="...">

                  <!-- Body -->
                  <div class="card-body px-0 pb-0 bg-white">
                    <div class="row no-gutters">
                      <div class="col">

                        <!-- Title -->
                        <a class="d-block font-weight-bold text-body" href="product.html">
                          title
                        </a>

                        <!-- Category -->
                        <a class="font-size-xs text-muted" href="shop.html">
                                귀걸이
                        </a>

                      </div>
                      <div class="col-auto">

                        <!-- Price -->
                        <div class="font-size-sm font-weight-bold text-muted">
                          <c:out value="${product.p_price}" />
                        </div>
                        <input type="hidden" id="p_no" name="p_no" value="${product.p_no }">
                        <sec:authorize access="isAuthenticated()">
                           <input type="hidden" id="m_no" name="m_no" value='<sec:authentication property="principal.member.m_no"/>'>
                        </sec:authorize>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- PRODUCTS end -->
              
            </div>

          </div>
        </div>
      </div>
    </section>
<br/><br/><br/><br/><br/><br/><br/><br/>
    
    <script>
       $(document).ready(function(e){
          var csrfHeaderName = "${_csrf.headerName}";
          var csrfTokenValue = "${_csrf.token}";
          
          $("#buy").on("click",function(e){
             var p_no = $("#p_no").val();
             var m_no = $("#m_no").val();
             var s_count = $("#s_count option:selected").val();
             if(m_no == null)
               {
                self.location="/member/login";
               }
             if(s_count == null)
               {
                  alert("매진 되었습니다.");
                  return false;
               }
             $.ajax({
               type : 'post',
               url:'/payment/shopcart',
               beforeSend:function(xhr){
                     xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
                  },
               dataType:'json',
               data : ({
                  "p_no" : p_no, 
                  "m_no" : m_no, 
                  "s_count" : s_count
                  }),
                  
               success : function(data){
                  if(data.count > 0)
                  {
                     self.location="/payment/shopcart?m_no="+m_no;
                  }
                  else
                    {
                          alert("5개 이상 구입할 수 없습니다.");
                    }
               }
            });
          });
       });
    </script>
      
<%@ include file="../includes/footer.jsp" %>