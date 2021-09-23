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
<meta charset="utf-8">
<title>음식 게시판</title>
<link href="${pageContext.request.contextPath}/resource/css/food_johns.css" typs="text/css" rel="stylesheet"><!--이거 지우면 안됨-->
<link href="${pageContext.request.contextPath}/resource/css/food_styl.css" typs="text/css" rel="stylesheet">
<link rel="stylesheet" href="/resource/css/style.css">
<script src="${pageContext.request.contextPath}/resource/js/jquery-3.3.1.js">
</script>
<script src="${pageContext.request.contextPath}/resource/js/foodisotope.pkgd.js">
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
</head>

<body>
<div class="wrap">

    
    <section>
    	<h2 class="fppd_h2">
			<a href="/index.do"><img src="/resource/img/logo.png" class="img_size2" alt="올포유 로고"></a>
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
      <button class="button" data-filter=".a1">육류</button>
      <button class="button" data-filter=".a2">어페류</button>
        <button class="button" data-filter=".ium">곡류</button>
    </div>

  
  <div class="grid">
      <div class="element-item transition metal " data-category="transition">
        <a href="#"><img src="/resource/img/food/bibimbap.jpg">
        </a>
                    	<div class="c1">
                            <h3>비빔밥</h3>
                            <p>달콤한 맛의 유혹~ 고구마피자</p>
                            <p class="p1">10,000원</p>
                    	</div>
      </div>
      <div class="element-item metalloid " data-category="metalloid">
        <a href="#"><img src="/resource/img/food/bulgogi.jpg"></a>
                    	<div class="c1">
                            <h3>불고기</h3>
                            <p>느끼함과 부드러움으로 여심을 사로잡는</p>
                            <p class="p1">14,000원</p>
                    	</div>
      </div>
      <div class="element-item post-transition metal a1" data-category="post-transition">
        <a href="#"><img src="/resource/img/food/cabbagekimchi.jpg"></a>
                    	<div class="c1">
                            <h3>배추김치</h3>
                            <p>새콤달콤한 깐쇼새우피자</p>
                            <p class="p1">16,000원</p>
                    	</div>
      </div>
      <div class="element-item post-transition metal " data-category="post-transition">
        <a href="#"><img src="/resource/img/food/chicken.jpg"></a>
                    	<div class="c1 c2">
                            <h3>후라이드 치킨</h3>
                            <p>입안에서 톡톡 터지는<br>소시지와 특제소스의 만남~</p>
                            <p class="p1">12,000원</p>
                    	</div>
      </div>
      <div class="element-item transition metal " data-category="transition">
        <a href="#"><img src="/resource/img/food/cucumber.jpg"></a>
                    	<div class="c1">
                            <h3>오이소박이</h3>
                            <p>담백한 닭안심살과 달콤한 칠리소스의 조화</p>
                            <p class="p1">14,000원</p>
                    	</div>
      </div>
      <div class="element-item alkali metal " data-category="alkali">
        <a href="#"><img src="/resource/img/food/fern.jpg"></a>
                    	<div class="c1">
                            <h3>고사리나물</h3>
                            <p>치즈롤을 하나씩 입 안에 쏙쏙</p>
                            <p class="p1">13,000원</p>
                    	</div>
      </div>
      <div class="element-item alkali metal " data-category="alkali">
        <a href="#"><img src="/resource/img/food/gimbap.jpg"></a>
                    	<div class="c1 c2">
                            <h3>김밥</h3>
                            <p>부드럽고 쫄깃한 떡갈비와<br> 특제소스의 완벽한 조화</p>
                            <p class="p1">13,000원</p>
                    	</div>
      </div>
      <div class="element-item transition metal " data-category="transition">
        <a href="#"><img src="/resource/img/food/greenonion.jpg"></a>
                    	<div class="c1 c2">
                            <h3>파김치</h3>
                            <p>불향 가득한 불갈비만두와 피자 엣지의 달콤<br>한 콘크림무스가 어우러진 피자</p>
                            <p class="p1">14,000원</p>
                    	</div>
      </div>
      <div class="element-item alkaline-earth metal " data-category="alkaline-earth">
        <a href="#"><img src="/resource/img/food/greenPancake.jpg"></a>
                    	<div class="c1">
                            <h3>파전</h3>
                            <p>한국 전통 불고기가 피자를 만났을 때~</p>
                            <p class="p1">12,000원</p>
                    	</div>
      </div>
      <div class="element-item transition metal " data-category="transition">
        <a href="#"><img src="/resource/img/food/kimchipancake.jpg"></a>
                    	<div class="c1 c2">
                            <h3>김치전</h3>
                            <p>또띠아 속 타코불고기를 사로잡은 살사&체다치즈 !</p>
                            <p class="p1">14,000원</p>
                    	</div>
      </div>
      <div class="element-item post-transition metal " data-category="post-transition">
        <a href="#"><img src="/resource/img/food/kimchirice.jpg"></a>
                    	<div class="c1">
                            <h3>김치볶음밥</h3>
                            <p>스테이크의 진한 풍미를 느끼다!</p>
                            <p class="p1">14,000원</p>
                    	</div>
      </div>
      <div class="element-item metalloid " data-category="metalloid">
        <a href="#"><img src="/resource/img/food/kimchistew.jpg"></a>
                    	<div class="c1">
                            <h3>김치찌개</h3>
                            <p>건강한 야채의 아삭함~ 야채퀘사디아피자!</p>
                            <p class="p1">13,000원</p>
                    	</div>
      </div>
      <div class="element-item transition metal " data-category="transition">
        <a href="#"><img src="/resource/img/food/noodles.jpg"></a>
                    	<div class="c1">
                            <h3>잔치국수</h3>
                            <p>담백한 아이리쉬포테이토 피자</p>
                            <p class="p1">13,000원</p>
                    	</div>
      </div>
      <div class="element-item lanthanoid metal inner-transition a1" data-category="lanthanoid">
        <a href="#"><img src="/resource/img/food/pumpkinstirfried.jpg"></a>
                    	<div class="c1 c2">
                            <h3>애호박볶음</h3>
                            <p>직화로 구워 풍미가 가득한 불고기와<br> 홀그레인 머스터드 소스의 환상적인 만남쏙</p>
                            <p class="p1">14,000원</p>
                    	</div>
      </div>
      <div class="element-item noble-gas nonmetal " data-category="noble-gas">
        <a href="#"><img src="/resource/img/food/ribsteamed.jpg"></a>
                    	<div class="c1">
                            <h3>갈비찜</h3>
                            <p>매니아들을 위한 특제 피자! 치즈피자</p>
                            <p class="p1">10,000원</p>
                    	</div>
      </div>
      <div class="element-item diatomic nonmetal " data-category="diatomic">
        <a href="#"><img src="/resource/img/food/radishkimchi.jpg"></a>
                    	<div class="c1">
                            <h3>깍두기</h3>
                            <p>피자의 대명사! 콤비네이션 피자</p>
                            <p class="p1">11,000원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition " data-category="actinoid">
        <a href="#"><img src="/resource/img/food/bibimbap.jpg"></a>
                    	<div class="c1">
                            <h3>페퍼로니피자</h3>
                            <p>오리지날 미국 피자! 페퍼로니피자</p>
                            <p class="p1">11,000원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition " data-category="actinoid">
        <a href="#"><img src="/resource/img/food/RiceSoup.jpg"></a>
                    	<div class="c1">
                            <h3>떡만두국</h3>
                            <p>남녀노소 모두에게 인기있는</p>
                            <p class="p1">12,000원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition a1" data-category="actinoid">
                    	<a href="#"><img src="/resource/img/food/seasoningchicken.jpg"></a>
                    	<div class="c1">
                            <h3>양념치킨</h3>
                            <p>매콤 달콤 불닭이 어우러진 화끈한 맛!</p>
                            <p class="p1">12,000원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition " data-category="actinoid">
        <a href="#"><img src="/resource/img/food/SeaweedSoup.jpg"></a>
                    	<div class="c1">
                            <h3>미역국</h3>
                            <p>쫄깃한 또띠아와 매콤한 치킨의 어우러짐!</p>
                            <p class="p1">13,000원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition a2" data-category="actinoid">
        <a href="#"><img src="/resource/img/food/songpyeon.jpg"></a>
                    	<div class="c1">
                            <h3>송편</h3>
                            <p>노릇노릇하게 구워진 치즈와 스파게티!</p>
                            <p class="p1">6,000원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition a2" data-category="actinoid">
        <a href="#"><img src="/resource/img/food/SpicyChicken.jpg"></a>
                    	<div class="c1 c2">
                            <h3>닭갈비</h3>
                            <p>부드러운 감자에 치즈 시즈닝과 갈릭소스를 한번에!</p>
                            <p class="p1">5,000원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition a2" data-category="actinoid">
        <a href="#"><img src="/resource/img/food/spinach.jpg"></a>
                    	<div class="c1 c2">
                            <h3>시금치나물</h3>
                            <p>탱글탱글한 새우살이 가득한 새우링과<br> 노릇하게 구워낸 웨지감자</p>
                            <p class="p1">4,000원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition a2" data-category="actinoid">
        <a href="#"><img src="/resource/img/food/steamedchicken.jpg"></a>
                    	<div class="c1">
                            <h3>찜닭</h3>
                            <p>파파존스 핫소스</p>
                            <p class="p1">300원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition a2" data-category="actinoid">
        <a href="#"><img src="/resource/img/food/stirfriedmeat.jpg"></a>
                    	<div class="c1">
                            <h3>제육볶음</h3>
                            <p>치즈시즈닝</p>
                            <p class="p1">300원</p>
                    	</div>
      </div>
      <div class="element-item actinoid metal inner-transition a2" data-category="actinoid">
        <a href="#"><img src="/resource/img/food/tteokgalbi.jpg"></a>
                    	<div class="c1">
                            <h3>떡갈비</h3>
                            <p>파마산 치즈가루</p>
                            <p class="p1">300원</p>
                    	</div>
      </div>
      
        </div>

    </section>
    <div class="div_button">
				<button type="button"
				onclick="location.href='/index.do' "
				class="btn button_FA6862 button_FA6862_seat" style="width:120px; margin-right: 10px;">이전 페이지</button>
		</div>
</div>



<script >
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