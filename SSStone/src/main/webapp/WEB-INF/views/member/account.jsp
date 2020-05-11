<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file="../includes/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- BREADCRUMB -->
    <nav class="py-5">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item"><a class="text-gray-400" href="/shop/main">Home</a></li> 
              <li class="breadcrumb-item"><a class="text-gray-400" href="/member/agreement">Agreement</a></li>                            
              <li class="breadcrumb-item active"><a class="text-gray-400" href="/member/account">New Account</a></li>        
            </ol>
          </div>
        </div>
      </div>
    </nav>
    <!-- BREADCRUMB end -->

<!-- CONTENT -->
<section class="pt-7 pb-12"
	style="margin-left: 12%; font-family: 'Do Hyeon', sans-serif;">
	<div class="container">
		<div class="row">
			<div class="col-12 text-center">

				<!-- Heading -->
				<h3 class="mb-10 mr-15">회원가입</h3>

			</div>
		</div>
		<!-- Form -->
		<form method="post" action="/member/account" role="form"
			name="Reg_form">
			<div class="row">
				<div class="col-9">

					<!-- Email -->
					<div class="form-group" id="id_check2">
						<label for="accountEmail"> Email (ID) * </label> 
						<input
							class="form-control form-control-sm" id="m_email" type="email"
							maxlength="140" placeholder="Email (ID) *" name="m_email"
							required>
						<div id="id_chk">
							<br />
						</div>
					</div>
				</div>
				<div style="margin-top: 2rem">
					
					<button type="button" class="btn btn-outline-dark btn-sm" id="emailBtn" style="float: right; margin-right: 3px;">이메일 발송</button>
				</div>
				<div class="col-9">
					<div class="col-5" style="margin-left: 50%px;">
						<div class="form-group" id="authentication" ></div>
					</div>
				</div>
				<div  id="authdiv">
				</div>
				<!-- /.Email -->
				<input type="hidden" path="random" id="random" value="${random }" />


				<div class="col-5">
					<!-- 이름 -->
					<div class="form-group">
						<label for="accountName"> 이름 * </label> <input
							class="form-control form-control-sm" id="accountName" type="text"
							maxlength="25" placeholder="이름 *" name="m_name" required>
					</div>
					<!-- /.이름 -->
				</div>

				<div class="col-6">
					<!-- 번호 -->
					<div class="form-group">
						<label for="AccountNewPhone"> 번호 * </label>
						<div>
							<select class="custom-select custom-select-sm"
								style="width: 30%; float: left" name="m_phone1">
								<option selected>010</option>
								<option>031</option>
								<option>051</option>
								<option>070</option>
								<option>080</option>
								<option>030</option>
							</select>
							<div class="col-7" style="display: flex; width: 290px">
								<input class="AccountNewPhone form-control form-control-sm"
									name="m_phone2" id="AccountNewPhone" type="text" maxlength="4"
									placeholder="0000 *" required> <input
									class="AccountNewPhone form-control form-control-sm"
									name="m_phone3" id="AccountNewPhone" type="text" maxlength="4"
									placeholder="0000 *" required>
							</div>
						</div>
					</div>
				</div>
				<div class="col-5">
					<!-- 비밀번호 확인 -->
					<div class="form-group">
						<label for="m_password"> 비밀번호 * </label> 
						<input
							class="form-control form-control-sm"
							id="m_password" type="password" maxlength="50"
							placeholder="비밀번호 *" name="m_password" required>
						<div id="pw_chk">
							<br />
						</div>
					</div>
				</div>

				<div class="col-5">

					<!-- Password -->
					<div class="form-group">
						<label for="m_password_rck"> 비밀번호 확인 * </label> <input
							class="form-control form-control-sm"
							id="m_password_rck" type="password" maxlength="50"
							placeholder="비밀번호 확인 *" name="m_password_rck" required>

					</div>

				</div>
				<div class="col-12">

					<!-- Birthday -->
					<div class="form-group">

						<!-- Label -->
						<label>생년월일 *</label>

						<!-- Inputs -->
						<div class="form-row">
							<div class="col-auto">

								<!-- Date -->
								<label class="sr-only" for="accountYear"> 년 </label> <select
									class="custom-select custom-select-sm" id="accountYear"
									name="m_birth1">
									<c:forEach var="i" begin="1940" end="2020" step="1">
										<option id="selectBox" value='<c:out value="${i}"/>'><c:out
												value="${i}" />년
										</option>
									</c:forEach>
								</select>

							</div>
							<div class="col-auto">

								<!-- Date -->
								<label class="sr-only" for="accountMonth"> 월 </label> <select
									class="custom-select custom-select-sm" id="accountMonth"
									name="m_birth2">
									<c:forEach var="i" begin="1" end="12" step="1">
										<option value='<c:out value="${i}"/>'><c:out
												value="${i}" />월
										</option>
									</c:forEach>
								</select>

							</div>
							<div class="col-auto">

								<!-- Date -->
								<label class="sr-only" for="accountDate"> 일 </label> <select
									class="custom-select custom-select-sm" id="accountDate"
									name="m_birth3">
									<c:forEach var="i" begin="1" end="31" step="1">
										<option value='<c:out value="${i}"/>'><c:out
												value="${i}" />일
										</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
				</div>

				<div class="col-2">
					<!-- 우편번호 -->
					<div class="form-group">
						<label for="accountAddress"> 우편번호 * </label> <input
							name="m_address1" class="form-control form-control-sm"
							id="sample6_postcode" type="number" placeholder="우편번호 *" required="required">
					</div>
				</div>
				<!-- /. 우편번호 -->
				<div style="margin-top: 2rem">
					<button type="button" onclick="sample6_execDaumPostcode()"
						class="btn btn-outline-dark btn-sm" style="float: right">우편번호
						찾기</button>
				</div>

				<div class="col-10">
					<!-- 주소 -->
					<div class="form-group">
						<input name="m_address2" class="form-control form-control-sm"
							id="sample6_address" type="text" maxlength="50"
							placeholder="주소 *" required="required">
					</div>
				</div>


				<div class="col-5">
					<!-- 상세주소 -->
					<div class="form-group">
						<input class="form-control form-control-sm"
							id="sample6_detailAddress" type="text" maxlength="50"
							placeholder="상세주소 *" name="m_address3" required="required">
					</div>
				</div>

				<div class="col-5">
					<!-- 참고사항 -->
					<div class="form-group">
						<input class="form-control form-control-sm"
							id="sample6_extraAddress" type="text" placeholder="참고사항 *">
					</div>
				</div>

				<div class="col-6">
					<!-- 
                  <button class="btn btn-outline-success" type="submit">회원가입</button> -->
					<button id="submitBtn" class="btn btn-outline-dark">회원 가입</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName }"
					value="${_csrf.token }">
			</div>
		</form>
	</div>
</section>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
$(document).ready(function(){
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	var m_email = $("#m_email");
	var str = "";
	
	/*
	이메일 인증 버튼 클릭시 발생하는 이벤트
	*/
	$(document).on("click", "#emailBtn", function(){
		var m_email=$("#m_email").val();
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		$.ajax({
			async:true,
			type:'post',
			data: m_email,
			beforeSend:function(xhr){
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
			url:"/member/checkID",
			dataType:'json',
			contentType:"application/json; charset=UTF-8",
			success:function(data)
			{
				if(data.count > 0)
				{
					$("#id_chk").text("이미 존재하는 아이디 입니다.");
					$("#id_chk").css("color", "#dc3545");
					$("#accountEmail").css("color", "#dc3545");
					$("#accountEmail").focus();
				}
				else
				{
					//이메일 형식 확인
					var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
					
					if(exptext.test(m_email)==false)
					{
						$("#accountEmail").css("color", "red");
						$("#id_chk").text("올바르지 않는 형식입니다.");
						$("#id_chk").css("color", "#dc3545");
						$("#accountEmail").focus();
						emailBtn=false;
					}
					else
					{
						$("#id_chk").text("사용 가능한 아이디 입니다.");
						$("#id_chk").css("color", "#007bff");
						$("#accountEmail").focus();
						
						$.ajax({
					        beforeSend: function(){
								loadingBarStart();
							},
							type:"get",
							url : "/email/createEmailCheck",
							data : "userEmail=" + $("#m_email").val() + "&random=" + $("#random").val(),
							//data: "userEmail="+encodeURIComponent($('#userEmail').val()),
							/* encodeURIComponent
							예를들어, http://a.com?name=egoing&job=programmer 에서 &job=programmer
							중 '&'는 하나의 파라미터가 끝나고 다음 파라미터가 온다는 의미이다.
							그런데 다음과 같이 job의 값에 &가 포함된다면 시스템은 job의 값을 제대로 인식할수 없게 된다. */
							success : function(data)
							{
								alert("사용가능한 이메일입니다. 인증번호를 입력해주세요.");
							}
						});
					}
				}
			}
		});
	});
		
	/* 이메일 중복 체크 후 메일 발송 비동기 처리 */

	/*
	이메일 인증번호 입력 후 인증 버튼 클릭 이벤트
	*/
	$(document).on("click", "#emailAuthBtn", function(){
		$.ajax({
			beforeSend: function(){
				loadingBarStart();
			},
			beforeSend:function(xhr){
	        	xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	        },
			type:"get",
			url : "/email/emailAuth",
			data:"authCode=" + $('#emailAuth').val() + "&random=" + $("#random").val(),
			success:function(data){
				if(data=="complete")
				{
					alert("인증이 완료되었습니다.");
					emailBtn=true;
				}
				else if(data == "false")
				{
					alert($('#emailAuth').val());
					alert($("#random").val());
					alert("인증번호를 잘못 입력하셨습니다.")
				}
			},
			complete: function()
			{
				loadingBarEnd();
			}
		});
	});
	var str = "";
	var str1 = "";
	function loadingBarStart()
	{
		str += "<input class='form-control form-control-sm' id='emailAuth' type='email'"+
			"maxlength='140' placeholder='인증번호'>";
		str1 += "<button type='button' class='btn btn-outline-success btn-sm' id='emailAuthBtn' style='float: right; margin-right : 3px;'>이메일 인증</button>";
		$("#authentication").html(str);
		$("#authdiv").html(str1);
		str = "";
		str1 = "";
	}
	function loadingBarEnd()
	{
		str += "";
		$("#authentication").html(str);
		$("#authdiv").html(str);
	}

	var emailBtn=false;
	var pw_passed=false;
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	//회원 정보와 submit버튼 동작을 위한 변수 선언
	//회원 ID(m_email) 중복 체크
	$("#submitBtn").on("click",function(e){
		var check = allCheck();
		if(check == true)
		{
			
			$("#submitBtn").submit();
		}
		else
		{
			return false;
		}
	});
	$("#m_password").on("change",function(e){
		pw_passed = pw_check();
	});
	$("#m_password_rck").on("change",function(e){
		pw_passed = pw_check();
	});
	
	function pw_check() {
		var pw = document.getElementById("m_password").value;
		var pw2 = document.getElementById("m_password_rck").value;
		var m_email = document.getElementById("m_email").value;
		if(pw.length == 0)
		{
			$("#pw_chk").text("비밀번호를 입력해주세요");
			$("#pw_chk").css("color", "#dc3545");
			return false;
		}
		else
		{ 
			//비밀번호 중복 확인
			if(pw != pw2)
			{
				$("#pw_chk").text("비밀번호가 일치하지 않습니다.");
				$("#pw_chk").css("color", "#dc3545");
				return false;
			}
			else
			{
				$("#pw_chk").text("사용 가능한 비밀번호 입니다.");
				$("#pw_chk").css("color", "#007bff");
				return true;
			}
		}
		var pattern1 = /[0-9]/;
		var pattern2 = /[a-zA-Z]/;
		var pattern3 = /[~!@\#$%<>^&*]/;     // 특수문자
		var pw_msg = "";
	
		if(!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)||pw.length<8||pw.length>50)
		{
			
			$("#pw_chk").text("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			$("#pw_chk").css("color", "#dc3545");
			return false;
		}
		if(pw.indexOf(m_email) > -1)
		{
			$("#pw_chk").text("비밀번호는 ID를 포함할 수 없습니다.");
			$("#pw_chk").css("color", "#dc3545");
			return false;
		}
	
		var SamePass_0 = 0; //동일문자 카운트
		var SamePass_1 = 0; //연속성(+) 카운드
		var SamePass_2 = 0; //연속성(-) 카운드
	
		for(var i=0; i < pw.length; i++)
		{
			var chr_pass_0;
			var chr_pass_1;
			var chr_pass_2;
			
			if(i >= 2)
			{
				chr_pass_0 = pw.charCodeAt(i-2);
				chr_pass_1 = pw.charCodeAt(i-1);
				chr_pass_2 = pw.charCodeAt(i);
				//동일문자 카운트
				
				if((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) 
				{
					SamePass_0++;
				}
				else
				{
					SamePass_0 = 0;
				}
				//연속성(+) 카운드
				
				if(chr_pass_0 - chr_pass_1 == 1 && chr_pass_1 - chr_pass_2 == 1)
				{
					SamePass_1++;
				}
				else
				{
					SamePass_1 = 0;
				}
				
				if(chr_pass_0 - chr_pass_1 == -1 && chr_pass_1 - chr_pass_2 == -1)
				{
					SamePass_2++;
				}
				else
				{
					SamePass_2 = 0;
				}
			}
			
			if(SamePass_0 > 0)
			{
				$("#pw_chk").text("동일문자를 3자 이상 연속 입력할 수 없습니다.");
				$("#pw_chk").css("color", "#dc3545");
				pw_passed=false;
			}
			
			if(SamePass_1 > 0 || SamePass_2 > 0 )
			{
				$("#pw_chk").text("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
				$("#pw_chk").css("color", "#dc3545");
				pw_passed=false;
			}
			
			if(!pw_passed)
			{
				return false;
			}
		}
	}
	function allCheck(){
		var f=$("form[name='Reg_form']");
		//submit 버튼 동작
		if(confirm("회원가입을 하시겠습니까?"))
		{
			if(emailBtn==false)
			{
			   alert("아이디 중복체크를 해주세요");
			   return false;
			}
			if(pw_passed==false)
			{
			   alert("비밀번호를 확인해주세요");
			   return false;
			}
			if($("input[name=m_name]").val()=="")
			{
			   alert("이름을 확인해주세요");
			   return false;
			}
			else
			{
			   return true;
			}
		}
	}
});
</script>

<script type="text/javascript">
   $(document).ready(function() {

   $('select[name="m_birth1"]').find('option[value="1999"]').attr("selected",true);

   });
</script>

<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
</script>

<script type="text/javascript">
   //핸드폰 번호 숫자만 입력
	$('.AccountNewPhone').keypress(function(e){
		if (e.which && (e.which <= 47 || e.which >= 58) && e.which != 8)
		{
			e.preventDefault();
		}
	});
</script>




<%@ include file="../includes/footer.jsp"%>