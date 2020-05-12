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
<link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/5.7.0/css/font-awesome.min.css">
<link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
<nav class="py-2 bg-light" style="font-family: 'Do Hyeon', sans-serif;">
   <div class="container">
      <div class="row">
         <div class="col-12">
         <input type = "hidden">
            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item"> <a class="text-gray-400" href="/shop/main">Home</a> </li>
              <li class="breadcrumb-item active"> <a class="text-gray-400" href="/shop/boardList">Board</a></li>
            </ol>
         </div>
      </div>
   </div>
</nav>

<!-- CONTENT -->
<section class="col-12 py-6 bg-light" style="font-family: 'Do Hyeon', sans-serif; font-size:20px">
   <div class="container py-6" style="background-color:#fff; border:1px solid #D8D8D8; border-radius:10px">
      <div class="row">
         <div class="col-12">
            <!-- Heading -->
            <div class="panel-heading">
               <button id="regBtn" type="button" class="btn btn-outline-dark btn-xxs pull-right"
                  style="float: right; height:37px; margin-top: 30px;">글쓰기</button>
            </div>
            <h3 class="mb-7 text-center" style="margin-left:100px">SSS 자유 게시판</h3>
         </div>
      </div>
      <!-- /.row -->

      <div class="row">
         <div class="col-12">
            <div class="panel panel-default">
               <!-- /.panel-heading -->
               <div class="panel-body">
                  <table class="table table-bordered table-hover text-center"
                     style="text-align: center" id="">
                     <thead class="thead-dark" style="text-align: center; font-size:1.5rem">
                        <tr>
                           <th style="width: 13%;">번호</th>
                           <th>아이디</th>
                           <th style="width: 55%;">제목</th>
                           <th style="width: 20%;">작성일</th>
                        </tr>
                     </thead>
                     <tbody>
                        <c:forEach items="${list}" var="board">
                           <tr>
                              <td
                                 onClick=" location.href='/shop/getBoardList?b_no=${board.b_no}'">
                                 <c:out value="${board.b_no }"></c:out>
                              </td>
                              <td
                                 onClick=" location.href='/shop/getBoardList?b_no=${board.b_no}'">
                                 <c:out value="${board.m_email}" />
                              </td>
                              <td
                                 onClick=" location.href='/shop/getBoardList?b_no=${board.b_no}'">
                                 <c:out value="${board.b_title}" />
                              </td>
                              <td
                                 onClick=" location.href='/shop/getBoardList?b_no=${board.b_no}'">
                                 <fmt:formatDate pattern="yyyy-MM-dd"
                                    value="${board.b_regdate}" />
                              </td>
                           </tr>
                        </c:forEach>
                     </tbody>
                  </table>
                  <!-- table태그의 끝 -->
               
                  <!-- 검색 -->
                  <div class="row">
                       <div class="col-lg-12">
                        <form action="/shop/boardList" id="searchForm" method="get">
                           <div class="form-group">
                              <select class="custom-select" name='type'>
                                 <option value="form-group"
                                    <c:out value="${pageMaker.cri.type == null?'selected':'' }" />>--</option>
                                 <option value="T"
                                    <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}" />>제목</option>
                                 <option value="C"
                                    <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}" />>내용</option>
                                 <option value="W"
                                    <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}" />>작성자</option>
                                 <option value="TC"
                                    <c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}" />>제목
                                    or 내용</option>
                                 <option value="TW"
                                    <c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}" />>제목
                                    or 작성자</option>
                                 <option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}" />>
                                    제목 or 내용 or 작성자
                                 </option>
                              </select> 
                           </div>
                           <div class="input-group input-group-merge">
                              <input type='search' name='keyword' value='<c:out value="${pageMaker.cri.keyword }" />'class="form-control"  id="keyword" placeholder="Search" /> 
                              <input type='hidden' name='pageNum' value='<c:out value="${pageMaker.boardcri.pageNum}"/>' /> 
                              <input type='hidden' name='amount' value='<c:out value="${pageMaker.boardcri.amount}" />' />
                              <button type="button" class="btn btn-outline-dark"> <i class="fe fe-search"></i>검색</button>
                           </div>
                        </form>
                  </div>
                  <div class="col-12 col-md-auto text-center"></div>
            </div>
         <!-- 검색 끝-->

         <div class="row">
             <div class="col-12">
               <div class="row justify-content-center mt-7">
                  <div class="col-12 text-center">
                     <nav class="d-flex justify-content-center mt-9">
                         <ul class="pagination pagination-sm text-gray-400">
      
                           <c:if test="${pageMaker.prev }">
                              <li class="page-item previous"><a class="page-link page-link-arrow" href="${pageMaker.startPage -1 }">이전</a></li>
                           </c:if>
         
                           <c:forEach var="num" begin="${pageMaker.startPage }"
                              end="${pageMaker.endPage }">
                              <li class="page-item  ${pageMaker.boardcri.pageNum == num ? "active" : ""} "><a
                                 class="page-link" href="${num }">${num }</a></li>
                           </c:forEach>
         
                           <c:if test="${pageMaker.next }">
                              <li class="page-item next"><a
                                 class="page-link page-link-arrow"
                                 href="${pageMaker.endPage +1 }">다음</a></li>
                           </c:if>
                        </ul>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
                  <!--  end Pagination -->
                  
               

                  <form action="/shop/boardList" id='actionForm' method='get'>
                     <input type='hidden' name='pageNum'
                        value='${pageMaker.boardcri.pageNum }'> <input
                        type='hidden' name='amount'
                        value='${pageMaker.boardcri.amount }'>
                     <!-- 검색후 검색조건과 키워드 유지 -->
                     <input type='hidden' name='type'
                        value='<c:out value="${pageMaker.cri.type }" />'> <input
                        type='hidden' name='keyword'
                        value='<c:out value="${pageMaker.cri.keyword }" />'>
                  </form>

                  <!-- Modal 추가 -->
                  <!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                     aria-labelledby="myModalLabel" aria-hidden="true">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-hidden="true">&times;</button>
                           <h4 class="modal-body">처리가 완료되었습니다.</h4>
                        </div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-default"
                              data-dismiss="modal">닫기</button>
                           <button type="button" class="btn btn-primary">Save
                              change</button>
                        </div>
                     </div> -->
                     <!-- /.modal-content -->
                  <!-- </div> -->
                  <!-- /.modal-dialog -->
               </div>
               <!-- end panel-body -->
            </div>
            <!-- end panel -->
         </div>
      </div>
      <!-- /.row -->
   </div>
</section>

<script>
   $(document).ready(function() {
      var result = '<c:out value="${result}"/>';
      /* checkModal(result); */
      history.replaceState({}, null, null);
      /* function checkModal(result) {
         if (result === '' || history.state) {
            return;
         }
         if (parseInt(result) > 0) {
            $(".modal-body").html("게시글 " + parseInt(result)+ " 번이 등록되었습니다.");
         }
         $("#myModal").modal("show");
      } */
      $("#regBtn").on("click", function() {
         self.location = "/shop/registerBoardList";
      });
      var actionForm = $("#actionForm");
      $(".page-item a").on("click",function(e) {
         e.preventDefault();
         console.log('click');
         actionForm.find("input[name='pageNum']")
               .val($(this).attr("href"));
         actionForm.submit();
      });
      var searchForm = $("#searchForm");
      $("#searchForm button").on("click",   function(e) {
         if (!searchForm.find("option:selected").val()) {alert("검색종류를 선택하세요");
            return false;
         }
         if (!searchForm.find("input[name='keyword']").val()) {
            alert("키워드를 입력하세요");
            return false;
         }
         searchForm.find("input[name='pageNum']").val("1");
         e.preventDefault();
         searchForm.submit();
      });
      $(".move").on("click",function(e) {
         e.preventDefault();
         actionForm.append("<input type='hidden' name='b_no' value='"+ $(this).attr("href")+ "'>");
         actionForm.attr("action","/shop/getBoardList");
         actionForm.submit();
      });
   });
</script>
<!-- JAVASCRIPT -->
<%@ include file="../includes/footer.jsp"%>