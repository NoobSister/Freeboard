<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동아리 커뮤니티 :: 자유게시판</title>
<link rel="stylesheet" href="./css/flexbox2.css?v=3">
</head>
<body>
<!-- top.jsp에 작성된 코드가 포함됩니다. 포함 후에 서블릿 변환 및 컴파일 됩니다. -->
<%@ include file="top.jsp" %>
<!-- 아래의 section 태그 내용은 웹사이트 초기화면으로 이미지, 주요 홍보영상, Quick Link, 주요 게시물
	  포함하도록 수정합니다.
 -->
<section>
<!-- 처음 요청이 들어오는 home.jsp 에서 session에 readIdx 를 저장합니다. -->
<c:if test="${sessionScope.readIdx == null}">
	<% 
		StringBuilder readIdx = new StringBuilder("/");
		session.setAttribute("readIdx", readIdx);
	%>
</c:if>
	<a href="list.do">커뮤니티 게시판</a>
	<c:if test="${sessionScope.user == null}">
		<a href="login.do">로그인</a>
		<!-- <a href="./login.do">로그인</a> -->	<!-- 현재 경로 freeboard 에서 login.do -->
		<!-- <a href="/login.do">로그인</a> -->	<!-- root context 에서 login.do -->
	</c:if>
	<c:if test="${sessionScope.user != null}">
	<!-- 로그인된 상태 -->
	<br>${user.name}(${user.email}) 님 반갑습니다. <br>
	
		<a href="logout.do">로그아웃</a>
	</c:if>
	<br><br><a href="gallery.do">갤러리</a>
</section>
<%@ include file="bottom.jsp" %>
</body>
</html>