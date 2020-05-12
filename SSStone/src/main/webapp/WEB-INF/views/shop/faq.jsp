<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<%@ include file="../includes/header.jsp" %>
	<link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
	
	    <!-- BREADCRUMB -->
    <nav class="py-5 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Breadcrumb -->
            <ol class="breadcrumb mb-0 font-size-xs text-gray-400">
              <li class="breadcrumb-item">
                <a class="text-gray-400" href="index.html">Home</a>
              </li>
              <li class="breadcrumb-item active">
                FAQ
              </li>
            </ol>

          </div>
        </div>
      </div>
    </nav>

    <!-- CONTENT -->
    <section class="pt-7 pb-12 bg-light">
      <div class="container" style="background-color:#fff; border:1px solid #D8D8D8; border-radius:10px">
        <div class="row justify-content-center">
          <div class="col-12 col-lg-10 col-xl-8">

            <!-- Heading -->
            <h3 class="mb-10 text-center" style="font-family: 'Oswald', sans-serif; margin-top:20px">Frequently Asked Questions</h3>

            <!-- Heading -->
            <h5 class="mb-7" style="font-family: 'Oswald', sans-serif;">Best FAQ</h5>

            <!-- List group -->
            <ul class="list-group list-group-flush-x mb-9" id="faqCollapseParentOne">
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseOne">
                  1. 관리자에게 연락하고 싶어요.
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseOne" data-parent="#faqCollapseParentOne">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                      	메인 홈페이지 맨 아래쪽을 보시면 관리자의 휴대폰 번호가있습니다. 언제든지 연락주세요!!
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseTwo">
                  2. 현재의 삶이 지치신가요? 이 시를 한번 읽어보세요
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseTwo" data-parent="#faqCollapseParentOne">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500" style="font-family: 'Oswald', sans-serif;">
                      Saw wherein fruitful good days image them, midst, waters upon, saw. Seas lights seasons. Fourth
                      hath rule creepeth own lesser years itself so seed fifth for grass.
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseThree">
                  3. 회원 정보를 수정하고 싶어요.
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseThree" data-parent="#faqCollapseParentOne">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                      	메인 페이지 우측 상단에 사람모양의 아이콘이있습니다. 아이콘을 클릭하면 myPage로 이동하게되는데 이곳에서 회원 정보를
                      	변경 하실 수 있습니다.
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseFour">
                  4. 배송지연 안내
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseFour" data-parent="#faqCollapseParentOne">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                      1. 입금미확인 :배송상태가 입금대기가 아닌 결제완료 상태인지 확인 필요<br>
					  2. 주문미확인 및 발송지연 :결제완료,배송준비중 상태 지속 시 관리자에게 발송일정 문의<br>
					  3. 택배사 배송 지연 :택배사 사정으로 배송 지연,주문내역에서 택배사 확인 후 배송일정 문의<br>
					  4. 수령인 배송지 정보 오기재 :택배사 또는 관리자에게 상품 반품여부 확인 및 재배송 요청<br>
					  5. 상품 옵션 미기재 :주문단계에서 상품 옵션 정확하게 기재<br>
                    </p>
                  </div>
                </div>

              </li>
            </ul>

            <!-- Heading -->
            <h5 class="mb-7" style="font-family: 'Oswald', sans-serif;">구매 관련 FAQ</h5>

            <!-- List group -->
            <ul class="list-group list-group-flush-x mb-9" id="faqCollapseParentTwo">
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseFive">
                  1. 상품주문 하는 방법
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseFive" data-parent="#faqCollapseParentTwo">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                      	1.메인 페이지에서 쇼핑하기 글씨를 누른다.<br>
                      	2.마음의 드는 상품을 고른후 장바구니로 이동한다.<br>
                      	3.결제 버튼을 누른 후 결제를 진행한다.<br>
                      	4.주문한 상품을 집에서 편하게 받는다.
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseSix">
                  2. 결제하려고 하는데 자꾸 오류가 납니다
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseSix" data-parent="#faqCollapseParentTwo">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                      1. 타임아웃 : 일시적인 오류로 결제 시간초과 상태, 잠시 후 재결제 시도<br>
					  2. 카드정보 오류 : 카드번호, 비밀번호, CVC 정보 재확인<br>
					  3. 할부개월수 : 체크카드, 기프트카드, 법인카드는 일시불만 결제 가능<br>
					  4. 안심클릭, ISP결제 등 결제서비스 오류 : 해당 카드사 문의 카드사연락처확인하기<br>
					  5. 카드오류 : 한도초과(잔액부족), 사용중지 등인 경우<br>
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseSeven">
                  3. 공인인증서 이용안내
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseSeven" data-parent="#faqCollapseParentTwo">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                   	  &num; 공인인증서란<br>
					  1. 신원확인, 문서위조/변조, 거래 사실의 부인 방지 등을 목적으로 인증기관(CA)이 발행하는 사이버 거래용 인감증명서<br>
					  2. 인증서 유효기간 1년(만료시 결제불가)으로 유효기간 만료 1개월전 갱신 필요<br>
					  &num; 공인인증서 종류<br>
					  1. 범용공인인증서 : 4,400원/년 (은행,보험,신용카드,민원서비스,주식거래 등)<br>
					  2. 용도제한용 : 은행/신용카드/보험용 무료 인증서 (은행,보험,진원,신용카드 등)<br>
					  3. 문의사항은 금융결제원 고객센터(1577-5500)로 문의<br>
					  &num; 발급방법<br>
					  1. 거래은행 방문 > 인터넷뱅킹 신청 (보안카드 발급)<br>
					  2. 거래은행 사이트 회원가입 > 인터넷뱅킹 등록<br>
					  3. 해당은행 또는 공인인증서 발급기관에서 공인인증서 다운로드 및 설치<br>
					  &num; 공인인증서 이용 불가 시<br>
					  1. 공인인증서 종류 및 유효기간 확인<br>
					  2. 유효기간 만료로 폐기 시 새로 발급<br>
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseEight">
                  4. 카드사 연락처 안내
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseEight" data-parent="#faqCollapseParentTwo">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                      1. 국민카드 1588-1688<br>
                      2. 신한카드 1544-7000<br>
                      3. 삼성카드 1588-8700<br>
                      4. 현대카드 1577-6000<br>
                      5. 롯데카드 1588-8100<br>
                      6. 하나카드 1800-1111<br>
                      7. 비씨카드 1588-4000<br>
                      8. 우리카드 1588-9955<br>
                      9. 씨티카드 1566-1000<br>
                      10. 농협카드 1644-4000<br>
                      11. 수협카드 1588-1515<br>
                      12. 광주은행카드 1588-3388<br>
                      13. 전북은행카드 1588-4477<br>
                      14. 제주은행카드 1588-0079
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseNine">
                  5. 좋은 시 읽고 가세요
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseNine" data-parent="#faqCollapseParentTwo">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500" style="font-family: 'Oswald', sans-serif;">
                      Two roads diverged in a yellow wood, And sorry I could not travel both And be one traveler, long I stood And looked down one as far as I could To where it bent in the undergrowth;　 Then took the other, as just as fair, And having perhaps the better claim, Because it was grassy and wanted wear; Though as for that the passing there Had worn them really about the same,　 And both that morning equally lay In leaves no step had trodden black.
					  Oh, I kept the first for another day!
					  Yet knowing how way leads on to way, I doubted if I should ever come back.
					  I shall be telling this with a sigh Somewhere ages and ages hence: Two roads diverged in a wood, and I ---
					  I took the one less traveled by, And that has made all the difference.
                    </p>
                  </div>
                </div>

              </li>
            </ul>

            <!-- Heading -->
            <h5 class="mb-7" style="font-family: 'Oswald', sans-serif;">회원 관련 FAQ</h5>

            <!-- List group -->
            <ul class="list-group list-group-flush-x" id="faqCollapseParentThree">
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseTen">
                  1. 탈퇴하면 개인정보는 모두 삭제되나요
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseTen" data-parent="#faqCollapseParentThree">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                      &num; 개인정보는 탈퇴 즉시 삭제<br>
					     정보통신망 이용 촉진 및 정보보호에 관한 법률 규정상 사후 문제 발생 가능성에 대비하여<br>
					     최소한의 기본 정보와 거래내역은 아래 명시한 기간 동안 G마켓에서 보관합니다.<br>
					  1. 계약 또는 청약철회 등에 관한 기록 : 5년<br>
					  2. 대금결제 및 재화 등의 공급에 관한 기록 : 5년<br>
					  3. 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년<br>
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseEleven">
                  2. 아이핀이란 무엇인가요?
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseEleven" data-parent="#faqCollapseParentThree">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
                      &num; 주민등록번호 대신 본인임을 확인 받을 수 있는 사이버 신원 확인번호<br>
					    아이핀으로 G마켓 회원가입 진행 시 먼저 아이핀 발급기관에 신원정보를 제공한 후 아이핀을 발급받아야 합니다.<br>
					  <a href="http://www.niceipin.co.kr/niceipin/index.asp">아이핀 발급하러가기</a>
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseTwelve">
                  3. 모바일 기기 쿠키 삭제/설정 안내.
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseTwelve" data-parent="#faqCollapseParentThree">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500">
 					   &num; iOS(아이폰, 아이패드, 아이팟터치용) 브라우저 쿠키 설정 방법<br>
 					   1. 홈 화면 설정 메뉴 > Safari 선택<br>
 					   2. 개인정보 보호 브라우징 > 미허용 설정<br>
 					   3. 쿠키허용 항목 > 방문한 곳 또는 항상으로 선택<br>
 					   4. 쿠키 및 데이터 지우기 항목 실행<br>
 					   5. 자바스크립트 항목 > 허용(파란색 표시) 설정<br>
 					   6. 설정변경 후 재로그인<br>
 					   &num; 안드로이드(스마트폰, 스마트패드 등) 브라우저 쿠키 설정 방법<br>
 					   1. 홈화면 인터넷 브라우저 실행 > 왼쪽 하단 목록 버튼 > 더보기 선택<br>
 					   2. 설정 > 자바스크립트 실행 및 쿠키허용 항목 체크박스[V] 선택<br>
 					   3. 설정 > 캐시 삭제. 기록 삭제, 모든 쿠키 삭제 진행 > 재로그인<br>
 					   &num; 안드로이드 웹뷰 및 크롭앱 업데이트 방법<br>
 					   1. 스마트폰 Play스토어 실행 > 내앱/게임<br>
 					   2. 안드로이드 시스템 웹뷰 및 크롬 브라우저-구글 업데이트
                    </p>
                  </div>
                </div>

              </li>
              <li class="list-group-item">

                <!-- Toggle -->
                <a class="dropdown-toggle d-block font-size-lg font-weight-bold text-reset" data-toggle="collapse" href="#faqCollapseThirteen">
                  4. 좋은 시 있는데 읽고 가실래요?
                </a>

                <!-- Collapse -->
                <div class="collapse" id="faqCollapseThirteen" data-parent="#faqCollapseParentThree">
                  <div class="mt-5">
                    <p class="mb-0 font-size-lg text-gray-500" style="font-family: 'Oswald', sans-serif;">
                      Some say the world will end in fire, Some say in ice.
					  From what I've tasted of desire I hold with those who favor fire.
					  But if it had to perish twice, I think I know enough of hate To say that for destruction ice Is also great And would suffice
                    </p>
                  </div>
                </div>

              </li>
            </ul>

          </div>
        </div>
      </div>
    </section>
    
    <%@ include file="../includes/footer.jsp" %>