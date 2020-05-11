<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../includes/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

   <!-- BREADCRUMB -->
    <nav class="py-5" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item"><a class="text-gray-400" href="/shop/main">Home</a></li>
              <li class="breadcrumb-item"><a class="text-gray-400" href="/member/mypage">My Page</a></li>
              <li class="breadcrumb-item active"><a class="text-gray-400" href="/member/modifyMemberInfo">Modify Member Info</a></li>
            </ol>
          </div>
        </div>
      </div>
    </nav>
   <!-- BREADCRUMB end--> 
    

    <!-- CONTENT -->
    <section class="pt-7" style="margin-left:8%; font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h3 class="mb-10 mr-15">정보수정</h3>

          </div>
         </div>
 
		<div class="row">
		  <div class="col-12 col-md-3" style="right: 60px;">
        <!-- Nav -->
            <nav class="mb-10 mb-md-0">
              <div class="list-group list-group-sm list-group-strong list-group-flush-x">               
              <a class="list-group-item list-group-item-action dropright-toggle" href="/member/mypage?m_no=${m_no}">
                  My Page
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle active" href="/member/modifyMemberInfo?m_no=${m_no} ">
                  회원 정보 수정
                </a>
                <a class="list-group-item list-group-item-action dropright-toggle" href="/member/order?m_no=${m_no}">
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
        </div>

            <!-- Form -->
            <form method ="post" action ="/member/modifyMemberInfo">
            <input type="hidden" name= "m_no" value="${member.m_no }">
              <div class="row" style="width: 800px; left: 200px; bottom: 400px;">
                <div class="col-9">

                  <!-- Email -->
                  <div class="form-group">
                    <label for="m_email">
                      Email (ID) 
                    </label>                   
                    <input class="form-control form-control-sm" name = "m_email" id="m_email" type="text" readonly="readonly" required="required"  value='<c:out value="${member.m_email}"/>' >
              
                  </div>
                </div>
                <!-- /.Email -->
                
                
                <div class="col-5">
                  <!-- 이름 -->
                  <div class="form-group">
                    <label for="accountName">
                      이름 
                    </label>
                    <input class="form-control form-control-sm" id="accountName" name ="m_name" type="text" readonly="readonly" required="required" value='<c:out value="${member.m_name}"/>' placeholder="이름" style="width: 300px">
                  </div>
                  <!-- /.이름 -->
            </div>
                
                <div class="col-6">
                  <!-- 번호 -->
                  <div class="form-group">
                    <label for="AccountNewPhone">
                      번호 *
                    </label>
                    <div>
                    
                    <select class="custom-select custom-select-sm" style="width:30%; float:left" name="m_phone1">                
                       <option selected>010</option>
                       <option>031</option>
                       <option>051</option>
                       <option>070</option>
                       <option>080</option>
                       <option>030</option>
                    </select>
                    <div class="col-7" style="display:flex; width:290px">
                    <input class="AccountNewPhone form-control form-control-sm" name ="m_phone2" value='<c:out value="${member.m_phone2}"/>' id="AccountNewPhone" type="text" maxlength="4" placeholder="0000 *" required >
                    <input class="AccountNewPhone form-control form-control-sm" name ="m_phone3" value='<c:out value="${member.m_phone3}"/>' id="AccountNewPhone" type="text" maxlength="4" placeholder="0000 *" required >
            </div>
                </div>
               </div>
              </div>
              
              <div class="col-5">
                  <!-- 비밀번호 확인 -->
                  <div class="form-group">
                    <label for="m_password">
                      비밀번호 *
                    </label>
                    <input class="form-control form-control-sm" id="m_password" type="password" maxlength="50" placeholder="비밀번호 *" name="m_password" required="required" >
                    <div id="pw_chk"><br/></div>
                  </div>
            </div>
            
            <div class="col-5">
              <!-- Password -->
              <div class="form-group">
                <label for="m_password_rck">
                  비밀번호 확인 *
                </label>
                <input class="form-control form-control-sm" onchange="pw_check(this)" id="m_password_rck" type="password" maxlength="50" placeholder="비밀번호 확인 *" name="m_password_rck" required="required">                          
              </div>
            </div>
           
           <div class="col-12">
             <!-- Birthday -->
             <div class="form-group">

               <!-- Label -->
               <label>생년월일</label>

               <!-- Inputs -->
               <div class="form-row">
                 <div class="col-auto">
                   <!-- Date -->
                   <label class="sr-only" for="accountYear">
                     년
                   </label>                  
                   <input class="form-control form-control-sm" name="m_birth1" value='<c:out value="${member.m_birth1}"/>' readonly="readonly" >                  
               </div>
               
               <div class="col-auto">
                 <!-- Date -->
                 <label class="sr-only" for="accountMonth">
                   월
                 </label>
                 <input class="form-control form-control-sm" name="m_birth2" value='<c:out value="${member.m_birth2}"/>' readonly="readonly" >
               </div>
               
               <div class="col-auto">
                 <!-- Date -->
                 <label class="sr-only" for="accountDate">
                   일
                 </label>
                 <input class="form-control form-control-sm" name="m_birth3" value='<c:out value="${member.m_birth3}"/>' readonly="readonly" >
               </div>
             </div>
           </div>
     </div>
                
       <div class="col-2">
       <!-- 우편번호 -->
         <div class="form-group">
       <label for="accountAddress">
           우편번호 *
        </label>
           <input class="form-control form-control-sm" name ="m_address1" id="sample6_postcode" type="text" placeholder="우편번호 *" value='<c:out value="${member.m_address1}"/>'>
         </div>
       </div>
      <!-- /. 우편번호 -->
      <div style="margin-top:2rem">
         <button type="button" onclick="sample6_execDaumPostcode()" class="btn btn-outline-success btn-sm" style="float:right">우편번호 찾기</button>
      </div>
      
      <div class="col-10">
      <!-- 주소 -->
        <div class="form-group">
           <input class="form-control form-control-sm" name="m_address2" id="sample6_address" type="text"  value='<c:out value="${member.m_address2}"/>' maxlength="50" placeholder="주소 *">
        </div>
      </div>

      
      <div class="col-5">
      <!-- 상세주소 -->
        <div class="form-group">
           <input name = "m_address3" value='<c:out value="${member.m_address3}"/>' class="form-control form-control-sm" id="sample6_detailAddress" type="text" maxlength="50" placeholder="상세주소 *" >
        </div>
      </div>
      
      <div class="col-5">
      <!-- 참고사항 -->
        <div class="form-group">
           <input class="form-control form-control-sm" id="sample6_extraAddress" type="text" placeholder="참고사항 *">
        </div>
      </div>
     
       <!-- 수정버튼 -->
       <div class="col-6" id="allCheck">
         <button id="submitBtn" class="btn btn-outline-success" type="submit">수정완료</button>
       </div>
     </div>
     <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" >
   </form>

</div>
</section>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
//주소
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
    $('.AccountNewPhone').keypress(function(e) 
   { 
      if (e.which && (e.which <= 47 || e.which >= 58) && e.which != 8)
       { 
         e.preventDefault(); 
      }
   }); 
</script>

<script type="text/javascript">
//비밀번호 일치 확인
var pw_passed = true;  // 추후 벨리데이션 처리시에 해당 인자값 확인을 위해

 function pw_check() {
    var pw = document.getElementById("m_password").value;
    var pw2 = document.getElementById("m_password_rck").value;
    var m_email = document.getElementById("m_email").value;

     pw_passed = true;
     
     
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

      //연속성(-) 카운드
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
        break;
    }
}
    return true;
}
 
 //수정버튼
    function allCheck(){
          var f=documemt.Reg_form;
         //submit 버튼 동작
         $("#submitBtn").click(function(){
          if(confirm("회원정보를 변경하시겠습니까?"))
          {
            
             if(pw_passed==false)
             {
                alert("비밀번호를 확인해주세요");
                return false;
             }
           
             else if(f.m_password.value=="")
             {
                alert("비밀번호를 확인해주세요");
                return false;
             }
   
             else
             {
                alert("회원정보가 수정되었습니다.");
                $("#submitBtn").submit();
             }
          }
         });
             
         }
   
</script>


<%@ include file="../includes/footer.jsp" %>