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
         <h1 class="page-header">상품 목록<a class="btn btn-dark" href="index" style="font-size: 30px; color: black;">
                     관리자 메인 <i class="fe fe-arrow-right ml-2"></i>
                </a></h1>
      </div>
      <!-- /.col-lg-12 -->
   </div>
   <!-- /.row -->
   <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               상품 정보
               <button id="regBtn" type="button" class="btn btn-xs pull-right" onclick="self.location ='/admin/productRegister'">상품 등록</button>
               
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
               <table width="100%"
                  class="table table-striped table-bordered table-hover" id="">
                  <thead>
                     <tr>
                        <th>상품 번호</th>
                        <th>상품 명</th>
                        <th>상품 내용</th>
                        <th>대분류</th>
                        <th>소분류</th>
                        <th>상품 가격</th>
                        <th>상품 수량</th>
                        <th>상품 옵션</th>
                        <th>등록 날짜</th>
                        <th>수정 날짜</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach items="${Read }" var="product">
                        <c:choose>
                           <c:when test="${product.p_stock < 50}">  <!-- 경고 수량  -->
                              <tr style="color: red;">
                                 <td><c:out value="${product.p_no }" /></td>
                                 <td><a href="/admin/productModify?p_no=${product.p_no}"><c:out value="${product.p_name }" /></a></td>
                                 <td><c:out value="${product.p_content }"/></td>
                                 <td><c:out value="${product.p_category1 }"/></td>
                                 <td><c:out value="${product.p_category2 }"/></td>
                                 <td><fmt:formatNumber value="${product.p_price }" pattern="#,###" />원</td>
                                 <td><c:out value="${product.p_stock }"/></td>
                                 <td><c:out value="${product.p_option }"/></td>
                                 <td><fmt:formatDate value="${product.p_regdate }" pattern="yyyy/MM/dd"/></td>
                                 <td><fmt:formatDate value="${product.p_updatedate }" pattern="yyyy/MM/dd"/></td>
                              </tr>
                           </c:when>
                           <c:otherwise>
                              <tr>
                                 <td><c:out value="${product.p_no }" /></td>
                                 <td><a href="/admin/productModify?p_no=${product.p_no}"><c:out value="${product.p_name }" /></a></td>
                                 <td><c:out value="${product.p_content }"/></td>
                                 <td><c:out value="${product.p_category1 }"/></td>
                                 <td><c:out value="${product.p_category2 }"/></td>
                                 <td><fmt:formatNumber value="${product.p_price }" pattern="#,###" />원</td>
                                 <td><c:out value="${product.p_stock }"/></td>
                                 <td><c:out value="${product.p_option }"/></td>
                                 <td><fmt:formatDate value="${product.p_regdate }" pattern="yyyy/MM/dd"/></td>
                                 <td><fmt:formatDate value="${product.p_updatedate }" pattern="yyyy/MM/dd"/></td>
                              </tr>
                           </c:otherwise>
                        </c:choose>
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

<%@ include file="../includes/adminfooter.jsp"%>