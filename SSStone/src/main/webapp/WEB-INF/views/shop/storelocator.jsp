<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../includes/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- BREADCRUMB -->
    <nav class="my-5">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item"> <a class="text-gray-400" href="/shop/main">Home</a> </li>
              <li class="breadcrumb-item active"> <a class="text-gray-400" href="/shop/storelocator">Store Locator</a></li>
            </ol>

          </div>
        </div>
      </div>
    </nav>
    <!-- BREADCRUMB end-->


    <!-- HEADER -->
    <section class="pt-7 pb-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-6">

            <!-- Heading -->
            <h3 class="mb-10 text-center">찾아오시는 길</h3>
          </div>
        </div>
      </div>
    </section>

    <!-- MAP -->
    <section class="py-12 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-5 col-lg-4">

            <!-- Card -->
            <div class="card card-xl h-md-0 minh-md-100 mb-10 mb-md-0 shadow" data-simplebar>
              <div class="card-body">

                <!-- Heading -->
                <p class="font-weight-bold">
                  신방빌딩 5층
                </p>

                <p class="text-gray-500">
                  서울특별시 성동구  <br/>
                  왕십리도선동 <br/>
                  무학로2길 54 <br/>
                </p>

                <p>
                  <strong>Phone:</strong> <br>
                  <a class="text-gray-500" href="tel:6-146-389-574">82-10-3113-8419</a>
                </p>

                <p class="mb-0">
                  <strong>Store Hours:</strong> <br>
                  <span class="text-gray-500">오전 9시~ 오후 6시 토,일 휴무</span>
                </p>

              </div>
   
            </div>

          </div>
          <div class="col-12 col-md-7 col-lg-8">

            <!-- Map -->
            <div class="embed-responsive embed-responsive-4by3">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1880.558755730567!2d127.03400115695213!3d37.561897927042075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzfCsDMzJzQzLjgiTiAxMjfCsDAyJzA2LjYiRQ!5e0!3m2!1sko!2skr!4v1587013288242!5m2!1sko!2skr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>

          </div>
        </div>
      </div>
    </section>
    
    
    
    
 <%@ include file="../includes/footer.jsp" %>   