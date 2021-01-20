<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/gj.css">
<link rel="stylesheet" href="css/event.css">
</head>
<body>
	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">이벤트</h1>
				<p class="sub_text">
					<span>Bean's Story의 다양한 이벤트를</span> <br>만나보세요
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do">공지사항</a></li>
					<li><a href="event.do" class="select_on">이벤트</a></li>
					<li><a href="question.do">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do">지도</a></li>
					<li><a href="youtube.do">유튜브</a></li>
				</ul>
			</div>
		</section>

		<section>
			<div class="event_content">
				<div class="hnm_text">
					<h1>HOME > 공지사항 > 이벤트</h1>
				</div>
				<div class="hnm2_text">
					<h1>Bean's Story의 이벤트를 확인하세요.</h1>
				</div>
				<div class="eline"></div>



				<ul class="n_board">

<%--
 			<c:forEach var="vo" items="${list}">
				<li>
				
					<div class="e_img_board>
						<a href="${vo.board_link}">
							<img src="${vo.board_link}">
						</a>
					</div>
					
					<div class="e_content_board">
						<dt>
							<a href="${vo.board_link}">${vo.board_title}</a>
						</dt>
						<dd>
							<span class="brown_txt">기간 : </span>${vo.board_term}
						</dd>
					</div>
					
					<div class="e_state_board">
						<span class="end">${vo.board_state}</span>
					</div>				
				</li>
			</c:forEach> 
--%>

					<li>
						<div class="e_img_board">
							<a href=""> 
							<img src="https://ediya.com/files/bbs_event/IMG_1600761487555.thumb">
							</a>
						</div>
						<div class="e_content_board">
							<dt>
								<a href="">2021년 설 선물세트</a>
							</dt>
							<dd>
								<span class="brown_txt">기간 : </span> 2021년 01월 14 ~ 2021년 01월
								18일
							</dd>
						</div>
						<div class="e_state_board">
							<span class="end">종료</span>
						</div>
					</li>
					
				</ul>
				<div class="e_textline"></div>
			</div>

		</section>
	</div>
</body>
</html>