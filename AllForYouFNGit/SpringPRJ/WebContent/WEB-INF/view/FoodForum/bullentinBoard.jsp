<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="static poly.util.CmmUtil.nvl"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="poly.dto.ProjectsDTO"%>

<!DOCTYPE html>
<html>
<!-- 컨토롤러에서 실행된 로직들의 결과값을 가져온다 == rlist에 담아진 값들  -->
<%
	List<ProjectsDTO> rList = (List<ProjectsDTO>) request.getAttribute("rList");
%>

<head>
<script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script type="text/javascript">
	function googleTranslateElementInit() {new google.translate.TranslateElement({pageLanguage: 'ko', includedLanguages : 'en,ja,es,fr,zh-CN,ru,de,pt',layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');}
</script>

<meta charset="utf-8">
<title>음식 게시판</title>
<link
	href="${pageContext.request.contextPath}/resource/css/food_johns.css"
	typs="text/css" rel="stylesheet">
<!--이거 지우면 안됨-->
<link
	href="${pageContext.request.contextPath}/resource/css/food_styl.css"
	typs="text/css" rel="stylesheet">
<link rel="stylesheet" href="/resource/css/style.css">
<script
	src="${pageContext.request.contextPath}/resource/js/jquery-3.3.1.js">
</script>
<script
	src="${pageContext.request.contextPath}/resource/js/foodisotope.pkgd.js">
</script>
<script>
$(document).ready(function(e) {
    //메인 메뉴에 마우스 올리면 서브메뉴 나옴
	$('.nav > ul > li').hover(function(){
		$('.sub').stop().slideDown();
		$('.sub_bg').stop().slideDown();
	},
	function(){
		$('.sub').stop().slideUp();
		$('.sub_bg').stop().slideUp();
	});
	
	//버튼 누르면 색 고정
	$('button').click(function(){
		$('button').removeClass('active');
		$(this).addClass('active');
	});
});
</script>

<style>
#google_translate_element > div > div {
	position: relative;
	min-width: 150px;
	height:30px;
}

</style>
</head>

<body>
	<div class="wrap">


		<section>

			<h2 class="fppd_h2">
				<a href="/index.do"><img src="/resource/img/logo.png"
					class="img_size2" alt="올포유 로고"></a>
			</h2>
			<h2 class="h2_seat2">
				<code class="h2_seat_color">음식 게시판</code>
			</h2>
		
					
			
			<div class="siub">

				<!--<div class="siud_menu">
            	<!--<ul class="menu_li">
                	<li><a href="siub_style.html">전체메뉴</a></li>
                    <li><a href="siub_style2.html">베스트메뉴</a></li>
                    <li><a href="#">사이드메뉴</a></li>
                    <li><a href="#">추가토핑</a></li>
                </ul>
            </div>-->

				<div class="filters button-group js-radio-button-group">
				
					<button class="button is-checked button_first" data-filter="*">전체</button>
					<button class="button" data-filter=".a1">메인요리</button>
					<button class="button" data-filter=".a2">반찬</button>
					<button class="button" data-filter=".a3">육류</button>
				</div>

<div id="google_translate_element" ></div>
				<div class="grid">
					<div class="element-item transition metal a1"
						data-category="transition">
						<a href="#"><img src="/resource/img/food/bibimbap.jpg">
						</a>
						<div class=".a1">
							<h3>비빔밥</h3>
							<p>
								밥에 나물·고기·고명 등을 넣어<br>참기름과 양념으로 비빈 밥
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>밥, 고추장, 참기름, 계란, 시금치나물, 콩나물무침, 소고기볶음</p>
						</div>
					</div>
					<div class="element-item metalloid a1 a3" data-category="metalloid">
						<a href="#"><img src="/resource/img/food/bulgogi.jpg"></a>
						<div class="a1a2a3">
							<h3>불고기</h3>
							<p>
								얇은 소고기를 양념 후<br>불에 구워 먹는 한국 요리
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>돼지고기, 호박, 양파, 간장, 설탕, 다진마늘, 깨, 당근, 버섯, 대파, 올리고당, 후추, 참기름</p>
						</div>
					</div>
					<div class="element-item post-transition metal a2"
						data-category="post-transition">
						<a href="#"><img src="/resource/img/food/cabbagekimchi.jpg"></a>
						<div class="a2">
							<h3>배추김치</h3>
							<p>
								배추를 주재료로 하여 소금에 절여 헹군 뒤<br>양념을 넣고 담그는 김치
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>배추, 밀가루풀, 고춧가루, 까나리액젓, 다진마늘, 다진생강, 쪽파, 무, 설탕, 양파, 새우젓</p>
						</div>
					</div>
					<div class="element-item post-transition metal a1 a3"
						data-category="post-transition">
						<a href="#"><img src="/resource/img/food/chicken.jpg"></a>
						<div class="c1 c3">
							<h3>후라이드 치킨</h3>
							<p>닭에 튀김가루를 입히고 튀겨 만든 요리</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>닭고기, 튀김가루, 소금, 우유, 식용유</p>
						</div>
					</div>
					<div class="element-item transition metal a2"
						data-category="transition">
						<a href="#"><img src="/resource/img/food/cucumber.jpg"></a>
						<div class="c1 c2">
							<h3>오이소박이</h3>
							<p>
								오이의 허리를 서너 갈래로 갈라 속에<br> 파, 마늘, 생강, 고춧가루를 섞은<br> 소를 넣어
								담근 김치.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>오이, 부추, 양파, 다진마늘, 고춧가루, 멸치액젓, 매실, 설탕, 통깨, 소금</p>
						</div>
					</div>
					<div class="element-item alkali metal a2" data-category="alkali">
						<a href="#"><img src="/resource/img/food/fern.jpg"></a>
						<div class="c1">
							<h3>고사리나물</h3>
							<p>
								갓 캔 고사리나 말린 고사리를 데친 후<br> 물에 불린 다음 양념하여 볶은 나물.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>고사리, 다진마늘, 들기름, 대파, 국간장, 식용류</p>
						</div>
					</div>
					<div class="element-item alkali metal a1" data-category="alkali">
						<a href="#"><img src="/resource/img/food/gimbap.jpg"></a>
						<div class="c1">
							<h3>김밥</h3>
							<p>
								김 위에 밥을 펴 놓고 여러 가지 반찬으로<br>소를 박아 둘둘 말아 싸서 썰어 먹는 음식.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>
								밥, 소금, 참기름, 구운 김, 다진 소고기, 단무지, 오이, 당근, 계란, 식용유, 소금, 참기름
							</p>
						</div>
					</div>
					<div class="element-item transition metal a2"
						data-category="transition">
						<a href="#"><img src="/resource/img/food/greenonion.jpg"></a>
						<div class="c1 c2">
							<h3>파김치</h3>
							<p>파로 담근 김치</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>쪽파, 고춧가루, 멸치액젓, 설탕, 물, 다진마늘</p>
						</div>
					</div>
					<div class="element-item alkaline-earth metal a1"
						data-category="alkaline-earth">
						<a href="#"><img src="/resource/img/food/greenPancake.jpg"></a>
						<div class="c1 c2">
							<h3>파전</h3>
							<p>
								반죽한 밀가루에 파를 넣어 지진 한국피자.<br>추가로 고기, 조갯살, 굴 따위를 얹기도 한다.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>파, 조갯살, 밀가루, 쌀가루, 계란, 소금, 간장, 설탕, 파, 마늘, 참기름, 식초, 고추가루</p>
						</div>
					</div>
					<div class="element-item transition metal a1"
						data-category="transition">
						<a href="#"><img src="/resource/img/food/kimchipancake.jpg"></a>
						<div class="c1">
							<h3>김치전</h3>
							<p>
								반죽한 밀가루에 파를 넣어 지진 한국피자.<br>추가로 돼지고기나 치즈를 얹기도 한다.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>배추김치, 식용유, 밀가루, 계란, 간장, 식초, 설탕, 물</p>
						</div>
					</div>
					<div class="element-item post-transition metal a1"
						data-category="post-transition">
						<a href="#"><img src="/resource/img/food/kimchirice.jpg"></a>
						<div class="c1 c2">
							<h3>김치볶음밥</h3>
							<p>
								쌀밥에 김치, 야채 따위를 잘게 썰어 넣고<br>기름에 볶아 만든 밥.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>밥, 배추김치, 돼지고기, 양파, 설탕, 간장, 참기름, 식용유, 쪽파, 계란후라이</p>
						</div>
					</div>
					<div class="element-item metalloid a2" data-category="metalloid">
						<a href="#"><img src="/resource/img/food/kimchistew.jpg"></a>
						<div class="c1">
							<h3>김치찌개</h3>
							<p>김치를 넣고 끓인 찌개.</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>배추김치, 돼지고기, 참치, 맛술, 마늘, 생강, 참기름, 고춧가루, 무, 양파, 다시마, 소금, 두부, 파</p>
						</div>
					</div>
					<div class="element-item transition metal a1"
						data-category="transition">
						<a href="#"><img src="/resource/img/food/noodles.jpg"></a>
						<div class="c1">
							<h3>잔치국수</h3>
							<p>
								맑은장국에 국수를 말고 고명을 얹은 음식.<br>잔칫날에 맛볼 수 있었던 데에서<br>유래한
								이름이다.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>면, 호박, 당근, 계란, 김가루, 간장, 고추가루, 매실액, 참기름, 깨, 다진고추, 다진대파, 다진마늘, 국물용멸치, 무, 대파, 양파, 다시마, 국간장</p>
						</div>
					</div>
					<div class="element-item lanthanoid metal inner-transition a2"
						data-category="lanthanoid">
						<a href="#"><img src="/resource/img/food/pumpkinstirfried.jpg"></a>
						<div class="c1">
							<h3>애호박볶음</h3>
							<p>
								애호박을 얇게 썰어 새우젓,<br>마늘 따위를 넣고 기름에 볶은 반찬.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>애호박, 들기름, 다진마늘, 앵파, 새우젓, 통깨</p>
						</div>
					</div>
					<div class="element-item noble-gas nonmetal a1 a3"
						data-category="noble-gas">
						<a href="#"><img src="/resource/img/food/ribsteamed.jpg"></a>
						<div class="c1 c2">
							<h3>갈비찜</h3>
							<p>소나 돼지 따위의 갈비를 양념과 간을 하여 국물이 바특하게 흠씬 삶은 음식.</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>소고기, 대파, 배, 밤, 당근, 무, 통후추, 청주, 간장, 설탕, 소금, 참기름</p>
						</div>
					</div>
					<div class="element-item diatomic nonmetal a2"
						data-category="diatomic">
						<a href="#"><img src="/resource/img/food/radishkimchi.jpg"></a>
						<div class="c1">
							<h3>깍두기</h3>
							<p>
								무를 작고 네모나게 썰어서 소금에 절인 후<br>고춧가루 따위의 양념과 함께 버무려 만든 김치.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>무, 파, 소금, 사이다, 고추가루, 다진마늘, 양파, 사과, 생강, 새우젓, 액젓, 찹쌀풀, 매실액</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a1 a3"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/samgyetang.jpg"></a>
						<div class="c1">
							<h3>삼계탕</h3>
							<p>
							닭을 한약재와 찹쌀을 넣어 푹 고아낸 음식.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>닭고기, 찹쌀, 황기, 인삼, 마늘, 대추, 소금, 후춧가루, 대파, 전복</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a1 a2"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/RiceSoup.jpg"></a>
						<div class="c1">
							<h3>떡만둣국</h3>
							<p>떡국에 만두를 넣어 끓인 국물 요리.</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>떡, 만두, 사골곰탕, 대파, 달걀, 다진마늘, 소금, 후추</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a1 a3"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/seasoningchicken.jpg"></a>
						<div class="c1">
							<h3>양념치킨</h3>
							<p>
								치킨을 간장이나 고추장등으로<br>만든 양념에 버무린 음식.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>닭고기, 청주, 소금, 간장, 다진마늘, 식초, 올리고당, 케첩, 참기름, 우유, 후춧가루</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a2"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/SeaweedSoup.jpg"></a>
						<div class="c1">
							<h3>미역국</h3>
							<p>
								미역으로 끓인 국으로,<br>혈액 순환과 피를 맑게 하는 데 도움이 된다.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>미역, 간장, 소금, 다진마늘, 된장</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a1"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/songpyeon.jpg"></a>
						<div class="c1">
							<h3>송편</h3>
							<p>
								멥쌀가루를 끓는 물로 익반죽하여<br>깨, 콩, 팥 등의 소를 넣고<br>반달 모양으로 빚어 솔잎을 깔고 쪄낸다. 
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>쌀가루, 깨, 소금, 물엿, 설탕, 콩</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a1 a3"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/SpicyChicken.jpg"></a>
						<div class="c1">
							<h3>닭갈비</h3>
							<p>
								닭고기를 한입 크기로 잘라<br>여러 채소들과 함께 매콤하게 볶아낸 음식이다.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>닭고기, 양파, 양배추, 대파, 깻입, 떡, 고구마, 당근, 맛술, 후추, 설탕, 고추가루, 통깨, 다진마늘, 고추장, 맛술, 간장, 물엿, 소금</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a2"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/spinach.jpg"></a>
						<div class="c1">
							<h3>시금치나물</h3>
							<p>
								끓는 물에 데친 시금치를소금, 파ㆍ마늘,<br>참기름, 깨소금으로 무친 것이다.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>시금치, 다진마늘, 액젓</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a1 a3"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/steamedchicken.jpg"></a>
						<div class="c1">
							<h3>찜닭</h3>
							<p>
								토막 낸 달고기에 각종 채소와 당면을<br>넣은 요리.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>닭고기, 식용유, 당면, 감자, 당근, 양파, 청경채, 마른고추, 파, 마늘, 맛술, 소금, 후춧가루, 다진 생각</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a1 a3"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/stirfriedmeat.jpg"></a>
						<div class="c1">
							<h3>제육볶음</h3>
							<p>
								돼지고기를 고추장 양념에 재웠다가 구운<br>한국인이 가장 즐겨먹는 음식이다.
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>
								돼지고기, 고추가루, 고추장, 대두, 콩, 설탕, 파, 마늘, 생강, 맛술, 후춧가루
							</p>
						</div>
					</div>
					<div class="element-item actinoid metal inner-transition a1 a3"
						data-category="actinoid">
						<a href="#"><img src="/resource/img/food/tteokgalbi.jpg"></a>
						<div class="c1">
							<h3>떡갈비</h3>
							<p>
								소갈비 살을 다져서 간장 양념 하여 치댄 후<br>갈비뼈에 두툼하게 붙여서 구워 먹는 음식
							</p>
							<p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
							<p>소고기, 돼지고기, 간장, 설탕, 올리고당, 참기름, 마늘, 생강즙, 배즙, 참기름, 꿀</p>
						</div>
					</div>

				</div>
		</section>
		<div class="div_button">
			<button type="button" onclick="location.href='/index.do' "
				class="btn button_FA6862 button_FA6862_seat"
				style="width: 120px; margin-right: 10px;">이전 페이지</button>
		</div>
	</div>



	<script>
// init Isotope
var $grid = $('.grid').isotope({
  itemSelector: '.element-item',
  layoutMode: 'fitRows',
  getSortData: {
    name: '.name',
    symbol: '.symbol',
    number: '.number parseInt',
    category: '[data-category]',
    weight: function( itemElem ) {
      var weight = $( itemElem ).find('.weight').text();
      return parseFloat( weight.replace( /[\(\)]/g, '') );
    }
  }
});

// filter functions
var filterFns = {
  // show if number is greater than 50
  numberGreaterThan50: function() {
    var number = $(this).find('.number').text();
    return parseInt( number, 10 ) > 50;
  },
  // show if name ends with -ium
  ium: function() {
    var name = $(this).find('.name').text();
    return name.match( /ium$/ );
  }
};

// bind filter button click
$('.filters').on( 'click', 'button', function() {
  var filterValue = $( this ).attr('data-filter');
 
  filterValue = filterFns[ filterValue ] || filterValue;
  $grid.isotope({ filter: filterValue });
});

$('.button-group').each( function( i, buttonGroup ) {
  var $buttonGroup = $( buttonGroup );
  $buttonGroup.on( 'click', 'button', function() {
    $buttonGroup.find('.is-checked').removeClass('is-checked');
    $( this ).addClass('is-checked');
  });
});
  
</script>
</body>
</html>