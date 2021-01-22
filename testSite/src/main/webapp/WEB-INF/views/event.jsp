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
					<a href="https://open.kakao.com/o/smjXAuSc" target="_blank"
						class="kakao_info"> 카카오톡 1:1 문의 <img class="kakao">
					</a>
				</div>
				<div class="hnm2_text">
					<h1>Bean's Story의 이벤트를 확인하세요.</h1>
				</div>
				<div class="eline"></div>



				<ul class="e_board">

 			<c:forEach var="vo" items="${list}">
				<li>

					<div class="e_img_board">
						<a href="event_page.do?id=${vo.eid}">
							<img src="${vo.esfile_t}">
						</a>
					</div>
					
					<div class="e_content_board">
						<dt>
							<a href="event_page.do?id=${vo.eid}">${vo.etitle}</a>
						</dt>
						<dd>
							<span class="brown_txt">기간 : </span>${vo.edate} ~ ${vo.edate2}
						</dd>
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
				</li>
			</c:forEach> 

<!-- 
					<li>
						<div class="e_img_board">
							<a href="event_page.do"> <img
								src="images/event_thum.png">
							</a>
						</div>
						<div class="e_content_board">
							<dt>
								<a href="event_page.do">2021년 설 선물세트</a>
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
 -->
				</ul>
				<div class="e_textline"></div>
			</div>

		</section>
	</div>
</body>
</html>