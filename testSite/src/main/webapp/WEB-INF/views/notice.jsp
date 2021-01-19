<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice</title>
<link rel="stylesheet" href="css/gj.css">
</head>
<body>
	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">공지사항</h1>
				<p class="sub_text">
					<span>Bean's Story는 국내 브랜드의 자부심을 지키며</span> <br>대한민국 커피 문화를
					이끌어 나갑니다.
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do" class="select_on">공지사항</a></li>
					<li><a href="event.do">이벤트</a></li>
					<li><a href="question.do">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do">지도</a></li>
					<li><a href="youtube.do">유튜브</a></li>
				</ul>
			</div>
		</section>
		<section>
			<div class="notice_content">
				<div class="hnm_text">
					<h1>HOME > 공지사항 </h1>
				</div>
				<div class="hnm2_text">
					<h1>Bean's Story의 공지사항을 확인하세요.</h1>
				</div>
				<div class="nline"></div>
				<div id="map" style="width: 1140px; height: 636px;"></div>
				
				<div class="n_textline"></div>
			</div>

		</section>
	<!-- 공지사항 -->
	<div class = "notice_content1">
	<select name ="kefield" class="scu">
	<option value="subject" selected> 제목</option>
	<option value="content" > 내용</option>
	
	</select>
	
	</div>
	
	</div>
	

	
	
	
</body>
</html>