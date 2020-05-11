<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
               <li class="breadcrumb-item"><a class="text-gray-400" href="/shop/main">Home</a></li>
               <li class="breadcrumb-item active"><a class="text-gray-400" href="/shop/boardList">Board</a></li>
               <li class="breadcrumb-item active">글쓰기</li>
            </ol>

         </div>
      </div>
   </div>
</nav>

<section class="col-12 py-6 bg-light" style="font-family: 'Do Hyeon', sans-serif; font-size:20px">
<div class="container" style="background-color:#fff; border:1px solid #D8D8D8; border-radius:10px">
<div class="row py-3">
   <div class="col-12">
      <h1 class="page-header" style="margin-left:540px">글쓰기</h1>
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
                  <textarea class="form-control" rows="20" name='b_content' style="resize:none;"></textarea>
               </div>
            
                <div class="form-group">
               <input type ="hidden" class="form-control" name="m_no" value='<sec:authentication property="principal.member.m_no"/>' readonly="readonly">
               </div> 
               <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" >

               <button type="submit" class="btn btn-outline-dark mb-1 btn-s ">작성</button>
               <button type="reset" class="btn btn-outline-dark mb-1 btn-s">이전으로</button>
               
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