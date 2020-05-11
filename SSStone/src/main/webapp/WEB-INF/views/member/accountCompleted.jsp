<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../includes/header.jsp" %>

    <!-- CONTENT -->
    <section class="py-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center">

            <!-- Icon -->
            <div class="mb-7 font-size-h1">❤️</div>

            <!-- Heading -->
            <h2 class="mb-5">회원가입이 완료 되었습니다!</h2>

            <!-- Text -->
            <p class="mb-7 text-gray-500">
              SSSTONE 가족이 되신걸 환영합니다❤️
            </p>

            <!-- Button -->
            <a class="btn btn-dark" href="/shop/main">
              홈으로 가기
            </a>

          </div>
        </div>
      </div>
    </section>

<%@ include file="../includes/footer.jsp" %>