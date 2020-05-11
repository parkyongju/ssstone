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
	   <li class="breadcrumb-item active"><a class="text-reset" href="/member/login">Login</a></li>
	</ol>

<!-- CONTENT -->
<section class="py-12" style="margin-left: 35%">
   <div class="container">
      <div class="row">
         <div class="col-12 col-md-6">
            <!-- Card -->
            <div class="card card-lg mb-10 mb-md-0">
               <div class="card-body">
                  <!-- Heading -->
                  <h6 class="mb-7">Login</h6>
                  <!-- Form -->
                  <form method="post" action="/login">
                     <div class="row">
                        <div class="col-12">
                           <!-- Email -->
                           <div class="form-group">
                              <label class="sr-only" for="loginEmail"> Email Address* </label> 
                              <input class="form-control form-control-sm" name="loginId" id="loginEmail" type="email" placeholder="Email Address *" required>

                           </div>
                        </div>
                        <div class="col-12">
                           <!-- Password -->
                           <div class="form-group">
                              <label class="sr-only" for="loginPassword"> 
                              Password *
                              </label> 
                              <input class="form-control form-control-sm" name="loginPwd" id="loginPassword" type="password" placeholder="Password *" required>
                           </div>
                        </div>
                        <div class="col-12 col-md">
                           <!-- Remember -->
                           <div class="form-group">
                              <div class="custom-control custom-checkbox" style="font-family: 'Do Hyeon', sans-serif">
                                 <input class="custom-control-input" id="loginRemember" type="checkbox" name="remember-me"> 
                                 <label class="custom-control-label" for="loginRemember"> 정보 저장하기 </label>
                              </div>
                           </div>
                        </div>
                        <div class="col-12 col-md-auto">
                           <!-- Link -->
                           <div class="form-group">
                              <a class="font-size-sm" data-toggle="modal" href="#modalPasswordFind" style="font-family: 'Do Hyeon', sans-serif; float: right; font-size: 13px">비밀번호 찾기</a>
                           </div>
                           <!-- Text -->
                           <p><a class="text-reset text-decoration-underline" href="/member/agreement" title="회원가입" onclick="self.location='/member/account'" style="float: right; font-size: 13px; font-family: 'Do Hyeon', sans-serif">
                           ※아직 회원이 아니신가요?</a></p>
                        </div>
                        <input type=hidden name="${_csrf.parameterName }" value="${_csrf.token }">
                        <div class="col-12">
                           <!-- Button -->
                        <button class="login btn btn-outline-border" id="login" type="submit" style="float: left; font-family: 'Do Hyeon', sans-serif">
                           로그인
                        </button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

<!-- MODALS -->
<!-- 비밀번호 변경 모달 -->
	<div id="modalPasswordFind" class="modal fade" tabindex="-1" role="dialog" aria-hidden="false">
	   <div class="modal-dialog modal-dialog-centered" role="document">
	      <div class="modal-content">
	         <!-- Close -->
	         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	            <i class="fe fe-x" aria-hidden="true"></i>
	         </button>
	
	         <div class="modal-header line-height-fixed font-size-lg">
	            <strong class="mx-auto">비밀번호를 잊으셨나요?</strong>
	         </div>
	         <!-- Body -->
	         <div class="modal-body text-center">
	            <!-- Text -->
	            <p class="mb-7 font-size-sm text-gray-500">
	            회원님의 Email (ID)를 입력하세요.
	            </p>
	               <!-- Email -->
	               <div class="form-group">
	                  <label class="sr-only" for="modalPasswordResetEmail"> 
	                  <!-- Email Address * -->
	                  </label> 
	                  <input name="m_email" id="modalPasswordResetEmail" class="form-control form-control-sm" type="email" placeholder="Email (ID) *" required>
	                  <div id="id_chk"><br/></div>
	               </div>
	               <!-- Button -->               
	               <!-- <a  data-toggle="modal" href="#modalPasswordFind" class="btn btn-sm btn-dark" >
	               비밀번호 변경
	               Reset Password   
	               </a> -->
	               <button class="btn-sm btn-dark" id ="excheck">아이디 확인</button>
	               <!-- data-toggle="modal" data-target="#modalPasswordReset" -->
	         </div>
	      </div>
	   </div>
	</div>
	<!-- Password Reset end -->
	
	<!-- 비밀번호 변경창 -->
	<div id="modalPasswordReset" class="modal fade"  tabindex="-1" role="dialog" aria-hidden="false">
	   <div id="lost" class="modal-dialog modal-dialog-centered" role="document">
	      <div class="modal-content">
	         <!-- Close -->
	         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	            <i class="fe fe-x" aria-hidden="true"></i>
	         </button>
	
	         <div class="modal-header line-height-fixed font-size-lg">
	            <strong class="mx-auto">비밀번호를 잊으셨나요?</strong>
	         </div>
	         <!-- Body -->
	         <div class="modal-body text-center">
	            <!-- Text -->
	            <p class="mb-7 font-size-sm text-gray-500">비밀번호를 변경해주세요.</p>
	            <!-- Form -->
	            
	               <!-- password -->
	               <div class="form-group">
	                  <label class="sr-only">
	                   비밀번호*
	                  <!-- password -->
	                  </label> 
	                  <input id="modalPasswordReset1" type="password" placeholder="비밀번호*" class="form-control form-control-sm" required="required">
	                  <div id="pw_chk"><br/></div>
	               </div>
	
	               <div class="form-group">
	                  <label class="sr-only" > 
	                  비밀번호재확인* 
	                  <!-- password recheck -->
	                  </label> 
	                  <input id="modalPasswordReset_rck" name="m_password" type="password" placeholder="비밀번호 확인 *" class="form-control form-control-sm" required="required">
	               </div>
	               <!-- Button -->
	               <button id="passwordBtn" class="btn btn-sm btn-dark" type="submit">
	                  로그인하러 가기
	                  <!-- Reset Password -->
	               </button>
	            
	         </div>
	      </div>
	   </div>
	</div>
<!-- Password Reset end -->


<script>
	$(document).ready(function(){
		var modal1 = $("#modalPasswordFind");
		var modal2 = $("#modalPasswordReset");
		$("#passwordBtn").on("click",function(){
			var m_email = $("#modalPasswordResetEmail").val();
			var m_password = $("#modalPasswordReset_rck").val();
			$.ajax({
	            url:'/member/passwordReset',
	            data : {m_email : m_email, m_password : m_password},
	            dataType : 'text',
	            type : 'get',
	            success : function(result){
	            	modal1.hide();
	            	modal2.hide();
	            	alert("비밀번호가 변경되었습니다.");
	            }
	         });
		});
	});
</script>

<script>
   $(document).ready(function() {
      $(".login").on("click", function(e) {
         e.preventDefault();
         $("form").submit();
      });

   });
</script>

<!-- 비밀번호 변경 -->
<script>
   //회원 ID(m_email) 중복 체크
$(document).ready(function() {
	$("#excheck").on("click",function() {
		var m_email = $("#modalPasswordResetEmail").val();
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";

		$.ajax({
			type : 'post',
			data : m_email,
			beforeSend : function(xhr) {xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);},
			url : "/member/checkID",
			dataType : 'json',
			contentType : "application/json; charset=UTF-8",
			success : function(data) 
			{
		    	if (data.count > 0) 
		    	{
		    		$("#modalPasswordFind").modal("hide");
		    		$("#modalPasswordReset").modal("show");
		    	} 
				else 
				{
				//이메일 형식 확인
				var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
				if (exptext.test(m_email) == false)
				{
					alert("올바르지 않는 형식입니다.");
					$("#modalPasswordFind").modal("show");
					}
				else
				{
					alert("존재하지 않는 아이디 입니다.");
					$("#modalPasswordFind").modal("show");
					}
				}
		    }
		});
	});
});
</script>      
      
<script>
   //비밀번호 일치 확인
$(document).ready(function() {   
	var pw_passed = true; // 추후 벨리데이션 처리시에 해당 인자값 확인을 위해
	
	
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	$("#modalPasswordReset1").on("change",function(e){
		modalPasswordReset();
	});
	$("#modalPasswordReset_rck").on("change",function(e){
		modalPasswordReset();
	});
	function modalPasswordReset()
	{
		pw_passed = true;
		var pw = $("#modalPasswordReset1").val();
		var pw2 = $("#modalPasswordReset_rck").val();
		var m_email = $("#modalPasswordResetEmail").val();
		if (pw.length == 0)
		{
			
			$("#pw_chk").text("비밀번호를 입력해주세요");
			$("#pw_chk").css("color", "#dc3545");
			return false;
		}
		else
		{
			//비밀번호 중복 확인
			if (pw != pw2)
			{
				$("#pw_chk").text("비밀번호가 일치하지 않습니다.");
				$("#pw_chk").css("color", "#dc3545");
				return false;
				}
			else
			{
				$("#pw_chk").text("사용 가능한 비밀번호 입니다.");
				$("#pw_chk").css("color", "#007bff");
			}
		}
		var pattern1 = /[0-9]/;
		var pattern2 = /[a-zA-Z]/;
		var pattern3 = /[~!@\#$%<>^&*]/; // 특수문자
		var pw_msg = "";
		if (!pattern1.test(pw) || !pattern2.test(pw)|| !pattern3.test(pw) || pw.length<8 || pw.length>50)
		{
			$("#pw_chk").text("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			$("#pw_chk").css("color", "#dc3545");
			return false;
		}
		if (pw.indexOf(m_email) > -1)
		{
			$("#pw_chk").text("비밀번호는 ID를 포함할 수 없습니다.");
			$("#pw_chk").css("color", "#dc3545");
			return false;
		}
		var SamePass_0 = 0; //동일문자 카운트
		var SamePass_1 = 0; //연속성(+) 카운드
		var SamePass_2 = 0; //연속성(-) 카운드
	      
		for(var i = 0; i < pw.length; i++)
		{
			var chr_pass_0;
			var chr_pass_1;
			var chr_pass_2;
	      
			if (i >= 2)
			{
				chr_pass_0 = pw.charCodeAt(i - 2);
				chr_pass_1 = pw.charCodeAt(i - 1);
				chr_pass_2 = pw.charCodeAt(i);
				//동일문자 카운트
	      
				if ((chr_pass_0 == chr_pass_1)&& (chr_pass_1 == chr_pass_2))
				{
					SamePass_0++;
				}
				else
				{
					SamePass_0 = 0;
				}
				//연속성(+) 카운드
	      
				if (chr_pass_0 - chr_pass_1 == 1&& chr_pass_1 - chr_pass_2 == 1)
				{
					SamePass_1++;
				}
				else
				{
					SamePass_1 = 0;
				}
				//연속성(-) 카운드
				if (chr_pass_0 - chr_pass_1 == -1&& chr_pass_1 - chr_pass_2 == -1)
				{
					SamePass_2++;
				}
				else
				{
					SamePass_2 = 0;
				}
			}
			if (SamePass_0 > 0)
			{
				$("#pw_chk").text("동일문자를 3자 이상 연속 입력할 수 없습니다.");
				$("#pw_chk").css("color", "#dc3545");
				pw_passed = false;
			}
			if (SamePass_1 > 0 || SamePass_2 > 0)
			{
				$("#pw_chk").text("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
				$("#pw_chk").css("color", "#dc3545");
				pw_passed = false;
			}
			if (!pw_passed)
			{
				return false;
				break;
				}
			}
		return true;
		}
   });
   
   
</script>


<%@ include file="../includes/footer.jsp"%>