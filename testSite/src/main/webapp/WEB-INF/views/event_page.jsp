<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_page</title>
<link rel="stylesheet" href="css/event_page.css">
<link rel="stylesheet" href="css/gj.css">
</head>
<body>
	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">이벤트 페이지</h1>
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
			<div class="event_page">

				<div class="event_text">
					<h1>HOME > 공지사항 > 이벤트</h1>
					<a href="https://open.kakao.com/o/smjXAuSc" target="_blank"
						class="kakao_info"> 카카오톡 1:1 문의 <img class="kakao">
					</a>
				</div>


				<div class="eline"></div>
				<div class="event_text2">
					<h1 class="event_title">${vo.etitle}</h1>
					<h1 class="event_date">기간 : ${vo.edate } ~ ${vo.edate2 }</h1>
				</div>
				
				<div class="e_state_board">
							<span class="end${vo.eend}">
								<c:choose>
								<c:when test="${vo.eend eq 0}">
								    진행
								</c:when>
								<c:when test="${vo.eend eq 1}">
								    종료
								</c:when>
							</c:choose>
							</span>
				</div>

				<div class="e2line"></div>
					
				<div class="event_page_text">
					<h1>
					${vo.econtent }
					</h1>
					<div class="event_page_img">
						<img src="images/${vo.esfile}">
					</div>

				</div>

				<div class="e_textline">
					<div class="ep_list">
						<a href="http://localhost:9000/test/event.do">목록보기</a>
					</div>
				</div>



				<div class="e_textline2"></div>

				<div class="event_pagelist">
					<h1 class="epagelist">이전글 |</h1>
					<a href="http://localhost:9000/test/notice.do">2020 Bean's
						Story 가을 행사 </a>
					<h1 class="epagedate">2020-10-04</h1>
				</div>

				<div class="e_textline3"></div>

				<div class="event_pagelist2">
					<h1 class="epagelist2">다음글 |</h1>
					<a href="http://localhost:9000/test/notice.do">2020 Bean's
						Story 봄 행사 </a>
					<h1 class="epagedate2">2020-03-02</h1>
				</div>

				<div class="e_textline4"></div>

			</div>

		</section>
	</div>


</body>
</html>