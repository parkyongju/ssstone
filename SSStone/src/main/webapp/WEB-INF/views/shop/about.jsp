<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../includes/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
   
    <!-- BREADCRUMB -->
    <nav class="my-5">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item"> <a class="text-gray-400" href="/shop/main">Home</a> </li>
              <li class="breadcrumb-item active"> <a class="text-gray-400" href="/shop/about"> About Us </a></li>
            </ol>

          </div>
        </div>
      </div>
    </nav>
    <!-- BREADCRUMB end-->

    <!-- WELCOME -->
    <section>
      <div class="container">
        <div class="row justify-content-center py-14 bg-cover" style="background-image: url(/resources/img/about/paper.jpg);">
          <div class="col-6 col-md-8 col-lg-6 col-xl-5">

            <!-- Heading -->
            <h1 class="mb-0 text-center" style="color:#58D3F7">
              Get to Know Us a Little Better
            </h1>

          </div>
        </div>
      </div>
    </section>

    <!-- OUR STORY -->
    <section class="py-12">
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-12 col-md-6">

            <!-- Image -->
            <img src="/resources/img/about/study2.jpg" alt="..." class="img-fluid w-50">

            <!-- Image -->
            <div class="text-right mt-n13 mt-lg-n15 mb-10 mb-md-0">
              <img src="/resources/img/about/study3.jpg" alt="..." class="img-fluid w-75">
            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-5">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-gray-400">
              Our story
            </h6>

            <!-- Heading -->
            <h2 class="mb-7">A growing story</h2>

            <!-- Text -->
            <p class="font-size-lg text-muted">
             모든 회사에게는 성격이 있습니다.<br/>
             우리는 겸손하지만 자신감이 있습니다.<br/>
             또한, 우리가 수행하는 모든 프로젝트에서 <br/>
             혁신적인 사고와 열린 의사소통을 하는 것, <br/>하지만 제일 중요하게 생각하는 것은 <br/>바로 서로의 모습입니다. <br>
            </p>
            <p class="mb-0 font-size-lg text-muted">
        성공하는 저희의 모습을 응원해주세요.<br/>
            </p>

          </div>
        </div>
      </div>
    </section>

    <!-- ABOUT -->
    <section class="py-12 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h2 class="mb-10">What is an accessory?</h2>

          </div>
        </div>
        <div class="row justify-content-center mb-9 font-size-lg text-gray-500">
          <div class="col-12 col-md-5">

            <p>
             치장을 위해 만들어진 물건,<br/>
             일반적으로 치장 이외의 용도는 전혀 없다.<br/>
            </p>
            <p class="mb-md-0">
             하지만, 치장용품인 화장품과는 다른데<br/>
             화장품이 바르고 붙이는 것이라면<br/>
             악세사리는 끼우고 <br/>달 수 있는 것이라는 차이가 있다. <br/> 
            </p>

          </div>
          <div class="col-12 col-md-6 col-lg-5 font-size-lg text-gray-500">

            <p>
               주로 아름다움을 위해 하는 것이며, <br/>
               그 아름다움의 더욱 효과를 보게 하기위해 <br/>
               치장하기도 한다는 뜻에서 <br/>
               악세사리의 뜻이 비롯되어 있다.<br/> 
            </p>
            <p class="mb-0">
           결론으로, 악세사리는<br/>
        당신이 꾸미는 모습에 다르게 보이는게 아닌<br/>
        그 악세사리가 당신의 코디만큼<br/>
        그 코디의 알맞음이 될 것이다. <br/>
            </p>

          </div>
        </div>
        <div class="row">
          <div class="col-12 text-center">

            <!-- Button -->
            <a class="btn btn-dark" href="main" title="쇼핑">
              Go To Shop <i class="fe fe-arrow-right ml-2"></i>
            </a>

          </div>
        </div>
      </div>
    </section>

    <!-- OUR STORY -->
    <section class="py-12">
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-12 col-md-6 order-md-2 text-right">


          

          </div>
          <div class="col-12 col-md-6 col-lg-5 order-md-1">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-gray-400">
              Who we are
            </h6>

            <!-- Heading -->
            <h2 class="mb-7">Our Story</h2>

            <!-- Text -->
            <p class="font-size-lg text-muted">
              2019년 11월 25일<br/> 왕십리에서 처음 만나 java부터 공부를 시작.<br/>
              2020년 2월 25일<br/> 처음 조를 선별 받아 SSStone을 제작하게 되었습니다.
              
            </p>
            <p class="mb-0 font-size-lg text-muted">
               
              
                  각자 역할 <br>
                <table>
                <tr>
                     
            <td><img src="/resources/img/about/male.jpg" height="200"><br>정우:팀장 및 프론트</td>
            <td><img src="/resources/img/about/female.jpg" height="200"><br>유진:프론트 및 디비</td>
            </tr>
            <tr>
            <td><img src="/resources/img/about/male.jpg" height="200"><br>용주:백</td>
            <td><img src="/resources/img/about/male.jpg" height="200"><br>경호:프론트 및 백</td>
            <td><img src="/resources/img/about/female.jpg" height="200"><br>수현:정보 수집</td>
            </tr>
               </table>
             </div>
        </div>
      </div>
    </section>

    <!-- SLOGAN -->
    <section>
      <div class="container">
        <div class="row justify-content-center py-11 bg-primary bg-pattern">
          <div class="col-12 col-lg-10 col-xl-8">

            <!-- Text -->
            <p class="font-size-h5 line-height-base text-center text-white">
              The greatest friend of Truth is time, <br/>
              her greatest enemy is Prejudice,<br/>
              and her constant companion Humility.<br/>      
            </p>

          </div>
        </div>
      </div>
    </section>

    <!-- IMAGES -->
    <section class="pt-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-6 col-lg-5">

            <!-- Image -->
            <img class="img-fluid mb-7" src="/resources/img/about/study.jpg" alt="...">

            <!-- Image -->
            <img class="img-fluid mb-7 mb-md-0" src="/resources/img/about/study2.jpg" alt="...">

          </div>
          <div class="col-12 col-md-6 col-lg-5">

            <!-- Image -->
            <img class="img-fluid mb-7 mt-md-12" src="/resources/img/about/study3.jpg" alt="...">

            <!-- Image -->
            <img class="img-fluid mb-7 mb-md-0" src="/resources/img/about/study4.jpg" alt="...">

          </div>
        </div>
      </div>
    </section>

    <%-- <!-- REVIEWS -->
    <section class="pt-12">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-gray-400">
              What buyers say
            </h6>

            <!-- Heading -->
            <h2 class="mb-10">
              Customers Reviews
            </h2>

            <!-- Slider -->
            <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" data-flickity='{"prevNextButtons": true, "pageDots": true}'>

              <!-- Item -->
              <blockquote class="blockquote col-12">
                <p class="mb-6">
                  Given wherein. Doesn't called also and air sea to make first subdue
                  beginning. Appear seasons the it after whose beginning. Hath can't good life. They're multiply made give divided open, be likeness Cattle be have.
                  Life tree darkness. She'd very.
                </p>
                <footer class="blockquote-footer">
                  Darrell Baker, <time datetime="2019-05-18">18 May 2019</time>
                </footer>
              </blockquote>

              <!-- Item -->
              <blockquote class="blockquote col-12">
                <p class="mb-6">
                  Given wherein. Doesn't called also and air sea to make first subdue
                  beginning. Appear seasons the it after whose beginning. Hath can't good life. They're multiply made give divided open, be likeness Cattle be have.
                  Life tree darkness. She'd very.
                </p>
                <footer class="blockquote-footer">
                  Darrell Baker, <time datetime="2019-05-18">18 May 2019</time>
                </footer>
              </blockquote>

              <!-- Item -->
              <blockquote class="blockquote col-12">
                <p class="mb-6">
                  Given wherein. Doesn't called also and air sea to make first subdue
                  beginning. Appear seasons the it after whose beginning. Hath can't good life. They're multiply made give divided open, be likeness Cattle be have.
                  Life tree darkness. She'd very.
                </p>
                <footer class="blockquote-footer">
                  Darrell Baker, <time datetime="2019-05-18">18 May 2019</time>
                </footer>
              </blockquote>

            </div>

          </div>
        </div>
      </div>
    </section> --%>

    <!-- SOCIAL -->
    <section class="pt-12">
      <div class="container bg-h-100" style="background-image: url(/resources/img/covers/cover-15.jpg);">
        <div class="row">
          <div class="col-12 py-13 text-center">

            <!-- Button -->
            <a href="/shop/about" class="btn btn-white px-8">@SSStone</a>

          </div>
        </div>
      </div>
    </section>

    
   
   <%@ include file="../includes/footer.jsp" %>