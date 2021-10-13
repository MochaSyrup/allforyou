<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script type="text/javascript">
	function googleTranslateElementInit() {new google.translate.TranslateElement({pageLanguage: 'ko', includedLanguages : 'en,ja,es,fr,zh-CN,ru,de,pt', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');}
</script>
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
									알레르기 검색을 위해 음식사진을 업로드 해주세요.<br> 당신을 위한, 안전한 먹거리를 위해 ALL FOR
									YOU
								</p>
							</div>
						</div>
							<div id="google_translate_element"></div>
					</div>
					<!-- /.row -->

					<div class="row">

						<div
							class="col-xs-12 col-sm-7 col-md-7 col-md-offset-1 col-lg-offset-2 login_box mid">
							<div class="section-title clear">
								<h3>알레르기 검색</h3>
								<br>
								<h4>음식사진 업로드 해주세요</h4>
								<span class="bar-dark"></span> <span class="bar-primary"></span>
							</div>
							
								 <form action="upload.jsp" method="post" enctype="multipart/form-data">
		
									
									
									<!--  <div class="col-xs-12 col-sm-6 email_length">
										<div class="input-field email check_styl file_hidden" style="height:inherit;">
												<label for="ex_file"
													style="margin-bottom:0px; width:100%; height:100%; text-align:center;
														font-weight:600; "
													
												>업로드</label>
												<input type="file" name="file" id="ex_file" style="display:none;">

										</div>
									</div>-->
									
									<div class="col-xs-12 col-sm-12">
										<div class="input-field">
											<span class="btn-border email_length">
												<label for="ex_file" class="btn btn-primary btn-custom-border text-uppercase email_length"
													style="margin-bottom:0px; width:100%; height:100%; text-align:center;
														font-weight:600; "
													
												>업로드</label>
												<input type="file" name="file" id="ex_file" style="display:none;">
											</span>
										</div>
									</div>
									
									
									
									<div class="col-xs-12 col-sm-12">
										<div class="input-field">
											<span class="btn-border email_length">
												<button type="submit"
													class="btn btn-primary btn-custom-border text-uppercase email_length">변환하기</button>
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
							<span class="prev-page"><a href="/user/login.do"
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
	
	
	<script>
	$(document).ready(function(){
		var fileTarget = $('.filebox .upload-hidden');
		fileTarget.on('change', function(){ // 값이 변경되면 if(window.FileReader){
		 // modern browser var filename = $(this)[0].files[0].name;
		} else {
		// old IE var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 }
		// 추출한 파일명 삽입 $(this).siblings('.upload-name').val(filename); }); 
	});
	
	</script>
</body>
</html>