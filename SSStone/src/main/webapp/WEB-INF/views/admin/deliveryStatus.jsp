<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
   
<%@ include file="../includes/adminheader.jsp"%>

<div id="wrapper">
<div id="page-wrapper">
   <div class="row">
      <div class="col-lg-12">
         <h1 class="page-header">관리자</h1>
      </div>
      <!-- /.col-lg-12 -->
   </div>
   <!-- /.row -->
   
   <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               상품 정보
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
               <table width="100%" class="table table-striped table-bordered table-hover" id="">
                  <thead>
                     <tr>
                        <th style="text-align: center;">구매번호</th>
                        <th style="text-align: center;">회원번호</th>
                        <th style="text-align: center;">구매날짜</th>                        
                        <th style="text-align: center;">배송현황</th>
                        <th style="text-align: center;" colspan=4>배송상태 변경</th>
                     </tr>
                  </thead>
                  <tbody id="pc_list">           
   
                  </tbody>
               </table>
               <!-- /.table-responsive -->
               
               <%-- <!-- 페이지 처리 -->
               <div class="bull-right">
                          <ul class="pagination">
                             <c:if test="${pageMaker.prev }">
                                <li class ="paginate_button previous1"><a href="1"> << </a>
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
                    <!-- pagination end  --> --%>
                    
            </div>
            <!-- /.panel-body -->
         </div>
         <!-- /.panel -->
      </div>
      <!-- /.col-lg-12 -->
      <!-- form end -->
   </div>
<%--    
      <form id='actionForm' action="/admin/purchaseManagement" method=get>
         <input type=hidden name='pc_no' value="${pageMaker.cri.pageNum}">
      </form> --%>
      
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/ajax.js"></script>
<script>

   $(document).ready(function() {
      var csrfHeaderName = "${_csrf.headerName}";
      var csrfTokenValue = "${_csrf.token}";
      var pc_list = $("#pc_list");
      showList(1);
	  var str = "";
      function showList(pc_no) { listService.getstatuslist(
         {pc_no : pc_no},function(list) {
            console.log(list);
            if(str != null)
           	{
           		str = "";
           	}
            if (list == null
                  || list.length == 0) {
               pc_list.html("");
               return;
            }
            for (var i = 0, len = list.length || 0; i < len; i++) {
               if(list[i].pc_deliverystatus == 'true')
               {
                  str += "<tr data-pc_no ='"+list[i].pc_no+"'><td style='text-align: center; width: 10%'' class='move'>"+list[i].pc_no+"</td>"+
                          "<td style='text-align: center; width: 10%' class='move'>"+list[i].m_no+"</td>"+
                          "<td style='text-align: center; width: 20%' class='move'>"+ displaypaymentTime(list[i].pc_date)+" </td>"+ 
                          "<td style='text-align: center; width: 20%' class='move' id='buttonAction' style='color:blue;'>배송완료</td>"+
                          "<td style='text-align: center; width: 30%' colspan=4>"+
                          "<a class='changestatus btn btn-xxs pull-center'  data-pc_no ='"+list[i].pc_no+"' data-pc_deliverystatus ='"+list[i].pc_deliverystatus+"' value='"+list[i].pc_deliverystatus+"'>"+
                          "배송중으로 변경하기"+"</button>"+"</td></tr>";  
               }
               else
               {
                  str += "<tr data-pc_no ='"+list[i].pc_no+"' style='color:red; background:lightgrey;'><td class='move' style='text-align: center; width: 10%''>"+list[i].pc_no+"</td>"+
                          "<td class='move' style='text-align: center; width: 10%'>"+list[i].m_no+"</td>"+
                          "<td class='move' style='text-align: center; width: 20%'>"+ displaypaymentTime(list[i].pc_date)+" </td>"+ 
                          "<td class='move' style='text-align: center; width: 20%' id='buttonAction'>미발송</td>"+
                          "<td style='text-align: center; width: 30%' colspan=4>"+
                          "<a class='changestatus btn btn-xxs pull-center'  data-pc_no ='"+list[i].pc_no+"' data-pc_deliverystatus ='"+list[i].pc_deliverystatus+"' value='"+list[i].pc_deliverystatus+"'>"+
                          "배송중으로 변경하기</button></td></tr>"+
                          "<tr class='memberList1'></tr><tr class='memberList2'></tr><tr class='productList1'></tr><tfooter class='productList1'></tfooter>";
                          showListMember(list[i].pc_no);
                          /* showListProduct(list[i].pc_no); */
                          function showListMember(pc_no) {purchaseservice.getMember(
                                  {pc_no : pc_no},function(list1) {
                                     console.log(list1);
                                     var str2="";
                                     var str3="";
                                     if (list1 == null
                                           || list1.length == 0) {
                                        return;
                                     }
                                     str2 +="<th>회원아이디</th>"
                                          + "<th>회원이름</th>"
                                          + "<th colspan=2>회원주소</th>"
                                          + "<th colspan=3>회원전화번호</th>";
                                     str3 += "<th>"+list1.m_email+"</th>"
                                          + "<th>"+list1.m_name+"</th>"
                                          + "<th colspan=2>"+list1.m_address1+" - "+list1.m_address2+" - "+list1.m_address3+"</th>"
                                          + "<th colspan=3>"+list1.m_phone1+"-"+list1.m_phone2+"-"+list1.m_phone3+"</th>";
                                         
                          			$(".memberList1").html(str2);
                          			$(".memberList2").html(str3);
                                  });
                          }
                          function showListProduct(pc_no) {purchaseservice.getProduct(
                        		{pc_no : pc_no} , function(list3){
                        			console.log("product : " + list3);
                                    var str4="";
                                    /* if (list3 == null
                                            || list3.length == 0) {
                                         return;
                                    } */
                                    str4 += "<th>상품번호</th> <th>상품명</th><th>카테고리1</th>"+
                                    "<th>카테고리2</th><th>상품가격</th><th>상품재고</th><th>상품옵션</th>";
                                    
                                    $(".productList1").html(str4);
                        		});	  
                          }
               }
            }
            pc_list.html(str);
         });  //end function
      } // end showList
      
      
         $("#pc_list").on("click",".move",function(e){
            var pc_no1 = $(this).parent().data("pc_no");
            self.location="/admin/purchaseManagement?pc_no="+pc_no1;
            
         });   
      
         $("#pc_list").on("click","a",function(e) {        //status바꾸기   
         var pc_no1 = $(this).data("pc_no");
         var pc_deliverystatus = $(this).data("pc_deliverystatus");
         if(pc_deliverystatus == false)
         {
            $.ajax({
                  type:'post',
                  url:'/admin/deliveryStatusTrue',
                     dataType:'json',
                     beforeSend:function(xhr){
                        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
                     },
                     data : ({pc_no : pc_no1}),
                     success:function(){
                  }
               });
               showList(1);
         }
         else
         {
            $.ajax({
               type:'post',
               url:'/admin/deliveryStatusFalse',
               beforeSend:function(xhr){
                     xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
                  },
                  dataType:'json',
                  data : ({pc_no : pc_no1}),
                  success:function(){
               }
            });
            showList(1);
         }
      }); 
      
      function displaypaymentTime(timeValue) {

         var today = new Date();

         var gap = today.getTime() - timeValue;


         var dateObj = new Date(timeValue);
         var str = "";

            var hh = dateObj.getHours();
            var mi = dateObj.getMinutes();
            var ss = dateObj.getSeconds();

            var yy = dateObj.getFullYear();
            var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
            var dd = dateObj.getDate();

            return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
                  (dd > 9 ? '' : '0') + dd, '--',(hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
                  ':', (ss > 9 ? '' : '0') + ss ].join('');
        
      }
   });

         
</script>

<%@ include file="../includes/adminfooter.jsp"%>