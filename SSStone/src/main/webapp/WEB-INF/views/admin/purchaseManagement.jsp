<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file="../includes/adminheader.jsp"%>

<div id="wrapper">
<div id="page-wrapper">
   <div class="row">
      <div class="col-lg-12">
         <h1 class="page-header">구매 관리</h1>
      </div>
      <!-- /.col-lg-12 -->
   </div>
   <!-- /.row -->
   <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               구매 관리
            </div>
            
            <!-- /.panel-heading -->
            <div class="panel-body">
               <table width="100%" class="table table-striped table-bordered table-hover" id="">
                  <thead>
                     <tr>                        
                        <th>회원아이디</th>
                        <th>회원이름</th>
                        <th>회원전화번호</th>                     
                        <th>회원주소</th>
                        <th>구매날짜</th>
                     </tr>
                  </thead>                  
                  <tbody>                  
                     <tr>                           
                        <td><c:out value="${purchaseMember.m_email }" />
                        <td><c:out value='${purchaseMember.m_name }' />               
                        <td><c:out value='${purchaseMember.m_phone1 }'/>-<c:out value='${purchaseMember.m_phone2 }'/>-<c:out value='${purchaseMember.m_phone3 }'/>
                        <td><c:out value='${purchaseMember.m_address1 }' /> <c:out value='${purchaseMember.m_address2 }' /> <c:out value='${purchaseMember.m_address3 }' />                        
                        <td><fmt:formatDate value='${purchaseMember.pc_date }' pattern='yyyy/MM/dd'/>                                          
                     </tr>                                 
                  </tbody>
               </table> 
               <!-- /.table-responsive -->
            
               <table width="100%" class="table table-striped table-bordered table-hover" id="">
                  <thead>
                     <tr>
                        <th>상품번호</th>                           
                        <th>상품명</th>
                        <th>카테고리1</th>
                        <th>카테고리2</th>
                        <th>상품가격</th>
                        <th>상품재고</th>
                        <th>상품옵션</th>                                                                  
                     </tr>
                  </thead>
                  
                  <tbody>
                     <c:forEach items='${purchaseProduct }' var='purchase'>
                        <tr>
                           <td><c:out value="${purchase.p_no }" />                     
                           <td><c:out value="${purchase.p_name }" />
                           <td><c:out value="${purchase.p_category1 }" />
                           <td><c:out value="${purchase.p_category2 }" />
                           <td><fmt:formatNumber value="${purchase.p_price }" pattern="#,###"/>원
                           <td><c:out value="${purchase.p_stock }"/>
                           <td><c:out value="${purchase.p_option }" />                        
                     </tr>
                     </c:forEach>
                  </tbody>
               </table>
               <!-- /.table-responsive -->
               
               
               <!-- 페이지 처리 -->
      <%--          <div class="bull-right">
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
                    </div> --%>
            </div>
            <!-- /.panel-body -->
         </div>
         <!-- /.panel -->
      </div>
      <!-- /.col-lg-12 -->
   </div>
   
   <!-- page -->
<%--       <form id='actionForm' action="/admin/purchaseManagement" method=get>
         <input type=hidden name='pageNum' value="${pageMaker.cri.pageNum}">
         <input type=hidden name='amount' value="${pageMaker.cri.amount }">
         <input type=hidden name='type' value="${pageMaker.cri.type }">
         <input type=hidden name='keyword' value="${pageMaker.cri.keyword }">
      </form> --%>
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- <script type="text/javascript" src="/resources/js/reply.js"></script>
<script type="text/javascript">

$(document).ready(function() {
   var actionForm = $("#actionForm");
   
   $(".paginate_button a").on("click", function(e){
      e.preventDefault();
      console.log('click');
      actionForm.find("input[name='pageNum']").val($(this).attr("href"));
      actionForm.submit();
   });
   

}); 

</script> -->

<%@ include file="../includes/adminfooter.jsp"%>