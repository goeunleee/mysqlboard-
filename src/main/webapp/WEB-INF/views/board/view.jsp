<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 페이지</title>
</head>
<body>

<div id="nav">
   <%@ include file="../include/nav.jsp" %>
</div>

상세 페이지 입니다. 

 <form method="post">
  
  <label>제목</label>
   ${view.title}<br />

 <label>작성자</label>
   ${view.writer}<br />

 <label>내용</label><br />
   ${view.content}<br />
  
  </form>
  <div>
   <button type="button" onclick="location.href='/board/modify?bno=${view.bno}' ">수정하기</button>
   <button type="button" onclick="location.href='/board/listPage?num=1' ">목록으로</button>
   <button type="button" onclick="location.href='/board/delete?bno=${view.bno}' ">삭제</button>
  </div>
  
</body>
</html>