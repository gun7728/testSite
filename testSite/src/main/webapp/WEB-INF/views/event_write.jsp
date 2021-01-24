<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_page</title>
<link rel="stylesheet" href="css/event_write.css">
<link rel="stylesheet" href="css/gj.css">
<script src="http://localhost:9000/MyCGV/js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">이벤트 페이지</h1>
				<p class="sub_text">
					<span>Bean's Story</span> <br>이벤트 작성
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do">공지사항</a></li>
					<li><a href="event.do" >이벤트</a></li>
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
				<div>
					<form name="event_write_form"  action="event_write_proc.do" method="post" 
						 class="event_write" enctype="multipart/form-data">				
						<ul>
							<li>
								<label>제목</label>
								<input type="text" name="etitle" id="etitle">
							</li>
							<li>
								<label>시작</label>
								<input type="date" name="edate" id="edate" min="0000" max="9999">
							</li>
							<li>
								<label>종료</label>
								<input type="date" name="edate2" id="edate2" min="0000" max="9999">
							</li>
							<li>
								<label>내용</label>
								<textarea name="econtent"></textarea>
							</li>
							<li>
								<label>썸네일</label>
								<input type="file" name="file1">
							</li>
							<li>
								<label>이미지</label>
								<input type="file" name="file2">
							</li>
							<li>
								<label>이벤트 설정</label>
								<input type="text" name="eend" placeholder='(0:진행 / 1:종료)'>
							</li>
							<li>
								<button type="submit" class="btn_style" id="btnEventWrite">등록</button>
								<button type="reset" class="btn_style">취소</button>							
							</li>
						</ul>
					</form>
				</div>
				
				
				
				
				
				
				
				
				<%-- <div class="event_text2">
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

				</div> --%>

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