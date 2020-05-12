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
<%@ include file="../includes/header.jsp"%>
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<!-- BREADCRUMB -->
<nav class="py-5 bg-light" style="font-family: 'Do Hyeon', sans-serif;">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Breadcrumb -->
				<ol class="breadcrumb mb-0 font-size-xs text-gray-400">
					<li class="breadcrumb-item"><a class="text-gray-400"
						href="/shop/main">Home</a></li>
					<li class="breadcrumb-item active"><a class="text-gray-400"
						href="/shop/boardList">Board</a></li>
					<li class="breadcrumb-item active">글쓰기</li>
				</ol>

			</div>
		</div>
	</div>
</nav>

<section class="col-12 py-6 bg-light"
	style="font-family: 'Do Hyeon', sans-serif; font-size: 20px">
	<div class="container"
		style="background-color: #fff; border: 1px solid #D8D8D8; border-radius: 10px">
		<div class="row py-3">
			<div class="col-12">
				<h1 class="page-header" style="margin-left: 540px">글쓰기</h1>
				<hr>
			</div>
			<!--  /.col-lg-12 -->
		</div>
		<!--  /.row -->

		<div class="row">
			<div class="col-12">
				<div class="panel panel-default">
					<!--  /.panel-heading -->
					<div class="panel-body">


						<form role="form" action="/shop/registerBoardList" method="post">
							<div class="form-group">
								<label>제목</label> <input class="form-control" name="b_title">
							</div>

							<div class="form-group">
								<label>내용 </label>
								<textarea class="form-control" rows="20" name='b_content'
									style="resize: none;"></textarea>
							</div>

							<div class="form-group">
								<input type="hidden" class="form-control" name="m_no"
									value='<sec:authentication property="principal.member.m_no"/>'
									readonly="readonly">
							</div>
							<input type="hidden" name="${_csrf.parameterName }"
								value="${_csrf.token }">
							<div class="py-3" style="margin-left: 460px">
								<sec:authorize access="hasRole('ROLE_MANAGER')">
									<button type="button" class="btn btn-outline-dark mb-1 btn-s" id="infoRegist">공지사항 등록</button>
								</sec:authorize>
								<button type="submit" class="btn btn-outline-dark mb-1 btn-s ">작성하기</button>
								<button onclick="location.href='/shop/boardList'" type="button"
									class="btn btn-outline-dark mb-1 btn-s" title="게시판으로 돌아가기">이전으로</button>
							</div>

						</form>

					</div>
					<!--  end panel-body  -->
				</div>
				<!--  end panel-body -->
			</div>
			<!--  end panel-body  -->
		</div>
		<!--  /.row -->
	</div>
</section>

<script>
	$(document).ready(function(e){
		var csrfHeaderName = "${_csrf.headerName}";
        var csrfTokenValue = "${_csrf.token}";
		$("#infoRegist").on("click",function(e){
			var b_title = $("input[name='b_title']").val();
			var b_content = $("textarea[name='b_content']").val();
			<sec:authorize access="isAuthenticated()">
				var m_no = '<sec:authentication property="principal.member.m_no"/>';
			</sec:authorize>
			
			$.ajax({
				url : "/shop/infoRegister",
				type : "post",
				beforeSend:function(xhr){
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				datatype : 'json',
				data : {b_title : b_title, b_content : b_content, m_no : m_no},
				success : function(result){
					self.location= "/shop/boardList";
				}
			});
		});
		
	})
</script>

<%@ include file="../includes/footer.jsp"%>