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

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">회원<a class="btn btn-dark" href="manager" style="font-size: 30px; color: black;">
                  	관리자 <i class="fe fe-arrow-right ml-2"></i>
                </a></h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					회원 정보
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
							<c:forEach items="${list }" var="member">
								<tr class='move'  href='<c:out value="${member.m_no }"/>'>
									<td><c:out value="${member.m_no }" />
									<td><c:out value="${member.m_email }"></c:out>
									<td><c:out value="${member.m_name }" />
									<td><c:out value="${member.m_birth1 }"/>-<c:out value="${member.m_birth2 }"/>-<c:out value="${member.m_birth3 }"/>
									<td><c:out value="${member.m_phone1 }"/>-<c:out value="${member.m_phone2 }"/>-<c:out value="${member.m_phone3 }"/>
									<td><c:out value="${member.m_address1 }" /><c:out value="${member.m_address2 }" /><c:out value="${member.m_address3 }" />
									<td><fmt:formatDate value="${member.m_regdate }" pattern="yyyy/MM/dd"/>
							</c:forEach>
						</tbody>
					</table>
					<!-- /.table-responsive -->
					<!-- 페이지 처리 -->
					<div class="bull-right">
                       	<ul class="pagination">
                       		<c:if test="${pageMaker.prev }">
                       			<li class ="paginate_button previous1"><a href="1"> < <</a>
                       			<li class="paginate_button previous"><a href="${pageMaker.startPage-1 }"> < </a>
                       		</c:if>
                       		<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                       			<li class = 'paginate_button ${pageMaker.cri.pageNum==num ?"active":"" }'><a href='${num }'>${num }</a>
                       		</c:forEach>
                       		<c:if test="${pageMaker.next }">
                       			<li class="paginate_button next"><a href="${ pageMaker.endPage +1}"> > </a>
                       			<li class="paginate_button next1"><a href="${ pageMaker.realEnd}"> >> </a>
                       		</c:if>
                       	</ul>
                    </div>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
		<form id='actionForm' action="/admin/member" method=get>
			<input type=hidden name='pageNum' value="${pageMaker.cri.pageNum}">
			<input type=hidden name='amount' value="${pageMaker.cri.amount }">
			<input type=hidden name='type' value="${pageMaker.cri.type }">
			<input type=hidden name='keyword' value="${pageMaker.cri.keyword }">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" >
		</form>
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


<script>
	$(document).ready(function() {
		var actionForm = $("#actionForm");
		
		$(".paginate_button a").on("click", function(e){
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		$(".move").on("click",function(e){
			e.preventDefault();
			actionForm.append("<input type='hidden' name='m_no' value='"+ $(this).attr("href") + "' >");
			actionForm.attr("action", "/admin/getMemberList");
			actionForm.submit();
		});
		$("#managerRegBtn").on("click",function(e){
			self.location ="/admin/adminSignUp";
		})
	});
</script>

<%@ include file="../includes/adminfooter.jsp"%>