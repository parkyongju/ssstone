<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
   <%@ include file="../includes/adminheader.jsp" %>
   <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

   <!-- BREADCRUMB -->
    <nav class="py-5" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item">
                <a class="text-gray-400" href="index.html">Home</a>
              </li>
              <li class="breadcrumb-item active">
                   관리자 회원가입
              </li>
            </ol>

          </div>
        </div>
      </div>
    </nav>

    <!-- CONTENT -->
    <section class="pt-7 pb-12" style="margin-left:12%; font-family: 'Do Hyeon', sans-serif;">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h3 class="mb-10 mr-13">관리자 회원가입</h3>

          </div>
        </div>
        
            <!-- Form -->
            <form method="post" action="/admin/adminSignUp" role="form">
              <div class="row">
                <div class="col-9">
                  <!-- Email -->
                  <div class="form-group">
                    <label for="accountEmail">
                      ID *
                    </label>
<<<<<<< HEAD
                    <input class="form-control form-control-sm" id="accountEmail" type="text" maxlength="140" placeholder="ID 혹은 별명 *" name="m_email" required>
              
=======
                    <input class="form-control form-control-sm" id="accountEmail" type="email" maxlength="140" placeholder="Email (ID) *" name="m_email" required>
>>>>>>> refs/remotes/origin/fbwjddn
                  </div>
<<<<<<< HEAD
=======
                </div>
                
                <div style="margin-top:2rem">
                <button type="button" class="btn btn-outline-success btn-sm" style="float:right">중복확인</button>
>>>>>>> refs/remotes/origin/fbwjddn
                </div>
                <!-- /.Email -->
                <div class="col-5">
                  <!-- 비밀번호 확인 -->
                  <div class="form-group">
                    <label for="accountPassword">
                         비밀번호 *
                    </label>
                    <input class="form-control form-control-sm" id="accountPassword" type="password" maxlength="50" placeholder="비밀번호 *" required >
                  </div>
            </div>
            
                <div class="col-5">

                  <!-- Password -->
                  <div class="form-group">
                    <label for="accountConfirmPassword">
                        비밀번호 확인 *
                    </label>
                    <input class="form-control form-control-sm" id="accountConfirmPassword" type="password" maxlength="50" placeholder="비밀번호 확인 *" required name="m_password">
                  </div>

                </div>
                
                <div class="col-5">
                  <!-- 이름 -->
                  <div class="form-group">
                    <label for="accountName">
                         이름 *
                    </label>
                    <input class="form-control form-control-sm" id="accountName" type="text" maxlength="25" placeholder="이름 *" name="m_name" required>
                  </div>
                  <!-- /.이름 -->
            </div>
                
                <div class="col-4">
                  <!-- 번호 -->
                  <div class="form-group">
                    <label for="AccountNewPhone">
                         회사 번호 *
                    </label>
                    <div>
                    <div class="col-7" style="display:flex; width:290px">
                    <input class="form-control form-control-sm" id="AccountNewPhone" value="010" type="text" maxlength="3" required readonly="readonly" name="m_phone1">
                    <input class="form-control form-control-sm" id="AccountNewPhone" value="7777" type="text" maxlength="4" required readonly="readonly" name="m_phone2">
                    <input class="form-control form-control-sm" id="AccountNewPhone" value="7777" type="text" maxlength="4" required readonly="readonly" name="m_phone3">
                  </div>
                </div>
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
                        <label class="sr-only" for="accountYear">
                             년
                        </label>
                        <select class="custom-select custom-select-sm" id="accountYear" name="m_birth1">
                          <c:forEach var="i" begin="1940" end="2020" step="1"> 
                          <option value='<c:out value="${i}" />'><c:out value="${i}"/>년</option>
                          </c:forEach>
                        </select>

                        <!-- Date -->
                        <label class="sr-only" for="accountMonth">
                             월
                        </label>
                        <select class="custom-select custom-select-sm" id="accountMonth" name="m_birth2">
                          <c:forEach var="i" begin="1" end="12" step="1"> 
                          <option value='<c:out value="${i}"/>' ><c:out value="${i}"/>월</option>
                          </c:forEach>
                        </select>

                        <!-- Date -->
                        <label class="sr-only" for="accountDate">
                             일
                        </label>
                        <select class="custom-select custom-select-sm" id="accountDate" name="m_birth3">
                          <c:forEach var="i" begin="1" end="31" step="1"> 
                          <option value='<c:out value="${i}"/>'><c:out value="${i}"/>일</option>
                          </c:forEach>
                        </select>
                      </div>
                    </div>
                  </div>
            </div>
                
                <div class="col-2">
                <!-- 우편번호 -->
                  <div class="form-group">
                <label for="accountAddress">
                      회사 우편번호 *
                 </label>
                    <input name="m_address1" class="form-control form-control-sm" id="sample6_postcode" type="text" value="7777" readonly="readonly">
                  </div>
                </div>
               <div class="col-10">
               <!-- 주소 -->
                 <div class="form-group">
                    <input name="m_address2" class="form-control form-control-sm" id="sample6_address" type="text" value="서울특별시  성동구 왕십리로" readonly="readonly">
                 </div>
               </div>

               
               <div class="col-5">
               <!-- 상세주소 -->
                 <div class="form-group">
                    <input name="m_address3" class="form-control form-control-sm" id="sample6_detailAddress" type="text" value="3층 303호 7반" readonly="readonly">
                 </div>
               </div>
                
                <div class="col-6"><!-- 
                  <button class="btn btn-outline-success" type="submit">회원가입</button> -->
                  <button type="submit">회원 가입</button>
                </div>
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" >
              </div>
            </form>
      </div>
    </section>
    
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../includes/adminfooter.jsp" %>