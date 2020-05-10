<%@ include file="../includes/adminheader.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("utf-8"); %>
<link rel="stylesheet" href="/resources/fonts/feather/feather.css">
<!-- body -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">관리자 페이지</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
            
               <!-- 주문 현황 -->
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">                   
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-comments fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">주문 현황</div>
                                </div>
                            </div>
                        </div>
                        <a href="/admin/deliveryStatus">
                            <div class="panel-footer">                                
                               <span class="pull-left">
                               오늘 판매된 건수 : <c:out value="${countSalesToday}" /> <br/>
                               오늘 판매 된 금액 : <fmt:formatNumber value="${priceSalesToday}" pattern="#,###" /> 원                            
                               </span>
                               <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <!-- 처리 물품 -->
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                <i class="fa fa-send fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">처리 물품</div>
                                </div>
                            </div>
                        </div>
                        <a href="/admin/deliveryStatus">
                            <div class="panel-footer">
                                <span class="pull-left">미처리된 물품 건수 : <c:out value="${countNotDelivery}" /><br>&nbsp;</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <!-- 고객관리 -->
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-smile-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">고객 관리</div>
                                </div>
                            </div>
                        </div>
                        <a href="/admin/member">
                            <div class="panel-footer">
                                <span class="pull-left">고객관리 보러가기<br>&nbsp;</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <!-- 재고확인 -->
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-check-circle fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">재고 확인</div>
                                </div>
                            </div>
                        </div>
                        <a href="/admin/productList">
                            <div class="panel-footer">
                                <span class="pull-left">
                                    재고 50 이하 : <c:out value="${countStockShartage}" /><br>&nbsp;
                                </span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                 <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                               
                <!-- 판매금액 -->
                <div class="col-lg-3 col-md-6" style="margin-left:140px; margin-right: 75px;">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3 ">
                                    <i class="fa fa-won fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">판매 금액</div>
                                </div>
                            </div>
                        </div>
                        <a href="/admin/productList" >
                          <div class="panel-footer">
                              <span class="pull-left">
                              총 판매된 금액 : <fmt:formatNumber value="${totalPrice }" pattern="#,###" />원<br>&nbsp;</span>
                              <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                              <div class="clearfix"></div>
                          </div>
                         </a>   
                    </div>
                </div>
                
                <!-- 방문자 수 -->
                <div class="col-lg-3 col-md-6" style="width:200px;height:200px;
                border:1pt solid #440088;border-radius:100px;filter:alpha(opacity=30);opacity:1;background:;margin-right: 75px;">
                <br><br>
                    <div class="panel panel">
                        <div class="panel-heading">
                      <span style="font-size: 30px;">방문자 수</span>
                      <span style="font-size: 30px;">8명</span>
                            <div class="row">
                            </div>
                        </div>
                      </div>
                 </div>
                 
                 <!-- 추가 -->
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-check-circle fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">추가 할것</div>
                                </div>
                            </div>
                        </div>
                        <a href="/admin/productList" >
                            <div class="panel-footer">
                              <span class="pull-left" >0원 <br>&nbsp;</span>
                               <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                              <div class="clearfix"></div>
                          </div>
                        </a>   
                    </div>
                </div>
                
                <!-- 오늘 가입한 회원 -->
                 <div class="col-lg-7 col-md-6">
                 <h4>오늘 가입한 회원</h4>
                 </div>
                   <table class="table table-bordered table-lg">
                 <thead>
                   <tr>
                     <th scope="col">회원이메일(ID)</th>
                     <th scope="col">회원이름</th>
                     <th scope="col">회원 주소</th>
                     <th scope="col">회원 생일</th>
                     <th scope="col">회원 핸드폰번호</th>                     
                     <th scope="col">최근 수정일</th>
                   </tr>
                 </thead>
                 <tbody>
                 <c:forEach items="${countTodayAccountMember }" var="MemberVO">
                    <tr>                       
                       <td><c:out value="${MemberVO.m_email}"/></td>                      
                       <td><c:out value="${MemberVO.m_name}"/></td>
                       <td><c:out value="${MemberVO.m_address1} ${MemberVO.m_address2} ${MemberVO.m_address3}"/></td>
                       <td><c:out value="${MemberVO.m_birth1}/${MemberVO.m_birth2}/${MemberVO.m_birth3}"/></td>
                       <td><c:out value="${MemberVO.m_phone1}-${MemberVO.m_phone2}-${MemberVO.m_phone3}"/></td>                       
                       <td><fmt:formatDate value='${MemberVO.m_updatedate}' pattern='yyyy/MM/dd'/></td>
                    </tr>
                 </c:forEach>               
                 </tbody>
               </table>
               <!-- 오늘 가입한 회원 end-->
        
                
                <!-- 오늘 탈퇴한 회원 -->
                 <div class="col-lg-7 col-md-6">
                 <h4>오늘 탈퇴한 회원</h4>
                 </div>
                   <table class="table table-bordered table-lg">
                 <thead>
                   <tr>
                     <th scope="col">회원이메일(ID)</th>
                     <th scope="col">회원이름</th>
                     <th scope="col">회원 주소</th>
                     <th scope="col">회원 생일</th>
                     <th scope="col">회원 핸드폰번호</th>                     
                     <th scope="col">가입일</th>
                   </tr>
                 </thead>
                 <tbody>
                 <c:forEach items="${countTodayWithdrawalMember}" var="member">
                    <tr>                       
                       <td><c:out value="${member.m_email}"/></td>                      
                       <td><c:out value="${member.m_name}"/></td>
                       <td><c:out value="${member.m_address1} ${member.m_address2} ${member.m_address3}"/></td>
                       <td><c:out value="${member.m_birth1}/${member.m_birth2}/${member.m_birth3}"/></td>
                       <td><c:out value="${member.m_phone1}-${member.m_phone2}-${member.m_phone3}"/></td>                       
                       <td><fmt:formatDate value='${member.m_regdate}' pattern='yyyy/MM/dd'/></td>
                    </tr>
                 </c:forEach>               
                 </tbody>
               </table>
               <!-- 오늘 탈퇴한 회원 end-->
               
            </div>
        </div>
        <!-- /#page-wrapper -->
        <!-- body끝 -->



<%@ include file="../includes/adminfooter.jsp"%>