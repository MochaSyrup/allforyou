<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<!-- meta charset -->
<meta charset="utf-8">
<!-- site title -->
<title>Phantom | Personal Resume Template</title>
<!-- meta description -->
<meta name="description" content="">
<!-- mobile viwport meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- fevicon -->
<link rel="shortcut icon" type="image/x-icon" href="/resource/favicon.ico">

<!-- ================================
        CSS Files
        ================================= -->
<link
	href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i|Open+Sans:400,600,700,800"
	rel="stylesheet">
<link rel="stylesheet" href="/resource/css/themefisher-fonts.min.css">
<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
<link rel="stylesheet" href="/resource/css/main.css">
<link id="color-changer" rel="stylesheet" href="/resource/css/colors/color-0.css">
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
							class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
							<div class="page-title text-center login_imgbiv">
								<h2>
									<img src="/resource/img/logorm.png" class="login_logo">
									<!--<h2>All <span class="primary">for you</span><span class="title-bg">Welcome</span>-->
								</h2>
								<p>
									올포유 서비스 이용을 위한 회원가입을 해주세요.<br> 당신을 위한, 안전한 먹거리를 위해 ALL FOR
									YOU
								</p>
							</div>
						</div>
					</div>
					<!-- /.row -->

					<div class="row">

						<div
							class="col-xs-12 col-sm-7 col-md-7 col-md-offset-1 col-lg-offset-2 login_box">
							<div class="section-title clear">
								<h3>회원가입</h3>
								<span class="bar-dark"></span> <span class="bar-primary"></span>
							</div>

							<form id="contact-form" class="row contact-form no-gutter"
								action="/users/join.do" method="post">
								<!-- <div class="col-xs-12 col-sm-6">
                                        <div class="input-field name">
                                            <span class="input-icon" id="name" ><i class="tf-profile-male"></i></span>
                                            <input type="text" class="form-control"  placeholder="Enter your name">
                                        </div>
                                    </div> -- ./col- -->
								<div class="col-xs-12 col-sm-6 email_length">
									<div class="input-field email">
										<span class="input-icon" id="email"><i
											class="tf-envelope2"></i></span> <input type="email"
											class="form-control" name="email"
											placeholder="사용하실 이메일을 입력해주세요">
									</div>
								</div>
								<!-- ./col- -->
								<div class="col-xs-12 col-sm-12">
									<div class="input-field">
										<span class="input-icon" id="subject"><i
											class="tf-ion-android-unlock"></i></span> <input type="password"
											class="form-control" name="subject"
											placeholder="사용하실 비밀번호를 입력해주세요">
									</div>
								</div>


								<!-- ./col- -->
								<div class="col-xs-12 col-sm-12">
									<div class="input-field">
										<span class="input-icon" id="subject"><i
											class="tf-ion-person"></i></span> <input type=""
											class="form-control" name="subject"
											placeholder="본인 이름을 입력해주세요">
									</div>
								</div>
								<!-- ./col- -->
								<select name="Allergy">
									<option value="">알레르기 선택</option>
									<option value="갑각류">갑각류</option>
									<option value="견과류">견과류</option>
									<option value="달걀">달걀</option>
									<option value="땅콩">땅콩</option>
									<option value="밀">밀</option>
									<option value="생선">생선</option>
									<option value="우유">우유</option>
									<option value="조개">조개</option>
									<option value="콩">콩</option>
								</select> <br>
									
								 <select name="year">
									<option value="년">년</option>
									<option value="1985">1985</option>
									<option value="1986">1986</option>
									<option value="1987">1987</option>
									<option value="1988">1988</option>
									<option value="1989">1989</option>
									<option value="1990">1990</option>
									<option value="1991">1991</option>
									<option value="1992">1992</option>
									<option value="1993">1993</option>
									<option value="1994">1994</option>
									<option value="1995">1995</option>
									<option value="1996">1996</option>
									<option value="1997">1997</option>
									<option value="1998">1998</option>
									<option value="1999">1999</option>
									<option value="2000">2000</option>
									<option value="2001">2001</option>
									<option value="2002">2002</option>
									<option value="2003">2003</option>
								</select> <select name="month">
									<option value="월">월</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>

								</select> <select name="date">
									<option value="일">일</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>

								</select>
								<br>
								본인의 성별을 선택해 주세요    <input type="radio" name="gender" value="man">남
									<input type="radio" name="gender" value="woman">여

								<!--<div class="col-xs-12 col-sm-12">
                                        <div class="input-field message">
                                            <span class= "input-icon" ><i class="tf-pricetags"></i></span>
                                            <textarea name="message" id="message" class="form-control" placeholder="Write your message"></textarea>
                                        </div>
                                    </div>  ./col- -->

								<div class="col-xs-12 col-sm-12">
									<div class="input-field">
										<span class="btn-border email_length">
											<button type="submit"
												class="btn btn-primary btn-custom-border text-uppercase email_length">가입하기</button>
										</span>
									</div>
									<!--<div class="msg-success">Your Message was sent successfully</div> -->
									<div class="msg-failed">뭔가 잘못되었어요, 다시 시도해 보세요</div>
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
							<span class="prev-page"><a href="testimonials.html"
								class="link">&larr; 이전</a></span> <span class="copyright hidden-xs">Copyright
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