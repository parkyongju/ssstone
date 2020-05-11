   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<%@ include file="../includes/header.jsp" %>
	<%@ include file="../includes/modal.jsp" %>

    <!-- CONTENT -->
    <section class="bg-cover" style="margin-top: 10px; background-image: url(/resources/img/covers/cover-22.jpg);">
      <div class="container d-flex flex-column">
        <div class="row align-items-center justify-content-center min-vh-100 pt-13 pb-12">
          <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center text-white">

            <!-- Heading -->
            <h1>We are Coming Soon</h1>

            <!-- Text -->
            <p class="mb-9 font-size-lg">
              조금만 기다려 주시면 더 나은 서비스를 준비하겠습니다. <br/>
              감사합니다.
            </p>
            
            <p id="time1">  <br/> </p>

             <!-- Counter -->
            <!--<div class="d-flex justify-content-center mb-10" data-countdown data-date="Jan 5, 2021 15:37:25">
              <div class="text-center">
                <div class="font-size-h1 font-weight-bolder" data-days >00</div>
                <div class="heading-xxs">Days</div>
              </div>
              <div class="px-1 px-md-4">
                <div class="font-size-h2 font-weight-bolder">:</div>
              </div>
              <div class="text-center">
                <div class="font-size-h1 font-weight-bolder" data-hours>00</div>
                <div class="heading-xxs">Hours</div>
              </div>
              <div class="px-1 px-md-4">
                <div class="font-size-h2 font-weight-bolder">:</div>
              </div>
              <div class="text-center">
                <div class="font-size-h1 font-weight-bolder" data-minutes>00</div>
                <div class="heading-xxs">Minutes</div>
              </div>
              <div class="px-1 px-md-4">
                <div class="font-size-h2 font-weight-bolder">:</div>
              </div>
              <div class="text-center">
                <div class="font-size-h1 font-weight-bolder" data-seconds>00</div>
                <div class="heading-xxs">Seconds</div>
              </div>
            </div> -->

            <!-- Form -->
            <form>
              <div class="form-row">
                <div class="col-12 col-md">

            <!-- Button -->
            <a class="btn btn-dark" href="/shop/main" title="홈으로">
              Go to Homepage
            </a>

                </div>

              </div>
            </form>

          </div>
        </div>
      </div>
    </section>
    
    <script> 
    
    const countDownTimer = function (id, date) { 
    	var _vDate = new Date(date); 
    	// 전달 받은 일자 
    	var _second = 1000; 
    	var _minute = _second * 60; 
    	var _hour = _minute * 60; 
    	var _day = _hour * 24; 
    	var timer; 
    	
    	function showRemaining() { 
    		
    		var now = new Date(); 
    		var distDt = _vDate - now; 
    		
    		if (distDt < 0) { 
    			clearInterval(timer); 
    			document.getElementById(id).textContent = '해당 이벤트가 종료 되었습니다!'; 
    			return; 
    			} 
    		
    		var days = Math.floor(distDt / _day); 
    		var hours = Math.floor((distDt % _day) / _hour); 
    		var minutes = Math.floor((distDt % _hour) / _minute); 
    		var seconds = Math.floor((distDt % _minute) / _second); 
    		
    		//document.getElementById(id).textContent = date.toLocaleString() + "까지 : "; 
    		document.getElementById(id).textContent = days + '일 '; 
    		document.getElementById(id).textContent += hours + '시간 '; 
    		document.getElementById(id).textContent += minutes + '분 '; 
    		document.getElementById(id).textContent += seconds + '초'; 
    		} 
    	
    	timer = setInterval(showRemaining, 1000); 
    	} 
    
    var dateObj = new Date(); 
    dateObj.setDate(dateObj.getDate() + 1); 
    countDownTimer('time1', '04/01/2021'); 
    // 04/01/2024까지 
  
    </script>

    
    
 <%@ include file="../includes/quickMenu.jsp" %>    
<%@ include file="../includes/footer.jsp" %>