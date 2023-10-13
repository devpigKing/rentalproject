<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
    세숫대여 비밀번호 찾기
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
</head>

<body class="bg-default">
  <div class="main-content">
    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
      <div class="container px-4">
        <a class="navbar-brand" href="/rental-project/home">
          <img src="/rental-project/resources/img/brand/white.png" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar-collapse-main">
          <!-- Collapse header -->
          <div class="navbar-collapse-header d-md-none">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="../index.html">
                  <img src="/rental-project/resources/img/brand/blue.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          <!-- Navbar items -->
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link nav-link-icon" href="/rental-project/account/login">
                <i class="ni ni-key-25"></i>
                <span class="nav-link-inner--text">로그인</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-link-icon" href="/rental-project/account/register">
                <i class="ni ni-circle-08"></i>
                <span class="nav-link-inner--text">회원가입</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

	<!-- Header -->
    <div class="header bg-gradient-primary py-7 py-lg-8">
     <div class="container">
       <div class="header-body text-center mb-7">
         <div class="row justify-content-center">
           <div class="col-lg-5 col-md-6">
             <h1 class="text-white">Welcome!</h1>
             <p class="text-lead text-light">Use these awesome forms to login or create new account in your project for free.</p>
           </div>
         </div>
       </div>
     </div>
     <div class="separator separator-bottom separator-skew zindex-100">
       <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
         <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
        </svg>
      </div>
    </div>
    <!-- Page content -->
    <div class="container mt--8 pb-5">
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-7">
          <div class="card bg-secondary shadow border-0">
            <div class="card-body px-lg-5 py-lg-5">
            
            <!-- action 시작 -->
              <form action="findpw" method="post">
                <div class="form-group mb-3">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                    </div>
                    <input name="memberId" class="form-control" placeholder="아이디" type="text">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                    <input name="email" class="form-control" placeholder="이메일" type="email">
                  </div>
                </div>
                <p class="text-center">
                  <input type="submit" class="btn btn-primary my-4" value="비밀번호 찾기" id="find-pw" />
                </p>
                
				
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="py-5">
      <div class="container">
        <div class="row align-items-center justify-content-xl-between">
          <div class="col-xl-6">
            <div class="copyright text-center text-xl-left text-muted">
              ⓒ 2018 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Rental Team</a>
            </div>
          </div>
          <div class="col-xl-6">
            <ul class="nav nav-footer justify-content-center justify-content-xl-end">
              <li class="nav-item">
                <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Rental Team</a>
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
      </div>
    </footer>
  </div>
  <!--   Core   -->
  <script src="/rental-project/resources/js/plugins/jquery/dist/jquery.min.js"></script>
  <script src="/rental-project/resources/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <!--   Optional JS   -->
  <!--   Argon JS   -->
  <script src="/rental-project/resources/js/argon-dashboard.min.js?v=1.1.2"></script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script type="text/javascript">
  $(function(){
	  
	  	
		$('#find-pw').on("click", function(event){
			event.preventDefault();
			
			const memberId = $('#memberId').val();
			const email = $('#email').val();
			if (!memberId){ // memberId가 null이거나 ""인 경우
				alert('아이디를 입력하세요');
				$('#memberId').focus();
				return;
			}
			if (!email){ //
				alert('이메일을 입력하세요');
				$('#email').focus();
				return;
			}
			
			$.ajax({
				"url": "check-id-email",
				"method": "get",
				"data": {"memberId" : memberId},
				"async": true,
				"success": function(data, status, xhr){
					if (data == "true"){
						dupChecked = true;
						alert("사용 가능한 아이디")
					} else {
						dupChecked = false;
						alert("이미 사용 중인 아이디")
					}
				},
				"error": function(xhr, status, err){
					alert("error");
				}
			});
		});
		// 아이디 중복 검사안하고 계정 생성할 시
		$('#register').on('click', function(event){
			event.preventDefault();
			
			if (!dupChecked) {
				alert("아이디 중복 검사를 실행하세요");
				return;
			}
			$('#registerform').submit();
		});
		// 아이디 중복 검사했어도 값이 새로 입력될 때 (입력창에 키up 되었을 시)
		$('#memberId').on('keyup', function(){
			dupChecked = false;
			});	
		});
  </script>
  <!--  <script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			let memberId=$("input[name='memberId']").val();
			let email=$("input[name='email']").val();
			$.ajax({
				url:"/account/findpw",
				dataType:'json',
				data:{"memberId": memberId, "email": email},
				success:function(data){
					if(data == true){
						alert("임시 비밀번호가 발급되었습니다.메일함을 확인해 주세요");
					} else {
						alert("아이디 또는 이메일을 정확하게 입력해 주세요");
					}
		   		}	
			});
		});
	});
</script> -->
  <script>
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "argon-dashboard-free"
      });
  </script>
 

</html>