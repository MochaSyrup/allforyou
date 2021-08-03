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
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
        
        <!-- ================================
        CSS Files
        ================================= -->
        <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i|Open+Sans:400,600,700,800" rel="stylesheet">
        <link rel="stylesheet" href="resource/css/themefisher-fonts.min.css">
        <link rel="stylesheet" href="resource/css/bootstrap.min.css">
        <link rel="stylesheet" href="resource/css/main.css">
        <link id="color-changer" rel="stylesheet" href="resource/css/colors/color-0.css">
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
                            <div class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                                <div class="page-title text-center">
                                    <h2>회원  <span class="primary">가입</span> <span class="title-bg">All For You</span></h2>
                                    <p>올포유는 한국을 여행하는 외국인 관광객을 위한 식품 알레르기 사고 발생 예방 서비스 입니다</p>
                                </div>
                            </div>                            
                        </div> <!-- /.row -->

                        <!-- <div class="row">
                            <div class="col-xs-12 col-sm-5 col-md-4 col-lg-3">
                                <div class="contact-block">
                                    <div class="media">
                                        <div class="media-left">
                                            <i class="tf-envelope2"></i>
                                        </div>
                                        <div class="media-body">
                                            <h4>Email</h4>
                                            <p><a href="mailto:my_name@gmail.com">my_name@gmail.com</a></p>
                                        </div>
                                    </div>
                                </div>
                                /.contact-block
                                <div class="contact-block">
                                    <div class="media">
                                        <div class="media-left">
                                            <i class="tf-phone2"></i>
                                        </div>
                                        <div class="media-body">
                                            <h4>Phone</h4>
                                            <p><a href="tel:+000-1111-2222">+000-1111-2222</a></p>
                                        </div>
                                    </div>
                                </div>
                                /.contact-block
                                <div class="contact-block">
                                    <div class="media">
                                        <div class="media-left">
                                            <i class="tf-mobile"></i>
                                        </div>
                                        <div class="media-body">
                                            <h4>Skype</h4>
                                            <p><a href="skype:my_name">my_name</a></p>
                                        </div>
                                    </div>
                                </div>
                                /.contact-block

                                <ul class="contact-social">
                                    <li>
                                        <span class="contact-social-hex"></span>
                                        <a href="www.fb.com/themefisher"><i class="tf-ion-social-facebook"></i></a>
                                    </li>
                                    <li>
                                        <span class="contact-social-hex"></span>
                                        <a href="www.twitter.com/themefisher"><i class="tf-ion-social-twitter"></i></a>
                                    </li>
                                    <li>
                                        <span class="contact-social-hex"></span>
                                        <a href="#"><i class="tf-ion-social-google"></i></a>
                                    </li>
                                    <li>
                                        <span class="contact-social-hex"></span>
                                        <a href="www.dribbble.com/themefisher"><i class="tf-ion-social-dribbble"></i></a>
                                    </li>
                                </ul>
                            </div> -->
                            <div class="col-xs-12 col-sm-7 col-md-7 col-md-offset-1 col-lg-offset-2">
                                <div class="section-title clear">
                                    <h3>회원가입</h3>
                                    <span class="bar-dark"></span>
                                    <span class="bar-primary"></span>
                                </div>

                                <form id="contact-form" class="row contact-form no-gutter" action="#" method="post">
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="input-field name">
                                            <span class="input-icon" id="name" ><i class="tf-profile-male"></i></span>
                                            <input type="text" class="form-control"  placeholder="이름을 입력하세요">
                                        </div>
                                    </div> <!-- ./col- -->
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="input-field email">
                                            <span class= "input-icon" id="email"><i class="tf-envelope2"></i></span>
                                            <input type="email" class="form-control" name="email" placeholder="이메일 형식의 아이디를 입력하세요">
                                        </div>
                                    </div> <!-- ./col- -->
                                    <div class="col-xs-12 col-sm-12">
                                    
                                        <div class="input-field">
                                            <span class= "input-icon" id="subject"><i class="tf-pricetags"></i></span>
                                            <input type="text" class="form-control" name="subject" placeholder="비밀번호를 입력하세요">
                                        </div>
                                    </div> <!-- ./col- -->
                                    <div class="col-xs-12 col-sm-12">
                                        <div class="input-field message">
                                            <span class= "input-icon" ><i class="tf-pencil2"></i></span>
                                            <textarea name="message" id="message" class="form-control" placeholder="Write your message"></textarea>
                                        </div>
                                    </div> <!-- ./col- -->
                                    <div class="col-xs-12 col-sm-12">
                                        <div class="input-field">
                                            <span class="btn-border">
                                                <button type="submit" class="btn btn-primary btn-custom-border text-uppercase">회원가입 완료</button>
                                            </span>
                                        </div>
                                        <div class="msg-success">Your Message was sent successfully</div>
                                        <div class="msg-failed">Something went wrong, please try again later</div>
                                    </div> <!-- ./col- -->
                                </form> <!-- /.row -->
                            </div> <!-- /.col- -->
                        </div> <!-- /.row -->
                    </div> <!-- /.container -->

                    <nav class="page-nav clear">
                        <div class="container">
                            <div class="flex flex-middle space-between">
                                <span class="prev-page"><a href="testimonials.do" class="link">&larr; Prev Page</a></span>
                                <span class="copyright hidden-xs">Copyright &copy; 2021 AllForYou, All Rights Reserved.</span>
                            </div>
                        </div>
                        <!-- /.page-nav -->
                    </nav>
                    <!-- /.container -->

                </div> <!-- /.pt-tablecell -->
            </div> <!-- /.pt-table -->
        </main> <!-- /.site-wrapper -->

        <!-- ================================
        JavaScript Libraries
        ================================= -->
        <script src="resource/js/vendor/jquery-2.2.4.min.js"></script>
        <script src="resource/js/vendor/bootstrap.min.js"></script>
        <script src="resource/js/jquery.easing.min.js"></script>
        <script src="resource/js/isotope.pkgd.min.js"></script>
        <script src="resource/js/jquery.nicescroll.min.js"></script>
        <script src="resource/js/owl.carousel.min.js"></script>
        <script src="resource/js/jquery-validation.min.js"></script>
        <script src="resource/js/form.min.js"></script>
        <script src="resource/js/main.js"></script>
    </body>
</html>