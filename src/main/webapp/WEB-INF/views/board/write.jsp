<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성 페이지</title>
</head>
<body>
<div id="nav">
   <%@ include file="../include/nav.jsp" %>
</div>

  게시글 작성 페이지입니다.
  
  <form method="post">
  
  <label>제목</label>
  <input type="text" name="title" required /><br>

  <label>작성자</label>
  <input type="text" name="writer" required /><br>
  
  <label>내용</label>
  <textarea cols="50" rows="5" name="content" required></textarea><br>
  
  <button type="submit">작성</button>
  <button type="button" onclick="location.href='/board/listPage?num=1' ">목록으로</button>
  </form>
  
</body>
</html>