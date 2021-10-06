<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="poly.dto.ProjectsDTO"%>		
<!DOCTYPE html>
<%
	ProjectsDTO pDTO = (ProjectsDTO)request.getAttribute("rDTO");
%>
<html class="no-js" lang="">
<head>
<!-- meta charset -->
<meta charset="utf-8">
<!-- site title -->
<title>AII FOR YOU</title>
<!-- meta description -->
<meta name="description" content="">
<!-- mobile viwport meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- fevicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="/resource/favicon.ico">

<!-- ================================
        CSS Files
        ================================= -->
<link
	href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i|Open+Sans:400,600,700,800"
	rel="stylesheet">
<link rel="stylesheet" href="/resource/css/themefisher-fonts.min.css">
<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
<link rel="stylesheet" href="/resource/css/main.css">
<link rel="stylesheet" href="/resource/css/style.css">
<link id="color-changer" rel="stylesheet"
	href="/resource/css/colors/color-0.css">
</head>

<body>

	<div class="preloader">
		<div class="loading-mask"></div>
		<div class="loading-mask"></div>
		<div class="loading-mask"></div>
		<div class="loading-mask"></div>
		<div class="loading-mask"></div>
	</div>

	<div class="preview-wrapper">
		<div class="switcher-head">
			<span>Style Switcher</span>
			<div class="switcher-trigger tf-tools"></div>
		</div>

		<div class="switcher-body">
			<h4>Choose Color:</h4>
			<ul class="color-options list-none">
				<li class="c0" data-color="red" title="Default">Default</li>
				<li class="c1" data-color="blue" title="Red">Red</li>
				<li class="c2" data-color="green" title="Green">Green</li>
				<li class="c3" data-color="yellow" title="Blue">Blue</li>
			</ul>
		</div>
	</div>

	<main class="site-wrapper">
		<div class="pt-table">
			<div class="pt-tablecell page-contact relative">
				<!-- .close -->
				<a href="./" class="page-close"><i class="tf-ion-close"></i></a>
				<!-- /.close -->

				<div class="container">
					<div class="row">
						<div
							class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8 ">
							<div class="page-title text-center login_imgbiv clearing_gap">
								<h2>
									<a href="/index.do"><img src="/resource/img/logorm.png" class="login_logo"></a>
									<!--<h2>All <span class="primary">for you</span><span class="title-bg">Welcome</span>-->
								</h2>
								<p>
									AII FOR YOU 이메일문의
								</p>
							</div>
						</div>
					</div>
					<!-- /.row -->

					<div class="row">

						<div
							class="col-xs-12 col-sm-7 col-md-7 col-md-offset-1 col-lg-offset-2 login_box mid">
							<div class="section-title clear">
								<h3>이메일 문의하기</h3>
								<span class="bar-dark"></span> <span class="bar-primary"></span>
							</div>
							<form action="/user/user/join.do">
								<div id="contact-form" class="row contact-form no-gutter"
									method="post">
									
								<div class="col-xs-12 col-sm-6 email_length">
                                    <div class="input-field email">
                                        <span class="input-icon" id="email"><i class="tf-envelope2"></i></span>
                                        <input type="email" class="form-control" name="email" placeholder="답변 받을 이메일을 입력해주세요">
                                    </div>
                                </div>
									
									
									
								<div class="col-xs-12 col-sm-12">
                                    <div class="input-field">
                                        <span class="input-icon" id="subject"><i class="tf-pricetags"></i></span>
                                        <input type="text" class="form-control" name="test" placeholder="제목를 입력해주세요">
                                    </div>
                                </div> <!-- ./col- -->
									
								<div class="col-xs-12 col-sm-12">
                                    <div class="input-field message">
                                        <span class="input-icon"><i class="tf-pencil2"></i></span>
                                        <textarea name="message" id="message" class="form-control" placeholder="문의하실 내용을 입력해주세요"></textarea>
                                    </div>
                                </div><!-- ./col- -->

									<!--<div class="col-xs-12 col-sm-12">
                                        <div class="input-field message">
                                            <span class= "input-icon" ><i class="tf-pricetags"></i></span>
                                            <textarea name="message" id="message" class="form-control" placeholder="Write your message"></textarea>
                                        </div>
                                    </div>  ./col- -->

									<div class="col-xs-12 col-sm-12 ">
										<div class="input-field div_margin2">
											<span class="btn-border email_length">
												<button type="submit"
													class="btn btn-primary btn-custom-border text-uppercase email_length">문의하기</button>
													
											</span>
										</div>
									</div>
								</div>
								<!-- ./col- -->
							</form>
							<!-- /.row -->
						</div>
						<!-- /.col- -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container -->

				<nav class="page-nav clear">
					<div class="container">
						<div class="flex flex-middle space-between">
							<span class="prev-page"><a href="/contact/contact.do"
								class="link">&larr; 이전</a></span>
								<span class="copyright hidden-xs">Copyright
								&copy; 2021 ALL FOR YOU, All Rights Reserved.</span>
						</div>
					</div>
					<!-- /.page-nav -->
				</nav>
				<!-- /.container -->

			</div>
			<!-- /.pt-tablecell -->
		</div>
		<!-- /.pt-table -->
	</main>
	<!-- /.site-wrapper -->

	<!-- ================================
        JavaScript Libraries
        ================================= -->
	<script src="/resource/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="/resource/js/vendor/bootstrap.min.js"></script>
	<script src="/resource/js/jquery.easing.min.js"></script>
	<script src="/resource/js/isotope.pkgd.min.js"></script>
	<script src="/resource/js/jquery.nicescroll.min.js"></script>
	<script src="/resource/js/owl.carousel.min.js"></script>
	<script src="/resource/js/jquery-validation.min.js"></script>
	<script src="/resource/js/form.min.js"></script>
	<script src="/resource/js/main.js"></script>
</body>
</html>