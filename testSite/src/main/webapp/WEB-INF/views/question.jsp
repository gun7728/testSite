<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/gj.css">
<link rel="stylesheet" href="css/question.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
					<li><a href="notice.do">공지사항</a></li>
					<li><a href="event.do">이벤트</a></li>
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
				<div class="hnq_text">
					<h1>HOME > 공지사항 > 자주 묻는 질문</h1>
				</div>
				<div class="hnq2_text">
					<h1>Bean's Story의 다양한 질문들을 확인하세요</h1>
				</div>
				<div class="qline"></div>
				<%--
 			<c:forEach var="vo" items="${list}">
				<summary>${vo.notice_name}</summary>
				<div>
				<p>${vo.notice_info}</p>
				</div>
			</c:forEach> 
--%>
				<details>
					<summary>질문1</summary>
					<div>
						<p>질문1</p>
					</div>
				</details>
				<details>
					<summary>질문2</summary>
					<div>
						<p>질문2</p>
					</div>
				</details>
				<details>
					<summary>질문3</summary>
					<div>
						<p>질문3</p>
					</div>
				</details>
				<details>
					<summary>질문4</summary>
					<div>
						<p>질문4</p>
					</div>
				</details>
				<details>
					<summary>질문5</summary>
					<div>
						<p>질문5</p>
					</div>
				</details>
				<details>
					<summary>질문6</summary>
					<div>
						<p>질문6</p>
					</div>
				</details>
				<details>
					<summary>질문7</summary>
					<div>
						<p>질문7</p>
					</div>
				</details>
			</div>
		</section>
	</div>
</body>
</html>