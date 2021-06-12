<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 글 작성</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/community/insertCmnt.css" rel="stylesheet" type="text/css">
</head>

<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />

	<form action="${pageContext.request.contextPath }/insertCmnt.co" method="post" enctype="multipart/form-data" name="form">
		<input name="writer" type="hidden" value="${member.name }" />

	<div class="all_wrap">
		<h1>커뮤니티</h1>
		
		<div class="tbl_wrap">
			<table class="tbl">
				<tr>
					<th class="category">카테고리</th>
					<td class="content">
						<select name="category">
							<option value="레시피">레시피</option>
							<option value="식당 정보">식당 정보</option>
						</select>
					</td>
				</tr>
				<tr>
					<th class="category">제목</th>
					<td class="content"><input type="text" name="subject" size="35"/></td>
				</tr>
				<tr>
					<th class="category">작성자</th>
					<td class="content">${member.name }</td>
				</tr>
				<tr>
					<th class="category">내용</th>
					<td class="content"><textarea name="content" cols="70" rows="10"></textarea></td>
				</tr>
				<tr class="content_last">
					<th class="category">파일 업로드</th>
					<td class="content"><input type="file" name="file" /></td>
				</tr>
			</table>
			
			<div class="wrap_button_all">
				<div class="wrap_button_first">
					<span class="button_left">
						<!-- <input type="button" value="목록"  onclick="getCmntList()"/> -->
						<a href="#" class="chk_btn" onclick="getCmntList()">목록</a>
					</span>
				</div>
				
				<div class="wrap_button_second">
					<span class="button_right">
						<!-- <form name="form" action="community/updateCmnt.jsp"> -->
							<input type="submit" value="등록" class="chk_btn" />
							<!-- <a href="./community/updateCmnt.jsp" class="chk_btn">등록</a> -->
						<!-- </form>
						<input type="button" value="삭제" class="chk_btn" onclick="deleteCheck()"/> -->
						<a href="#" class="chk_btn" onclick="history.go(-1);">취소</a>
					</span>
				</div>
			</div>
		
		</div>
	</div>
</form>
		
		<div class="thin_line"></div>

		
		<!-- 댓글 -->
		<%-- <div id="comment">
			<table>
				<tr id="category">
					<td>댓글달기</td>
				</tr>
				<tr>
					<td>
						이름 : <input type="text" value="${member.name }" id="style">
						비밀번호 : <input type="password" value="${member.pw }" id="style">
					</td>
				</tr>
				<tr>	
					<td>
						<!-- <form action="updateReply_content.co"> -->
							<textarea rows="2" cols="130" name="reply_content"></textarea>
							<!-- <input type="submit" value="확인" id="button_comment"> -->
							<a href="updateReply_content.co?seq=${community.seq }" class="chk_btn">확인</a>
						<!-- </form> -->
					</td>
				</tr>
			</table>
		</div> --%>
		
<jsp:include page="/main/footer.jsp" />

<script type="text/javascript">
function getCmntList(){
	location.href = "./getCmntList.co";
}

/* function updateReply_content(){
	location.href = "./updateReply_content.co"; 
} */
</script>

</body>
</html>