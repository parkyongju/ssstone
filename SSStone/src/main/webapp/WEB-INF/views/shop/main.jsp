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
   <!-- SLIDER -->
    <section>
      <div data-flickity='{"prevNextButtons": true, "fade": true, "freeScroll":true, "wrapAround":true, "autoPlay":2500}'>

        <!-- Item -->
        <div class="w-100 bg-cover" style="background-image: url(/resources/img/covers/cover-5.jpg);">
          <div class="container d-flex flex-column">
            <div class="row align-items-center py-12" style="min-height: 550px;">
              <div class="col-12 col-md-6 col-lg-5 col-xl-4 offset-md-1">

                <!-- Heading -->
                <h1>이쁜악세사리</h1>

                <!-- Heading -->
                <h2 class="display-1 text-primary">SSStone</h2>

                <!-- Button -->
                <a class="btn btn-dark" href="/product/shop">
                  Shop Now <i class="fe fe-arrow-right ml-2"></i>
                </a>

              </div>
            </div>
          </div>
        </div>

        <!-- Item -->
        <div class="w-100 bg-cover" style="background-image: url(/resources/img/covers/배너.jpg);">
          <div class="container d-flex flex-column">
            <div class="row align-items-center py-12" style="min-height: 550px;">
              <div class="col-12 col-md-6 col-lg-5 col-xl-4 offset-md-n1">

                <!-- Heading -->
                <h1 class="mb-5">Spring Collection</h1>

                <!-- Text -->
                <p class="mb-8 font-size-lg text-gray-500">
                     싱그러운 봄, 예쁜 주얼리와 함께!
                </p>

                <!-- Button -->
                <a class="btn btn-dark" href="/product/shop">
                  Shop Now <i class="fe fe-arrow-right ml-2"></i>
                </a>

              </div>
            </div>
          </div>
        </div>

        <!-- Item -->
        <div class="w-100 bg-cover" style="background-image: url(/resources/img/covers/cover-16.jpg);">
          <div class="bg-dark-20">
            <div class="container d-flex flex-column">
              <div class="row align-items-center justify-content-end" style="min-height: 550px;">
                <div class="col-12 text-center text-white">

                  <!-- Preheading -->
                  <h4 class="mb-0">나를 더 빛나게 해주는</h4>

                  <!-- Heading -->
                  <h1 class="display-1">
                    SSStone
                  </h1>

                  <!-- Links -->
                  <p class="mb-0">
                    <a href="/product/shop" class="link-underline text-reset mx-4 my-4">Shop Now</a>
                  </p>

                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="pt-8" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="container-fluid px-3 px-md-6">
        <div class="row mx-n3">
        
        <!-- 귀걸이 -->
          <div class="col-12 col-sm-4 d-flex flex-column px-3">

            <!-- Card-->
            <div class="card card-xl mb-3 mb-sm-0" style="min-height: 280px">

              <!-- Background -->
              <div class="card-bg">
                <div class="card-bg-img bg-cover" style="background-image:url(/resources/img/products/product-34.jpg)"></div>
              </div>

              <!-- Body -->
              <div class="card-body my-auto">

                <!-- Heading -->
                <h5 class="mb-0">반지</h5>

                <!-- Link -->
                <a class="btn btn-link stretched-link px-0 text-reset" href="/product/shop?p_category1=반지&p_category2=">
                  Shop Now <i class="fe fe-arrow-right ml-2"></i>
                </a>

              </div>

            </div>

          </div>
          <div class="col-12 col-sm-4 d-flex flex-column px-3">

            <!-- Card-->
            <div class="card card-xl mb-3 mb-sm-0" style="min-height: 280px;">

              <!-- Background -->
              <div class="card-bg">
                <div class="card-bg-img bg-cover" style="background-image: url(/resources/img/products/product-84.jpg);"></div>
              </div>

              <!-- Body -->
              <div class="card-body my-auto">

                <!-- Heading -->
                <h5 class="mb-0">목걸이</h5>

                <!-- Link -->
                <a class="btn btn-link stretched-link px-0 text-reset" href="/product/shop?p_category1=목걸이&p_category2=">
                  Shop Now <i class="fe fe-arrow-right ml-2"></i>
                </a>

              </div>

            </div>

          </div>
          <div class="col-12 col-sm-4 d-flex flex-column px-3">

            <!-- Card-->
            <div class="card card-xl bg-cover bg-hover" style="min-height: 280px;">

              <!-- Background -->
              <div class="card-bg">
                <div class="card-bg-img bg-cover" style="background-image: url(/resources/img/products/product-17.jpg);"></div>
              </div>

              <!-- Body -->
              <div class="card-body my-auto">

                <!-- Heading -->
                <h5 class="mb-0">시계</h5>

                <!-- Link -->
                <a class="btn btn-link stretched-link px-0 text-reset" href="/product/shop?p_category1=시계&p_category2=">
                  Shop Now <i class="fe fe-arrow-right ml-2"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="pt-8" style="font-family: 'Do Hyeon', sans-serif;">
    
      <div class="container">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h2 class="mb-10 text-center">HOT<span style="color:#F16D4C"><i class="fas fa-sun fa-1g"></i></span></h2>

          </div>
        </div>
      </div>
        <div class="row">
          <div class="col-12 col-md-6">
            
            <!-- 품절임박 상품 카드 -->
            <div class="card card-lg">
              <!-- Image -->
              <c:forEach items="${read}" var="read" begin="0" end="0">
              <img src='/display?fileName=<c:out value="${read.p_filepath}"/>/<c:out value="${read.p_uuid}"/>_<c:out value="${read.p_filename}"/>'
                    alt="..." height="565px;" width="520px;">
              
              <!-- Body -->
              <div class="card-body position-relative mx-6 mx-lg-11 mt-n11 bg-white text-center">

                <!-- Heading -->
                <h4 class="mb-0">품절 임박 아이템!!</h4>

                <!-- Link -->
                <a class="btn btn-link stretched-link px-0 text-reset" href="/product/product?pageNum=1&amount=15&type=&keyword=&p_no=<c:out value="${read.p_no}"/>">
                     보러 가기 <i class="fe fe-arrow-right ml-2"></i>
                </a>
                </c:forEach>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-6">

            <!-- Card -->
            <div class="card card-lg">

              <!-- Circle -->
              <div class="card-circle card-circle-lg card-circle-right">
                <span class="font-size-h6 font-weight-bold">HOT!</span>
              </div>

              <!-- Image -->
              <c:forEach items="${readHot}" var="readHot" begin="0" end="0">
              <img src='/display?fileName=<c:out value="${readHot.p_filepath}"/>/<c:out value="${readHot.p_uuid}"/>_<c:out value="${readHot.p_filename}"/>'
                    alt="..." height="565px;" width="520px;">
              
              <!-- Body -->
              <div class="card-body position-relative mx-6 mx-lg-11 mt-n11 bg-white text-center">

                <!-- Heading -->
                <h4 class="mb-0">인기 아이템!!</h4>

                <!-- Link -->
                <a class="btn btn-link stretched-link px-0 text-reset" href="/product/product?pageNum=1&amount=15&type=&keyword=&p_no=<c:out value="${readHot.p_no}"/>">
                     보러 가기 <i class="fe fe-arrow-right ml-2"></i>
                </a>
                </c:forEach>
              </div>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- ARRIVALS -->
    <section class="pt-1" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h2 class="mb-10 text-center">NEW<span style="color:#F4FA58"><i class="fas fa-splotch fa-1g"></i></span></h2>

          </div>
        </div>
      </div>
      <div class="flickity-page-dots-progress" data-flickity='{"pageDots": true, "freeScroll":true, "wrapAround":true}'>
      <c:forEach items="${readNew}" var="readnew" begin="0" end="7" step="1">
        <!-- Item -->
        <div class="col" style="max-width: 300px;">
          <div class="card">

            <!-- Image -->
            <div class="card-img">

              <!-- Link -->
              <button class="btn btn-xs btn-block btn-dark card-btn" 
                 onclick="location.href='/product/product?pageNum=1&amount=15&type=&keyword=&p_no=<c:out value='${readnew.p_no}'/>'">
                <i class="fe fe-arrow-right ml-2"></i> 보러 가기
              </button>

              <!-- Image -->
            <img src='/display?fileName=<c:out value="${readnew.p_filepath}"/>/<c:out value="${readnew.p_uuid}"/>_<c:out value="${readnew.p_filename}"/>'
                    alt="..." height="392px;" width="268px;">
            </div>

            <!-- Body -->
            <div class="card-body font-weight-bold text-center">
              <a class="text-body" href="/product/shop"><c:out value="${readnew.p_name}"/></a><br>
              <span class="text-muted"><c:out value="${readnew.p_category1}"/><br><c:out value="${readnew.p_price}"/>&#8361;</span>
            </div>
          </div>
        </div>
      </c:forEach>
      </div>
    </section>
    <!-- CATEGORIES -->
    <section class="py-12" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h2 class="mb-4 text-center">카테고리</h2>

            <!-- Nav -->
            <div class="nav justify-content-center mb-10">
              <a class="nav-link active" href="#topSellersTab" data-toggle="tab">귀걸이</a>
              <a class="nav-link" href="#topSellersTab2" data-toggle="tab">목걸이</a>
              <a class="nav-link" href="#topSellersTab3" data-toggle="tab">팔찌</a>
              <a class="nav-link" href="#topSellersTab4" data-toggle="tab">시계</a>
              <a class="nav-link" href="#topSellersTab5" data-toggle="tab">반지</a>
              <a class="nav-link" href="#topSellersTab6" data-toggle="tab">헤어</a>
            </div>

            <!-- Content -->
            <div class="tab-content">

              <!-- Pane 귀걸이 -->
              <div class="tab-pane fade show active" id="topSellersTab" >

                <!-- Slider -->
                <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" style="display:flex; justify-content:center">

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px;" class="card-img-top" src="/resources/img/products/금귀걸이.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=귀걸이&p_category2=골드">
                          <h6>골드</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/은귀걸이.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=귀걸이&p_category2=실버">
                          <h6>실버</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/써지컬귀걸이.png" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=귀걸이&p_category2=써지컬">
                          <h6>써지컬</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/ALL.png" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=귀걸이&p_category2=">
                          <h6>전체상품</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end 귀걸이 -->
              
              
              <!-- Pane 목걸이 -->
              <div class="tab-pane fade" id="topSellersTab2">

                <!-- Slider -->
                <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" style="display:flex; justify-content:center">

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/금목걸이.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=목걸이&p_category2=골드">
                          <h6>골드</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/은목걸이.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=목걸이&p_category2=실버">
                          <h6>실버</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/초커.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=목걸이&p_category2=초커">
                          <h6>초커</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/써지컬목걸이.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=목걸이&p_category2=써지컬">
                          <h6>써지컬</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/ALL.png" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=목걸이&p_category2=">
                          <h6>전체상품</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end 목걸이 -->
         
         <!-- Pane 팔찌 -->
              <div class="tab-pane fade" id="topSellersTab3">

                <!-- Slider -->
                <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" style="display:flex; justify-content:center">

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/금팔찌.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=팔찌&p_category2=골드">
                          <h6>골드</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/은팔찌.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=팔찌&p_category2=실버">
                          <h6>실버</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/게르마늄팔찌.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=팔찌&p_category2=게르마늄">
                          <h6>게르마늄</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/써지컬팔찌.png" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=팔찌&p_category2=써지컬">
                          <h6>써지컬</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/ALL.png" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=팔찌&p_category2=">
                          <h6>전체상품</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end 팔찌 -->
         
              <!-- Pane 시계 -->
              <div class="tab-pane fade" id="topSellersTab4">

                <!-- Slider -->
                <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" style="display:flex; justify-content:center">

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/가죽시계.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=시계&p_category2=가죽">
                          <h6>가죽</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/메탈시계.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=시계&p_category2=메탈">
                          <h6>메탈</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/ALL.png" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=시계&p_category2=">
                          <h6>전체상품</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end 시계-->
              
              <!-- Pane 반지 -->
              <div class="tab-pane fade" id="topSellersTab5">

                <!-- Slider -->
                <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" style="display:flex; justify-content:center">
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/금반지.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=반지&p_category2=골드">
                          <h6>골드</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/은반지.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=반지&p_category2=실버">
                          <h6>실버</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/써지컬반지.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=반지&p_category2=써지컬">
                          <h6>써지컬</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/ALL.png" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=반지&p_category2=">
                          <h6>전체상품</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end 반지 ->

              <!-- Pane 헤어 -->
              <div class="tab-pane fade" id="topSellersTab6">

                <!-- Slider -->
                <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" style="display:flex; justify-content:center">

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/헤어끈.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=헤어&p_category2=끈">
                          <h6>헤어끈</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/곱창밴드.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=헤어&p_category2=곱창밴드">
                          <h6>곱창밴드</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/헤어밴드.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=헤어&p_category2=헤어벤드(머리띠)">
                          <h6>헤어밴드</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/반다나.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=헤어&p_category2=반다나">
                          <h6>반다나</h6>
                        </a>
                      </div>
                    </div>
                  </div>

                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/헤어핀.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">
                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=헤어&p_category2=헤어핀">
                          <h6>헤어핀</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/집게핀.jpg" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=헤어&p_category2=집게핀">
                          <h6>집게핀</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                  
                  <!-- Item -->
                  <div class="col" style="max-width: 200px;">
                    <div class="card">

                      <!-- Image -->
                      <img style="height:160px" class="card-img-top" src="/resources/img/products/ALL.png" alt="...">

                      <!-- Body -->
                      <div class="card-body py-4 px-0 text-center">

                        <!-- Heading -->
                        <a class="stretched-link text-body" href="/product/shop?p_category1=헤어&p_category2=">
                          <h6>전체상품</h6>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end 헤어 -->
            </div>
          </div>
        </div>
      </div>
    </section>
   
<%@ include file="../includes/footer.jsp" %>