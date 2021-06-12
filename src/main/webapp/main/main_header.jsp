<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

<%-- <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css"> --%>

</head>
<body>
	<header class="clear">
		<div id="logo">
			<a href="/board/main/main.jsp">
				<img src="/board/resources/image/logo.svg" alt="비긴비건로고">
			</a>
		</div>


		 <nav id="main_nav">
			 <div class="ph-dot-nav nav">
			 <!-- 로그인 된 상태 -->
			 <c:if test="${member.id !=null }">
			 	<c:if test="${member.id !='admin' }"><a href="/board/main/companyInfo.jsp">회사 소개</a></c:if>
				<c:if test="${member.id =='admin' }"><a href="/board/adminPage/adminMain.jsp">관리자 메인</a></c:if>
				<a href="/board/getGoodsList.go">상품</a>
				<a href="/board/life/lifeMain.jsp">라이프</a>
				<a href="/board/getCmntList.co?id=${member.id }" class="post-request">커뮤니티</a>
				<a href="/board/getBoardList.fu?id=${member.id }" class="post-request">고객센터</a>
				<div class="effect"></div>
			</c:if>
			<!-- 로그인 안된 상태 -->
			<c:if test="${member.id ==null }">
				<a href="/board/main/companyInfo.jsp">회사 소개</a>
				<a href="/board/getGoodsList.go">상품</a>
				<a href="/board/life/lifeMain.jsp">라이프</a>
				<a href="/board/getCmntList.co">커뮤니티</a>
				<a href="/board/getBoardList.fu">고객센터</a>
				<div class="effect"></div>
			</c:if>
			</div>
		 </nav>
		 
		<nav id="sub_nav">
			<ul>
				<li>
					<div id="search_form">
						<input type="text" id="search">
						   <button type="submit" id="search_icon" >
							<span class="text_hide">검색</span>
							<?xml version="1.0" encoding="utf-8"?>
							<svg version="1.1" id="레이어_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
								 y="0px" viewBox="0 0 24 24" style="enable-background:new 0 0 24 24;" xml:space="preserve">
							<style type="text/css">
								.st0{fill:none;}
							</style>
							<path class="st0" d="M0,0h24v24H0V0z"/>
							<path d="M15.5,14h-0.79l-0.28-0.27C15.41,12.59,16,11.11,16,9.5C16,5.91,13.09,3,9.5,3S3,5.91,3,9.5S5.91,16,9.5,16
								c1.61,0,3.09-0.59,4.23-1.57L14,14.71v0.79l5,4.99L20.49,19L15.5,14z M9.5,14C7.01,14,5,11.99,5,9.5S7.01,5,9.5,5S14,7.01,14,9.5
								S11.99,14,9.5,14z"/>
							</svg>
						</button>
					</div>
					
				</li>
				<li>
				<c:if test="${member.id !=null }">
					<a href="/board/getMyPage.me" class="post-request">
				</c:if>
				
				<c:if test="${member.id ==null }">
					<a href="/board/getMyPage.me">
				</c:if>
					
						<span class="text_hide">마이페이지</span>
						<?xml version="1.0" encoding="utf-8"?>
						<!-- Generator: Adobe Illustrator 23.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
						<svg version="1.1" id="레이어_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
							 y="0px" viewBox="0 0 24 24" style="enable-background:new 0 0 24 24;" xml:space="preserve">
						<style type="text/css">
							.st0{fill:none;}
						</style>
						<path class="st0" d="M0,0h24v24H0V0z"/>
						<path d="M10.25,13c0,0.69-0.56,1.25-1.25,1.25S7.75,13.69,7.75,13S8.31,11.75,9,11.75S10.25,12.31,10.25,13z M15,11.75
							c-0.69,0-1.25,0.56-1.25,1.25s0.56,1.25,1.25,1.25s1.25-0.56,1.25-1.25S15.69,11.75,15,11.75z M22,12c0,5.52-4.48,10-10,10
							S2,17.52,2,12S6.48,2,12,2S22,6.48,22,12z M10.66,4.12C12.06,6.44,14.6,8,17.5,8c0.46,0,0.91-0.05,1.34-0.12C17.44,5.56,14.9,4,12,4
							C11.54,4,11.09,4.05,10.66,4.12z M4.42,9.47C6.13,8.5,7.45,6.92,8.08,5.03C6.37,6,5.05,7.58,4.42,9.47z M20,12
							c0-0.78-0.12-1.53-0.33-2.24C18.97,9.91,18.25,10,17.5,10c-3.13,0-5.92-1.44-7.76-3.69C8.69,8.87,6.6,10.88,4,11.86
							C4.01,11.9,4,11.95,4,12c0,4.41,3.59,8,8,8S20,16.41,20,12z"/>
						</svg>
					</a>
				</li>
				<li>
				<c:if test="${member.id !=null }">
					<a href="/board/basketList.do" class="post-request">
				</c:if>
				
				<c:if test="${member.id ==null }">
					<a href="/board/basketList.do">
				</c:if>
					
						<span class="text_hide">장바구니</span>
						<?xml version="1.0" encoding="utf-8"?>
						<!-- Generator: Adobe Illustrator 23.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
						<svg version="1.1" id="레이어_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
							 y="0px" viewBox="0 0 24 24" style="enable-background:new 0 0 24 24;" xml:space="preserve">
						<style type="text/css">
							.st0{fill:none;}
						</style>
						<g>
							<rect class="st0" width="24" height="24"/>
							<path d="M18,6h-2c0-2.21-1.79-4-4-4S8,3.79,8,6H6C4.9,6,4,6.9,4,8v12c0,1.1,0.9,2,2,2h12c1.1,0,2-0.9,2-2V8C20,6.9,19.1,6,18,6z
								 M12,4c1.1,0,2,0.9,2,2h-4C10,4.9,10.9,4,12,4z M18,20H6V8h2v2c0,0.55,0.45,1,1,1s1-0.45,1-1V8h4v2c0,0.55,0.45,1,1,1s1-0.45,1-1V8
								h2V20z"/>
						</g>
						</svg>
					</a>
				</li>
				
				<li>
					<c:if test="${member.id !=null }">
						<a href="/board/memberLogout.me"><span class="login">로그아웃</span></a>						
					</c:if>
				
					<c:if test="${member.id ==null }">
						<a href="/board/loginPage/login.jsp"><span class="login">로그인</span></a>
					</c:if>
					
				</li>
			</ul>
		</nav>

	</header>
	
 	<%-- <script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-1.12.3.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/javaScript.js"></script> --%>
	
	<script type="text/javascript" >
	
		// GET ALL THE LINKS WE WANT TO DO A POST ON
		// jQuery EQUIVALENT WOULD BE $('.post-request').click(function(e)
		var links = document.querySelectorAll('.post-request');
		 
		// LOOP THROUGH THE FOUND LINKS AND ADD A CLICK HANDLER
		for(var l = 0; l < links.length; l++) {
		  links[l].addEventListener('click', function(e) {
		    // PREVENT DEFAULT click BEHAVIOUR
		    e.preventDefault();
		    
		    // BREAK THE URL INTO TWO action AND parameters
		    var url = this.href.split('?');
		    
		    // ONLY LOOK FOR PARAMS IF THEY WERE SPECIFIED
		    var params = (url.length > 1) ? url[1].split('&') : []
		 
		    // CREATE A FORM
		    var form = document.createElement('form');
		    
		    // MAKE IT POST TO THE URL
		    form.setAttribute('method','post');
		    form.setAttribute('action', url[0]);
		    
		    // LOOP THROUGH THE PARAMETERS AND ADD THEM AS CONTROLS TO THE FORM
		    for(var i = 0; i < params.length;i++) {
		      // CREATE THE <input> AS A text CONTROL
		      var inp = document.createElement('input');
		      inp.setAttribute('type', 'hidden');
		      // SPLIT parameter INTO key / value AND ADD TO input
		      var value = params[i].split('=');
		      inp.setAttribute('name',value[0]);
		      inp.setAttribute('value', value[1]);
		 
		      // APPEND TO <form>
		      form.appendChild(inp);
		    }
		    // APPEND <form> TO BODY AND SUBMIT
		    document.getElementsByTagName('body')[0].appendChild(form);
		    form.submit();
		  });
		}
	</script>
</body>
</html>