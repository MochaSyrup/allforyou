<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="poly.dto.ProjectsDTO"%>    
<%@ page import="poly.util.CmmUtil" %>
<!DOCTYPE html>
<html>
<% 
   String user_name = CmmUtil.nvl((String)session.getAttribute("id"));    
%>

<head>

<script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script type="text/javascript">
	function googleTranslateElementInit() {new google.translate.TranslateElement({pageLanguage: 'ko', includedLanguages : 'en,ja,es,fr,zh-CN,ru,de,pt', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');}
</script>
<meta charset="UTF-8">
<title>AII FOR YOU</title>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
   integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
   crossorigin="anonymous">
   <link rel="stylesheet" href="/resource/css/style.css">
<title>board</title>

<style>
body {
   padding-top: 70px;
   padding-bottom: 30px;
}
<pre><c:out value="${content}" /></pre>

</style>

</head>
<body>
   <a href="/index.do"><img src="/resource/img/logo.png" class="img_size"
      alt="올포유 로고" /></a>
   <br>
   <br>

   <article>


      <div class="container" role="main">

         <h2 align="center">문의 게시글 작성</h2>
<div id="google_translate_element"></div>
         <form name="form" id="form" role="form" method="post"
            action="/customerCenter/csCenterMails.do">

            <div class="mb-3">

               <label for="title">제목</label> <input type="text"
                  class="form-control" name="title" id="title"
                  placeholder="제목을 입력해 주세요">

            </div>

            <div class="mb-3">

               <label for="reg_id">주의사항</label> <input type="text"
                  class="form-control" id="reg_id"
                  placeholder="양식을 꼭 작성해주세요" readonly>

            </div>

            <div class="mb-3">

               <label for="content">내용</label>

               <textarea class="form-control" rows="7" name="contents" id="content">
<please fill out the form>               
name : 
cellphone : 
email : 

content : 
</textarea>

            </div>


            <button type="submit" class="btn btn-sm btn-primary button_color" id="btnSave">문의하기</button>
<button type="button" onclick="location.href='/contact/contact.do'" class="btn btn-sm btn-primary button_color">이전 페이지</button>
         </form>

      </div>

   </article>
</body>
</html>