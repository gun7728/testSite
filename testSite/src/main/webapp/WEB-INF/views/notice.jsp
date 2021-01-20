<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice</title>
<link rel="stylesheet" href="css/gj.css">
<link rel="stylesheet" href="css/notice.css">
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
			<a href="https://open.kakao.com/o/smjXAuSc" target="_blank" class="kakao_info">
				카카오톡 1:1 문의
				<img class="kakao">
			</a>
		</section>
		<section>
			<div class="notice_list">

				<div class="hnm_text">
					<h1>HOME > 공지사항</h1>
				</div>
				<div class="hnm2_text">
					<h1>Bean's Story의 공지사항을 확인하세요.</h1>
				</div>
				<div class="nline"></div>
				
				<div class="board_top">
					<div class="board_s">
						<form method="get" name="search_frm"
							action="notice.do">
							<input type="hidden" name="mode" value="search">
							<input type="hidden" name="Ctg" value>
							<select name="kefield" class="scu"> 
								<option value="subject">제목</option>
								<option value="content">내용</option>
							</select>
							<div class="search_bar">
								<input type="text" class="sch_txt" name="key" value>
								<button onclick="bbsSchSub(document.search_frm);"></button>
							</div>
						</form>
					</div>

				</div>
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
						<div class="n_img_board">
							<a href=""> <img 
							src="image/notices.png">
							</a>
						</div>
						<div class="n_content_board">
							<dt>
								<a href="">2021년 설 선물세트</a>
							</dt>
							<dd>
								<span class="nbrown_txt">기간 : </span> 2021년 01월 14 ~ 2021년 01월
								18일
							</dd>
						</div>
						<div class="n_state_board">
							<span class="nend">종료</span>
						</div>
					</li>
					
				</ul>
				
				
				
				
				
				
<!-- 			 	<div class="n_textline1">			
			 	<div class ="notice_pagelist">
				<a href = "notice_page.do">공지사항 드립니다.</a>
				</div> -->
	
				
				</div>

				<div class="n_textline"></div>

			</div>


		</section>




	</div>









</body>
</html>