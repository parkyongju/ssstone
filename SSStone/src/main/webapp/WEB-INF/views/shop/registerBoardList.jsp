<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file="../includes/header.jsp"%>
   

<!-- BREADCRUMB -->
<nav class="py-5">
   <div class="container">
      <div class="row">
         <div class="col-12">
            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
               <li class="breadcrumb-item"><a class="text-gray-400" href="index.html">Home</a></li>
               <li class="breadcrumb-item active"><a class="text-gray-400" href="/shop/boradList">게시판</a></li>
               <li class="breadcrumb-item active">글쓰기</li>
            </ol>

         </div>
      </div>
   </div>
</nav>

<section class="col-12">
<div class="container">
<div class="row">
   <div class="col-lg-12">
      <h1 class="page-header">게시판 작성</h1>
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
                  <textarea class="form-control" rows="3" name='b_content'></textarea>
               </div>
            
                <div class="form-group">
               <input type ="hidden" class="form-control" name="m_no" value='<sec:authentication property="principal.member.m_no"/>' readonly="readonly">
               </div> 
               <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" >
               <button type="submit" class="btn btn-default">작성하기</button>
               <button type="reset" class="btn btn-default">되돌리기</button>
               
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

<%@ include file="../includes/footer.jsp" %>