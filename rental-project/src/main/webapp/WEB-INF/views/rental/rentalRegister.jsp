<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    Argon Dashboard - Free Dashboard for Bootstrap 4 by Creative Tim
  </title>
  <!-- Favicon -->
  <link href="/rental-project/resources/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="/rental-project/resources/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
  <link href="/rental-project/resources/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="/rental-project/resources/css/argon-dashboard.css?v=1.1.2" rel="stylesheet" />
  	
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body class="">
<jsp:include page="/WEB-INF/views/modules/navbar-vertical.jsp" />
  <div class="main-content">
    <!-- Navbar -->
	<jsp:include page="/WEB-INF/views/modules/navbar-top.jsp" />
    <!-- End Navbar -->
    <!-- Header -->
    <jsp:include page="/WEB-INF/views/modules/navbar-content.jsp" />
    <div class="container-fluid mt--7">
			<div class="row">
				<div class="col-xl-12 mb-5 mb-xl-0">
					<div class="card bg-secondary shadow">
						<div class="card-header border-0">
							<div class="row align-items-center">
								<div class="col-8">
									<h3 style="font-weight: bold; margin-bottom: 20px;" class="mb-0">주문 페이지</h3>
								</div>
							</div> 
						</div>
						<form action="rental" method="post" class="orderForm">
							<input type="hidden" name="memberNo" value="${loginuser.memberNo}"/>
						<div class="card-body" style="margin-top: -30px;">   
							
							<div class="row mt-5">
						        <div class="col">
						          <div class="card bg-secondary shadow">
						            <div class="card-header bg-transparent border-0">
						              <h5 class="text-black mb-0">구매 목록</h5>
						            </div>
						            <div class="table-responsive">
						        
						              <table class="table align-items-center table-white table-flush">
						                <thead class="thead-white">
						                  <tr style="text-align:center;">
											<th class="td_width_2" style="text-align: center;">이미지</th>
											<th class="td_width_3" style="text-align: center;">상품명</th>
											<th class="td_width_4" style="text-align: center;">가격</th>
											<th class="td_width_4" style="text-align: center;">수량</th>
											<th class="td_width_4" style="text-align: center;">합계</th>
						                  </tr>
						                </thead>
						                <tbody>
						                  <c:forEach items="${orderDetails}" var="orderDetail" varStatus="status">
													<tr style="text-align:center;"> 
														<input type="hidden" name="orderDetailList[${status.index}].itemNo" class="individual_itemPrice_input" value="${orderDetail.itemNo}">
														<input type="hidden" name="orderDetailList[${status.index}].itemPrice" class="individual_itemPrice_input" value="${orderDetail.itemPrice}">
														<input type="hidden" name="orderDetailList[${status.index}].itemCount" class="individual_itemCount_input" value="${orderDetail.itemCount}">	 
														<td class="td_width_2">
															<img src="${pageContext.request.contextPath}/resources/upload/thumbnail_${zzim.thumbnail}" alt="Image">							
														</td>
														<td class="td_width_3">${orderDetail.itemName}
														<td class="td_width_4 price_td">
															<span class="red_color"><fmt:formatNumber value="${orderDetail.itemPrice}" pattern="#,### 원" /></span>
														</td>
														<td class="td_width_4 table_text_align_center"> ${orderDetail.itemCount} 
														<td class="td_width_4 table_text_align_center">
															<fmt:formatNumber value="${orderDetail.itemPrice * orderDetail.itemCount}" pattern="#,### 원" />
														</td>
													</tr>
												</c:forEach>
						                </tbody>
						              </table>
							              <div class="text-left mt-2 mb-2" style="padding-left: 20px;">
										    <h5 class="text-black mb-0" style="display: flex; justify-content: space-between;">
										        <span>총 주문 금액</span>
										        <span class="red_color"  style="margin-right: 80px;">
										            <fmt:formatNumber value="${totalOrderPrice}" pattern=" #,### 원" />
										        
										        </span>
										    </h5>
										</div>    	
						              </div>
						            </div>
						        </div> <!-- end of col --> 
					        </div>  <!-- end of row -->
 
							<div class="row mt-5">
								<div class="col">				
					                <div class="pl-lg-12" style="margin : 0 auto;">
					                  <div class="row">
					                    <div class="col-lg-6" >
					                      <div class="form-group focused">
					                        <label class="form-control-label"for="input-addressUser">수령인</label>
					                        <input type="text" id="input-addressUser"  name="addressUser" class="form-control form-control-alternative" value="">
					                      </div>
					                    </div>
				                        <div class="col-lg-6">
					                      <div class="form-group"> 
					                        <label class="form-control-label"  for="input-orderDate">아이디</label> 
					                        <input type="text" name="memberId" id="input-memberId" class="form-control form-control-alternative"  value="${loginuser.memberId}" readonly>   
 
					                   	  </div>
				                    	</div>
					                  </div>
					                  <div class="row">
					                    <div class="col-lg-6" >
					                      <div class="form-group focused">
					                        <label class="form-control-label"for="input-email">이메일</label>
					                        <input type="text" name="email" id="input-email" class="form-control form-control-alternative" value="${ loginuser.email }" readonly>
					                      </div> 
					                    </div> 
					                  </div>  
					                  <div class="row">
						                  <div class="col">
						                  <!-- 주소 -->
							                <div class="form-group">
							                  <div class="input-group input-group-alternative mb-3">
							                    <!-- <div class="input-group-prepend">
							                      <span class="input-group-text"></span>
							                    </div> -->
								                    <input type="text" id="address" name="address" class="form-control" placeholder="주소" value="${ memberInfo.address }">
	 
								                    <input type="button" id="address-search" class="btn btn-success" value="주소 검색"><br> 
							                  </div> 
							                  <input type="text" name="addressDetail" class="form-control" placeholder="상세 주소" value="" >
							                </div> 
							              </div> <!--  end of inner col -->
							            </div> 
						                <div class="row">
						                <div class="col">
										   <button type="submit" class="btn btn-success" id="btnorder">주문</button> 
										   <button type="button" class="btn btn-success" id="btnback">취소</button> 
										</div>
										 </div> 
										</div> 
					                </div> 
					                </div>
					        </div> <!-- end of row -->
				
						</div> <!--  end of card-body -->
						</form>
					</div> <!--  end of card -->
				</div>
			</div>
			<!-- Footer -->
      <footer class="footer">
        <div class="row align-items-center justify-content-xl-between">
          <div class="col-xl-6">
            <div class="copyright text-center text-xl-left text-muted">
              &copy; 2018 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
            </div>
          </div>
          <div class="col-xl-6">
            <ul class="nav nav-footer justify-content-center justify-content-xl-end">
              <li class="nav-item">
                <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
              </li>
              <li class="nav-item">
                <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
              </li>
              <li class="nav-item">
                <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
              </li>
              <li class="nav-item">
                <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
              </li>
            </ul>
          </div>
        </div>
      </footer>
            </div>
      </div>
  <!--   Core   -->
  <script src="/rental-project/resources/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="/rental-project/resources/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <script src="/rental-project/resources/js/plugins/chart.js/dist/Chart.min.js"></script>
  <script src="/rental-project/resources/js/plugins/chart.js/dist/Chart.extension.js"></script>
  <!--   Argon JS   -->
  <script src="/rental-project/resources/js/argon-dashboard.min.js?v=1.1.2"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script>
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "argon-dashboard-free"
      });
  </script>
  <script>
  $(function(event) {
	  $('#address-search').on('click', function(event) {
		  new daum.Postcode({
		        oncomplete: function(data) { // 선택시 입력값 세팅		           
		            $("#address").val(data.address);
		            $("input[name=addressDetail]").focus();
		        }
		    }).open();
	  }); 
	  
	  $('#btnback').on('click', function(event){
		  alert('주문이 취소되었습니다.');
		  location.href="zzim/${loginuser.memberNo}"; 
	  }) 
	  
	  $('#btnorder').on('click', function(event){ 
		 alert('주문이 완료되었습니다.');
		 
	  });
	  
	  
	  }); 
	 
	 
  </script>
</body>
</html>