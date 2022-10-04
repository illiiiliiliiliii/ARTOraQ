<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 부트스트랩 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">


/* * {
   box-sizing: border-box;
   padding: 0;
} */

.header {
   display: inline;
    width: 1200px;
    height: 200px;
}

.LogoContainer {
   width: 100px;
    height: 100px;
}

.Logo {
   position: absolute;
   left: 15px;
   top: 15px;
   margin-left: 30px;
   margin-top: 30px;
}

.search {
  position: relative;
  width: 300px;
  left: 616px;
  bottom: 30px;
}

input {
  width: 100%;
  border: 1px solid #bbb;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 14px;
}

.search img {
  position : absolute;
  width: 17px;
  top: 10px;
  right: 12px;
  margin: 0;
}



/* footer css */

* {
   box-sizing: border-box;
   padding: 0;
   margin: 0 auto;
}

.footer {
	display: flex;
  	flex-direction: column;
	padding: 24px 0 25px;
	text-align: center;
	color: #909090;
	border-top: 1px solid rgba(0,0,0,.05);
	width: 1200px;
	height: 200px;
}

.footer-list > a:hover {
  color : #007bff;
}

.footer-list {
	text-decoration: none;
	font-size: 11px;
	color: rgb(144, 144, 144);
	width: 50px;
	height: 20px;
	border-right: 1px solid rgba(0,0,0,.1);
	padding-right: 5px;
}

.footer personal > a {
	font-size: 12px;
	font-style: normal;
	max-width: 600px;
	margin: 20px auto 0;
	text-align: center;
	word-break: keep-all;
	-webkit-font-smoothing: antialiased;
	color: #b4b4b3;
}

.footer personal .info {
	border-right: 1px solid rgba(0,0,0,.1);
	padding-right: 7px;
}

.footer .pinfo {
	font-size: 12px;
	text-align: center;
	word-break: keep-all;
	-webkit-font-smoothing: antialiased;
	color: #b4b4b4;
}

hr {
   width : 1200px;
   height:1px;
   border:0;
   color: #909090;
}




</style>

</head>
<body>


<div class="header">
   <div class="LogoContainer">
   
   <a href="main.jsp">
      <img src="../image/Logo.png" alt="ARTORAQ" class="Logo" style="width: 100px; height: 100px;">
   </a>
   </div>
   
   
   <div class="search">
     <input type="text" placeholder="전시회 검색">
     <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
	</div>
</div>

<body>

	<!-- 상단바 -->
	<div class="header">
		<a class="Logo" href="/WEB-INF/views/image/ARTORAQ Logo.png"></a>
	</div>
	

</body>
</html>