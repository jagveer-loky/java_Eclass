<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

#container {
	width: 300px;
	height: 200px;
	margin: auto;
}

.header {
	text-align: center;
	font-size: 18px;
}

.idtag {
	float: left;
	width: 30%;
}

.pwtag {
	float: left;
	width: 30%;
}

input[type="text"] {
	width: 70%;
	height: 100%;
}

.btns {
	text-align: center;
}
.btns>*{
  margin:1px;
  margin-top: 5px;
}
</style>
</head>
<body>
<body>
	<div id="container">
    <div class="header">
      회원 로그인
    </div>
    <form action="?" method="get">
      <div class="inputBoxs">
        <div class="idtag">아이디</div>
        <div class="idinput"><input type="text" name="id"></div>
        <div class="pwtag">비밀번호</div>
        <div class="pwinput"><input type="text" name="pw"></div>
      </div>
      <div class="btns">
        <input type="submit" value="로그인"><a href="signup.mem"><button type="button">회원가입</button></a>
      </div>
    </form>
  </div>
</body>


</html>