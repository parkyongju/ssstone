<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file="../includes/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<!-- HEADER -->
<header class="py-13 jarallax" data-jarallax data-speed=".8"
   style="background-image: url(/resources/img/covers/cover-31.jpg);">
   <div class="container" style="font-family: 'Do Hyeon', sans-serif;">
      <div class="row">
         <div class="col-12">
   
            <!-- Heading -->
            <h3 class="text-center text-white">당신의 품격이 되어드리겠습니다.</h3>
   
            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
               <li class="breadcrumb-item"> <a class="text-gray-400" href="/shop/main">Home</a> </li>
               <li class="breadcrumb-item"> <a class="text-gray-400" href="/product/shop">Shop</a> </li>          
            </ol>
            <!-- BREADCRUMB end-->
         </div>
      </div>
   </div>
</header>
<!-- HEADER end-->


<!-- FILTERS -->
<section class="py-4 border-bottom" style="padding: 1px; font-family: 'Do Hyeon', sans-serif;">
   <div class="container">
      <div class="row align-items-center">
         <div class="col-12 col-md">

            <!-- Categories -->
            <nav class="nav nav-overflow mb-6 mb-md-0">
               <a class='nav-link ${ pageMaker.productcriteria.p_category1 == null ? "active" : "" }' data-toggle="tab" href="/product/shop" onclick="self.location='/product/shop'">All</a> 
               <a class="nav-link ${ pageMaker.productcriteria.p_category1 eq '귀걸이' ? "active" : "" }" data-toggle="tab" href="/product/shop?p_category1=귀걸이&p_category2=" 
               onclick="self.location='/product/shop?p_category1=귀걸이&p_category2='">귀걸이</a>
               <a class="nav-link ${ pageMaker.productcriteria.p_category1 eq '목걸이' ? "active" : "" }"  data-toggle="tab" href="/product/shop?p_category1=목걸이&p_category2=" 
               onclick="self.location='/product/shop?p_category1=목걸이&p_category2='">목걸이</a>
               <a class="nav-link ${ pageMaker.productcriteria.p_category1 eq '팔찌' ? "active" : "" }" data-toggle="tab" href="/product/shop?p_category1=팔찌&p_category2=" 
               onclick="self.location='/product/shop?p_category1=팔찌&p_category2='">팔찌</a>
               <a class="nav-link ${ pageMaker.productcriteria.p_category1 eq '시계' ? "active" : "" }" data-toggle="tab" href="/product/shop?p_category1=시계&p_category2=" 
               onclick="self.location='/product/shop?p_category1=시계&p_category2='">시계</a>
               <a class="nav-link ${ pageMaker.productcriteria.p_category1 eq '반지' ? "active" : "" }" data-toggle="tab" href="/product/shop?p_category1=반지&p_category2=" 
               onclick="self.location='/product/shop?p_category1=반지&p_category2='">반지</a>
               <a class="nav-link ${ pageMaker.productcriteria.p_category1 eq '헤어용품' ? "active" : "" }" data-toggle="tab" href="/product/shop?p_category1=헤어&p_category2=" 
               onclick="self.location='/product/shop?p_category1=헤어&p_category2='">헤어용품</a>
               <a class="nav-link" data-toggle="tab" href="/shop/comingsoon" style=""
                 title="준비중" onclick="self.location='/shop/comingsoon'">Commingsoon</a>
            </nav>

         </div>
         <div class="col-12 col-md-auto text-center"></div>
      </div>
   </div>
</section>

<!-- 상품 페이지 -->
<section class="py-6" style="font-family: 'Do Hyeon', sans-serif;">
   <div class="container">
      <div class="row" style="margin-top: 3px;">
      	 <c:set var="i" value="0" />
         <c:set var="j" value="4" />
            <ul style="padding:0px 1px 0px 1px;">
               <c:forEach items="${productList }" var="product">
               <c:if test="${i%j==0 }">
                  <li style="display:flex;">
               </c:if>
               <div class="col-12 col-md-3 py-6" style="justify-content:space-between; border:1px solid #F2F2F2;">
                  <!-- Card -->
                  <div class="move card mb-7" data-toggle="card-collapse" href= '<c:out value="${product.p_no }"/>' >
                    <!-- Image -->
                    <div style="width: 250px; height: 280px;">    
                       <a href="/product/product?p_no=<c:out value='${product.p_no }'/>" class="card-img-top" >
                          <c:if test="${product.p_stock > 0 }">
                          <img
                            src='/display?fileName=<c:out value="${product.p_filepath }"/>/<c:out value="${product.p_uuid }"/>_<c:out value="${product.p_filename }"/>' 
                            alt="..."
                            width="250px" height="250px" href='<c:out value="${member.m_no }"/>'>
                         </c:if>
                         <c:if test="${product.p_stock<= 0 }">   <!-- 재고 없을때 -->
                            <img
                            src='/display?fileName=<c:out value="${product.p_filepath }"/>/<c:out value="${product.p_uuid }"/>_<c:out value="${product.p_filename }"/>' 
                            alt="..."
                            width="250px" height="250px" style="filter: blur(4px);">
                         </c:if>
                       </a>
                       <!-- Collapse -->
                       <div class="card-collapse-parent">
                         <!-- Body -->
                         <div class="card-body px-0 bg-white text-center">
                           <!-- Heading -->
                           <div class="mb-1 font-weight-bold">
                              <c:if test="${product.p_stock > 0 }">
                                 <a class="text-body" href='<c:out value="${member.m_no }"/>'> <c:out value="${product.p_name }"/> </a>                              
                              </c:if>
                              <c:if test="${product.p_stock<= 0 }">
                                 <a class="text-body" > <del><c:out value="${product.p_name }"/> </del><span style="color: red;"> sold out</span></a>   
                              </c:if>
                           </div>
                           <!-- Price -->
                           <div class="mb-1 font-weight-bold text-muted"><fmt:formatNumber value="${product.p_price }" pattern="#,###" />원</div>
                         </div>
                       </div>
                     </div>
                  </div>
               </div>
               <c:if test="${i%j==j-1 }">
               		</li>
               </c:if>
               <c:set var="i" value="${i+1 }"/>
             </c:forEach>
     </ul>
     
     </div>
     <!-- 상품 끝 -->
     
      <!-- 검색 처리 시작 -->
      <div class="row" >
         <div class="col-lg-12">
            <!-- Header -->
            <div class="line-height-fixed font-size-lg">
            <strong class="mx-auto">Search Products</strong>
            </div>
            <form action="/product/shop" id="searchForm" method="get">
                <div class="form-group">
                  <select name='type' class="custom-select">
                    <option value=""
                      <c:out value="${pageMaker.productcriteria.type == null?'selected':'' }" />>원하시는 입력방법을 선택해주세요.</option>
                    <option value="T"
                      <c:out value="${pageMaker.productcriteria.type eq 'T'?'selected':''}" />>카테고리</option>
                    <option value="C"
                      <c:out value="${pageMaker.productcriteria.type eq 'C'?'selected':''}" />>재질</option>
                    <option value="N"
                      <c:out value="${pageMaker.productcriteria.type eq 'N'?'selected':''}" />>이름</option>
                    <option value="TC"
                      <c:out value="${pageMaker.productcriteria.type eq 'TC'?'selected':''}" />>카테고리
                      or 재질</option>
                    <option value="TCN"
                      <c:out value="${pageMaker.productcriteria.type eq 'TCN'?'selected':''}" />>전체 검색</option>
                  </select> 
               </div>
               
               <div class="input-group input-group-merge">
                  <input type='search' name='keyword' value='<c:out value="${pageMaker.productcriteria.keyword }" />' class="form-control"  id="keyword" placeholder="Search"/> 
                  <input type='hidden' name='pageNum' value='<c:out value="${pageMaker.productcriteria.pageNum}"/>' /> 
                  <input type='hidden' name='amount' value='<c:out value="${pageMaker.productcriteria.amount}" />' />
                  <button type="button" class="btn btn-outline-dark"> <i class="fe fe-search"></i>검색</button>
               </div>
               
            </form>
          </div>
     </div>
     <!-- 검색 처리 끝 -->


     <!--  end Pagination -->
     <!-- 페이징 처리 -->
     <div class="row">
       <div class="col-12">

         <!-- Progress -->

         <div class="row justify-content-center mt-7">
            <div class="col-12 text-center">
				  <!-- Pagination -->
				  <nav class="d-flex justify-content-center mt-9">
					 <ul class="pagination pagination-sm text-gray-400">
						<c:if test="${pageMaker.prev }">	<!-- 이전 -->
							<li class="page-item">
							  <a class="page-link page-link-arrow"  href="${pageMaker.startPage -1 }"><i class="fa fa-caret-left"></i></a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
							
							<li class='page-item  ${ pageMaker.productcriteria.pageNum == num ? "active" : "" }'>
								<a class="page-link" href="${num }">${num }</a>
							</li>
						</c:forEach>
						<c:if test="${pageMaker.next }"><!-- 다음 -->
							<li class="page-item">
							<a class="page-link page-link-arrow" href="${pageMaker.endPage +1 }"><i class="fa fa-caret-right"></i></a></li>
						</c:if>
					 </ul>
				  </nav>
				</div>
			</div>
		 </div>
	  </div>
	  <!-- 페이징 처리 끝 -->

     <form action="/product/shop" id='actionForm' method='get'>
       <input type='hidden' name='pageNum' value='${pageMaker.productcriteria.pageNum }'> 
       <input type='hidden' name='amount' value='${pageMaker.productcriteria.amount }'>
       <!-- 검색후 검색조건과 키워드 유지 -->
       <input type='hidden' name='type' value='<c:out value="${pageMaker.productcriteria.type }" />'> 
       <input type='hidden' name='keyword' value='<c:out value="${pageMaker.productcriteria.keyword }" />'>
       <c:if test="${pageMaker.productcriteria.p_category1 !=null }">
       <input type ="hidden" name ="p_category1" value='<c:out value="${pageMaker.productcriteria.p_category1 }" />'>
       </c:if>
       <c:if test="${pageMaker.productcriteria.p_category2 !=null }">
       <input type ="hidden" name ="p_category2" value='<c:out value="${pageMaker.productcriteria.p_category2 }" />'>
       </c:if>
     </form>
   </div>
</section>



<script>
   $(document).ready(function() {
     var result = '<c:out value="${result}"/>';
     history.replaceState({}, null, null);
     
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
       actionForm.append("<input type='hidden' name='p_no' value='"+ $(this).attr("href")+ "'>");
       actionForm.attr("action","/product/product");
       actionForm.submit();
     });
   });
</script>
<%@ include file="../includes/footer.jsp"%>'