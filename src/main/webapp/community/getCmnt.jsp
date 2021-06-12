<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 상세페이지</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/community/getCmnt.css" rel="stylesheet" type="text/css">
</head>

<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />

	<form name="form"><input name="seq" type="hidden" value="${community.seq}" /></form>

	<div class="all_wrap">
		<h1>커뮤니티</h1>
		
		<div class="tbl_wrap">
			<table class="tbl">
				<tr>
					<th class="category">제목</th>
					<td class="content">${community.subject }</td>
				</tr>
				<tr>
					<th class="category">작성자</th>
					<td class="content">${community.writer }</td>
				</tr>
				<tr>
					<td class="wrap_padding" colspan="2">
						<ul>
							<li>
								<strong class="category">작성일</strong>
								<span class="txtNum"><fmt:formatDate value="${community.cmnt_date}" pattern="yyyy-MM-dd"/></span>
							</li>
							<li>
								<strong class="category">조회수</strong>
								<span class="txtNum">${community.readcount }</span>
							</li>
						</ul>
					</td>
				</tr>
				<tr class="content_tr">
					<td class="wrap_padding_content" colspan="2">
						<c:if test="${!empty community.cmnt_file }">
							<img src="./communityUpload/${community.cmnt_file }"><br>
							${community.content }
						</c:if>
					</td>
				</tr>
				<tr class="content_last">
					<c:if test="${!empty community.cmnt_file }">
						<th class="category">첨부파일</th>
						<td class="content">${community.cmnt_file }</td>
					</c:if>
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
						<!-- <form name="form" action="community/updateCmnt.jsp">
							<input type="submit" value="수정" class="chk_btn" /> -->
							<a href="./community/updateCmnt.jsp" class="chk_btn">수정</a>
						<!-- </form>
						<input type="button" value="삭제" class="chk_btn" onclick="deleteCheck()"/> -->
						<a href="#" class="chk_btn" onclick="deleteCheck()">삭제</a>
					</span>
				</div>
			</div>
		
	</div>
			
		</div>
		
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
function deleteCheck(){
	var url = "./deleteCmnt.co?seq="+form.seq.value;
	var answer = confirm("정말로 삭제하시겠습니까?");
	
	if(answer == true){
		alert("삭제되었습니다.");
		location.href = url;
	}
}

function getCmntList(){
	location.href = "./getCmntList.co";
}

function updateCmnt(){
	location.href = "./updateCmnt.co";
}

/* function updateReply_content(){
	location.href = "./updateReply_content.co"; 
} */
</script>

</body>
</html>