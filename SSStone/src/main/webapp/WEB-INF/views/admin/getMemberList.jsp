<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file="../includes/adminheader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title></title>
</head>
<body>
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						회원 <a class="btn btn-dark" href="manager"
							style="font-size: 30px; color: black;"> 관리자 <i
							class="fe fe-arrow-right ml-2"></i>
						</a>
					</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							회원 정보
							<!-- <button id="regBtn" type="button" class="btn btn-xs pull-right">수정</button> -->
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">

							<table class="table table-striped table-bordered table-hover">
								<tr>
									<th>회원 번호</th>
									<td><c:out value="${member.m_no}" /></td>
								</tr>
								<tr>
									<th>회원 이름</th>
									<td><c:out value="${member.m_name}" /></td>
								</tr>
								<tr>
									<th>회원 생년월일</th>
									<td><c:out value="${member.m_birth1}" />/ <c:out
											value="${member.m_birth2}" />/ <c:out
											value="${member.m_birth3}" /></td>

								</tr>
								<tr>
									<th>회원 이메일(ID)</th>
									<td><c:out value="${member.m_email}" /></td>
								</tr>
								<tr>
									<th>회원 주소</th>
									<td><c:out value="${member.m_address1}" /> <c:out
											value="${member.m_address2}" /> <c:out
											value="${member.m_address3}" /></td>
								</tr>
								<tr>
									<th>회원 핸드폰 번호</th>
									<td><c:out value="${member.m_phone1}" />- <c:out
											value="${member.m_phone2}" />- <c:out
											value="${member.m_phone3}" /></td>
								</tr>
								<tr>
									<th>회원 가입일</th>
									<td><fmt:formatDate value="${member.m_regdate }"
											pattern="yyyy/MM/dd" /></td>
								</tr>
								<tr>
									<th>총 구매금액</th>
									<td><fmt:formatNumber value="${memberTotalPurchaseAmount}" pattern="#,###"/>원</td>
								</tr>
								<tr>
									<th>구매물품</th>
									<td>
										<div class="panel-body">
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th>구매번호</th>
													<th>상품번호</th>
													<th>구매날짜</th>
													<th>상품명</th>
													<th>구매금액</th>													
												</tr>
											</thead>
											<tbody>
											<c:forEach items="${memberPurchaseAmount }" var="product">
												<tr>
													<td><c:out value="${product.pc_no}"/></td>
													<td><c:out value="${product.p_no}"/></td>
													<td><fmt:formatDate value="${product.pc_date}" pattern="yyyy/MM/dd"/></td>
													<td><c:out value="${product.p_name}"/></td>
													<td>
														<c:if test="${empty product.purchaseAmount}">
															0원
														</c:if>
														<c:if test="${not empty product.purchaseAmount}">
															<fmt:formatNumber value="${product.purchaseAmount}" pattern="#,###"/>원
														</c:if>
													
													</td>
												</tr>
											</c:forEach>	
											</tbody>
										</table>
										</div>
									</td>
								</tr>
							</table>

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

</body>
</html>