<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
   
   <!-- MODALS -->

   <!-- 비밀번호 찾기 -->
    <div class="modal fade" id="modalPasswordReset" tabindex="-1" role="dialog" aria-hidden="false" >
      <div class="modal-dialog modal-dialog-centered" role="document" >
        <div class="modal-content">
          <!-- Close -->
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="fe fe-x" aria-hidden="true"></i>
          </button>
         
          <div class="modal-header line-height-fixed font-size-lg">
            <strong class="mx-auto">비밀번호를 잊으셨나요?</strong>
          </div>
          <!-- Body -->
          <div class="modal-body text-center">
            <!-- Text -->
            <p class="mb-7 font-size-sm text-gray-500">
              회원님의 Email (ID)를 입력하세요.
            </p>
            <!-- Form -->
            <form>
              <!-- Email -->
              <div class="form-group">
                <label class="sr-only" for="modalPasswordResetEmail">
                  <!-- Email Address * -->
                </label>
                <input id="modalPasswordResetEmail" class="form-control form-control-sm" type="email" placeholder="Email (ID) *" required>
                 <div id="id_chk"><br/></div>
              </div>
              <!-- Button -->
              <button id="emailBtn" class="btn btn-sm btn-dark">찾기
                <!-- Reset Password -->
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Password Reset end -->
  
    <!-- 검색-->
    <div class="modal fixed-right fade" id="modalSearch" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-vertical" role="document">
        <div class="modal-content">
          <!-- Close -->
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="fe fe-x" aria-hidden="true"></i>
          </button>
          <!-- Header -->
          <div class="modal-header line-height-fixed font-size-lg bg-dark bg-pattern">
            <strong class="mx-auto" style="color:#fff">상품검색</strong>
          </div>
          <!-- Body: Form -->
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label class="sr-only" for="modalSearchCategories">Categories:</label>
                <select class="custom-select" id="modalSearchCategories">
                  <option selected value=" ">All Categories</option>
                  <option value="반지">반지</option>
                  <option value="귀걸이">귀걸이</option>
                  <option value="목걸이">목걸이</option>
                  <option value="시계">시계</option>
                  <option value="팔찌">팔찌</option>
                  <option value="헤어">헤어</option>
                </select>
              </div>
              <div class="input-group input-group-merge">
                <input class="form-control" type="search" id="keyword" placeholder="Search">
                <div class="input-group-append" id="searchbtn">
                  <span class="btn btn-outline-border" >
                    <i class="fe fe-search"></i>
                  </span>
                </div>
              </div>
            </form>
          </div>
          <!-- Body: Results (add `.d-none` to disable it) -->
          <div class="result modal-body border-top font-size-sm">
            
          </div>
          <!-- Body: Empty (remove `.d-none` to disable it) -->
          <div class="d-none modal-body">
            <!-- Text -->
            <p class="mb-3 font-size-sm text-center">
              Nothing matches your search
            </p>
            <p class="mb-0 font-size-sm text-center">😞
            </p>
          </div>
        </div>
      </div>
    </div>
    <!--검색 모달 -->
    <script type="text/javascript" src="/resources/js/ajax.js"></script>
    <script>
    $(document).ready(function() {
       $("#searchbtn").on("click",function(e){
          var p_category1 = $("#modalSearchCategories option:selected").val();
          var keyword = $("#keyword").val();
          showSearchList(p_category1 , keyword);
          var result = $(".result");
          
          function showSearchList(p_category1 , keyword) {productservice.getproduct(
                  {p_category1 : p_category1, keyword : keyword },function(list) {
                     console.log(list);
                     
                     str="";
                     str += "<p>Search List</p>";
                     for (var i = 0, len = list.length || 0; i < len; i++) {
                     str +="<div class='row align-items-center position-relative mb-5'>"
                          + "<div class='col-4 col-md-3'>";
                     str += "<a href='/product/product?p_no="+list[i].p_no+"' data-fancybox>"
                      +"<img src='/display?fileName=" + list[i].p_filepath + "/s_" + list[i].p_uuid + "_" + list[i].p_filename + "' alt='...' class='img-top  style='width:100%; height:100%;'></a></div>";
                      
                         /* <!-- Image --> */
                     str += "<div class='col position-static'>"
                         /* <!-- Text --> */
                         +"<p class='mb-0 font-weight-bold'>"
                         +  "<a class='stretched-link text-body' href='/product/product?p_no="+list[i].p_no+"'>"+list[i].p_name+"</a> <br>"
                         +  "<span class='text-muted'>"+list[i].p_price+"</span></p><strong class= 'pull-right text-muted' style='float:right;'>"+list[i].p_category1+" > "+list[i].p_category2+"</strong></div></div>"
                        + "<a class='btn btn-link px-0 text-reset' href='/product/shop?p_category1="+p_category1+"&p_category2='>";
                     }
                      str += "View All <i class='fe fe-arrow-right ml-2'></i></a>"
                  result.html(str);
                     
                      if (list == null
                               || list.length == 0) {
                            return;
                         }
                     
                  });
          }
       });
    });
    </script>
    
   <!--  쇼핑카트 -->
   <sec:authorize access="isAuthenticated()">
      <sec:authentication property="principal.member.m_no" var="user_no"/>
       <div class="modal fixed-right fade" id="modalShoppingCart" tabindex="-1" role="dialog" aria-hidden="true" style="font-family: 'Do Hyeon', sans-serif; font-size:25px">
         <div class="modal-dialog modal-dialog-vertical" role="document">
           <!-- Full cart (add `.d-none` to disable it) -->
           <div class="modal-content">
             <!-- Close -->
             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <i class="fe fe-x" aria-hidden="true"></i>
             </button>
             <!-- Header -->
             <div>
               <div class="py-6 bg-dark bg-pattern">
      			<div class="container">
            				<!-- Text -->
            				<div class="text-center text-white" style="width:450px;"> 
              					<strong style="font-size:20px">
                					장바구니
              					</strong>
            				</div>
      			   		</div>
    		   		</div>
             	</div>
             <!-- List group -->
             <ul class="shoppingCartList list-group list-group-lg list-group-flush">
               <li class="list-group-item">
                 <div class="row align-items-center">
                   <div class="col-4">
                     <!-- Image -->
                     <a href="./product.html">
                       <img class="img-fluid" src="/resources/img/products/product-6.jpg" alt="...">
                     </a>
                   </div>
                   <div class="col-8" style="font-size:25px">
                     <!-- Title -->
                     <p class="font-size-sm font-weight-bold mb-6">
                       <a class="text-body" href="./product.html">Cotton floral print Dress</a> <br>
                       <span class="text-muted">$40.00</span>
                     </p>
                     <!-- Footer -->
                     <div class="d-flex align-items-center">
                       <!-- Select -->
                       <select class="custom-select custom-select-xxs w-auto">
                         <c:forEach begin="1" end="5" step="1" var="num">
                         <option value="${num}">${num}</option>
                         </c:forEach>
                       </select>
                       <!-- Remove -->
                       <a class="font-size-xs text-gray-400 ml-auto" href="#!">
                         <i class="fe fe-x"></i> Remove
                       </a>
                     </div>
                   </div>
                 </div>
               </li>
             </ul>
             <!-- Footer -->
             <div class="moneyResult modal-footer line-height-fixed font-size-sm bg-light mt-auto">
               <strong>총 금액</strong> <strong class="ml-auto">0원</strong>
             </div>
             <!-- Buttons -->
             <div class="paymentbtn modal-body">
                  <a class="btn btn-block btn-dark" href='/payment/checkout?m_no=${user_no }'>결제하기</a>
                  <a class="btn btn-block btn-outline-dark" href="/payment/shopcart?m_no=${user_no }">장바구니 상세보기</a>
             </div>
           </div>
           <!-- Empty cart (remove `.d-none` to enable it) -->
           <div class="modal-content d-none">
             <!-- Close -->
             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <i class="fe fe-x" aria-hidden="true"></i>
             </button>
             <!-- Header -->
             <div class="modal-header line-height-fixed font-size-lg">
               <strong class="mx-auto">Your Cart (0)</strong>
             </div>
             <!-- Body -->
             <div class="modal-body flex-grow-0 my-auto">
               <!-- Heading -->
               <h6 class="mb-7 text-center">Your cart is empty 😞</h6>
               <!-- Button -->
               <a class="btn btn-block btn-outline-dark" href="#!">
                 Continue Shopping
               </a>
             </div>
           </div>
         </div>
       </div>
       
       <script>
          $(document).ready(function(){
             var csrfHeaderName = "${_csrf.headerName}";
             var csrfTokenValue = "${_csrf.token}";
             var shoppingcartList = $(".shoppingCartList");
             var moneyResult = $(".moneyResult");
             <sec:authorize access="isAuthenticated()">
                m_no1 = '<sec:authentication property="principal.member.m_no"/>';
             </sec:authorize>
             showList(m_no1);
             var str = "";
             var str1 = "";
             var summoney=0;
             $(".paymentbtn").on("click","#noitem", function(e){
          	   alert("장바구니가 비었습니다.");
          	   return false;
             });
             function showList(m_no) { cartservice.getshoppingcart(
                  {m_no : m_no},function(list) {
                console.log(list);
                   if (list == null
                         || list.length == 0) {
                      str += "<li><div class='row align-items-center'>"
                          + "<button type='button' class='close' data-dismiss='modal' aria-label='Close'>"
                         + "<i class='fe fe-x' aria-hidden='true'></i>"
                         + "</button><div class='modal-header line-height-fixed font-size-lg'><strong class='mx-auto'>Cart</strong>"
                          + "</div><div class='modal-body flex-grow-0 my-auto'><h6 class='mb-7 text-center'>장바구니가 비었습니다 😞</h6>"
                          + "<a class='btn btn-block btn-outline-dark' href='/product/shop'>쇼핑 하러 가기</a></div></li>";
                      shoppingcartList.html(str);
                      str1 += "<a id = 'noitem' class='btn btn-block btn-dark' href='#'>결제하기</a>"	
                     		+"<a class='btn btn-block btn-outline-dark' href= '/payment/shopcart?m_no="+m_no1+"'>장바구니 상세보기</a>";
                      $(".paymentbtn").html(str1);
                      return;
                   }
                   
                 for (var i = 0, len = list.length || 0; i < len; i++) {
                      str += "<li class='list-group-item'>"
                           + "<div class='row align-items-center'>"
                          + "<div class='col-4 col-md-3'>";
                      str += "<a href='/product/product?p_no="+list[i].p_no+"' data-fancybox>"
                           + "<img src='/display?fileName=" + list[i].p_filepath + "/" + list[i].p_uuid + "_" + list[i].p_filename + "' alt='...' class='card-img-top'></a></div>";
                      str += "<div class='col-8'>"
                           + "<p class='font-size-sm font-weight-bold mb-6'>"
                           + "<a class='text-body' href='./product.html'><strong>"+list[i].p_name+"<strong></a><br>"
                           + "<span class='text-muted'>"+numberWithCommas(list[i].p_price)+"원 * "+list[i].s_amount+"개<strong class= 'pull-right text-muted' style='float:right;'>"+list[i].p_category1+" > "+list[i].p_category2+"</strong></span></p>"
                           + "<div class='d-flex align-items-center'>";
                      str  + "<a class='font-size-xs text-gray-400 ml-auto' href=''#'>"
                           + "<i class='fe fe-x'></i> Remove"
                           + "</a></div></div></div></li>";
                      summoney += list[i].p_price* list[i].s_amount;
                }
                 shoppingcartList.html(str);
                 str="<strong>총 금액</strong> <strong class='ml-auto'>"+numberWithCommas(summoney)+"원</strong>";
                 moneyResult.html(str);
                });  //end function
             } // end showList
          });
          function numberWithCommas(x) {
        	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        	}
       </script>
    </sec:authorize>
    <!--  Shopping Cart end -->
    <!-- MODALS end -->
    