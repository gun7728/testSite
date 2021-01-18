<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/gj.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/gj.js"></script>
<script>
	$(document).ready(function() {
		$('details').click(function(event) {
			var index = $('details').index(this);
			var len = $("details").length;
			for (var i = 0; i < len; i++) {
				if (i != index) {
					$("details")[i].removeAttribute("open");
				}
			}
		}); 
	});
</script>
</head>
<body>
<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">자주 묻는 질문</h1>
				<p class="sub_text">
					<span>Bean's Story의 고객님들의</span> <br>자주 묻는 질문 입니다.
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do" >공지사항</a></li>
					<li><a href="event.do" >이벤트</a></li>
					<li><a href="question.do" class="select_on">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do">지도</a></li>
					<li><a href="youtube.do">유튜브</a></li>
				</ul>
			</div>
		</section>
		<section class="content">
		<div class="question_content">
			<%--
 			<c:forEach var="vo" items="${list}">
				<summary>${vo.notice_name}</summary>
				<p>${vo.notice_info}</p>
			</c:forEach> 
--%>
			<details>
				<summary>공지1</summary>
				<p>공지이이이이1</p>
			</details>
			<details>
				<summary>공지2</summary>
				<p>공지이이이이1</p>
			</details>
			<details>
				<summary>공지3</summary>
				<p>공지이이이이1</p>
			</details>
			<details>
				<summary>공지4</summary>
				<p>공지이이이이1</p>
			</details>
			<details>
				<summary>공지5</summary>
				<p>공지이이이이1</p>
			</details>
			<details>
				<summary>공지6</summary>
				<p>공지이이이이1</p>
			</details>
			<details>
				<summary>공지7</summary>
				<p>공지이이이이1</p>
			</details>
		</div>
		</section>
	</div>
</body>
</html>