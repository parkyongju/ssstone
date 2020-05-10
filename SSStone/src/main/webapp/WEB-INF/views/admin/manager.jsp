<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<%@ include file="../includes/adminheader.jsp"%>
 super
shining
 stone
<div id="page-wrapper">
   <div class="row">
      <div class="col-lg-12">
         <h1 class="page-header">관리자<a class="btn btn" href="member" style="font-size: 30px; color: black;">
                     회원 <i class="fe fe-arrow-right ml-2"></i>
                </a></h1>
      </div>
      <!-- /.col-lg-12 -->
   </div>
   <!-- /.row -->
   <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               관리자 정보
               <button id="managerRegBtn" type="button" class="btn btn-xs pull-right">관리자등록</button>
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
               <table width="100%"
                  class="table table-striped table-bordered table-hover" id="">
                  <thead>
                     <tr>
                        <th>회원 번호</th>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>생년월일</th>
                        <th>전화번호</th>
                        <th>주소</th>
                        <th>가입일</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach items="${readManager }" var="manager">
                        <tr class=move href=${manager.m_no }>
                           <td><c:out value="${manager.m_no }" />
                           <td><c:out value="${manager.m_email }"></c:out>
                           <td><c:out value="${manager.m_name }" /></td>
                           <td><c:out value="${manager.m_birth1 }"/>-<c:out value="${manager.m_birth2 }"/>-<c:out value="${manager.m_birth3 }"/></td>
                           <td><c:out value="${manager.m_phone1 }"/>-<c:out value="${manager.m_phone2 }"/>-<c:out value="${manager.m_phone3 }"/></td>
                           <td><c:out value="${manager.m_address1 }" /><c:out value="${manager.m_address2 }" /><c:out value="${manager.m_address3 }" /></td>
                           <td><fmt:formatDate value="${manager.m_regdate }" pattern="yyyy/MM/dd"/></td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
               <!-- /.table-responsive -->

            </div>
            <!-- /.panel-body -->
         </div>
         <!-- /.panel -->
      </div>
      <!-- /.col-lg-12 -->
   </div>

</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
<script>
$(document).ready(function() {
	var actionForm = $("#actionForm");
	
	$(".move").on("click",function(e){
		e.preventDefault();
		var m_no = $(this).attr("href");
		self.location ="/admin/getMemberList?m_no=" + m_no;
	});
	$("#managerRegBtn").on("click",function(e){
		self.location ="/admin/adminSignUp";
	});
});
</script>

<%@ include file="../includes/adminfooter.jsp"%>