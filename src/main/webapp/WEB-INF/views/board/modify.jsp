<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>

<div id="nav">
   <%@ include file="../include/nav.jsp" %>
</div>

 수정 페이지 입니다.
 
    <form method="post">
  
  <label>제목</label>
  <input type="text" name="title" value="${view.title}" required /><br>

  <label>작성자</label>
  <input type="text" name="writer" value="${view.writer}"  required /><br>
  
  <label>내용</label>
  <textarea cols="50" rows="5" name="content" required>${view.content} </textarea><br>
  
  <button type="submit">수정</button>
  </form>
  
  
</body>
</html>