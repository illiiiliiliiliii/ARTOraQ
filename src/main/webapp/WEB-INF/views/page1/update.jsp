<%@page import="dto.UploadFile"%>
<%@page import="dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%	Board updateBoard = (Board) request.getAttribute("updateBoard"); %>
<%	UploadFile uploadFile = (UploadFile) request.getAttribute("uploadFile"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../css/board/write.css"> 
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 스마트 에디터2 설치-->
<script type="text/javascript" src="/resources/se2/js/service/HuskyEZCreator.js"></script>


<script type="text/javascript">
   $(document).ready(function() {
      
      //작성버튼
      $("#btnUpdate").click(function() {
       	
         //작성된 내용을 <textarea>에 적용하기
         updateContents()
   
         $("form").submit();
      })
      
      // 취소 버튼
      $("#btnCancel").click(function() {
         history.go(-1)
      })
      
 
         //파일이 없을 경우
	if(<%= uploadFile != null %>) {
		$("#beforeFile").show();
		$("#afterFile").hide();
	}
    
    //파일이 있을 경우
  	if(<%=uploadFile == null %>) {
  		$("#beforeFile").hide();
  		$("#afterFile").show();
  	}
  	
  	//파일 삭제 버튼(X) 처리
  	$("#delFile").click(function() {
  		$("#beforeFile").toggle();
  		$("#afterFile").toggle();
  	})
   
 function updateContents() {
      
      //스마트 에디터에 작성된 내용을 #content에 반영한다
      oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", [])
      
   }

</script> 

   

</head>

<%@ include file="../layout/header.jsp" %>

<body>



<div class="bodybox">


        
<div class="container">
	
	<br><br><br>
   <h4><i class="fa fa-pencil-square-o" aria-hidden="true">게시글 수정</i></h4>
   <br><br>
   
 
   <form action="/write" method="post" enctype="multipart/form-data">
   
   <div>
   <table class="table table-bordered board" >
      <tr><td class="active _text-align">글 번호</td><td><%=session.getAttribute("boardno") %></td></tr>
      <tr><td class="active _text-align"> 전시 제목 </td><td><input type="text" name="title" style="width:100%;"></td></tr>
      <tr><td class="active _text-align"> 장소 </td><td><input type="text" name="period" style="width:100%;"></td></tr>
      <tr><td class="active _text-align"> 전시 기간 </td><td><input type="text" name="location" style="width:100%;"></td></tr>
      <tr><td class="active _text-align"> 가격 </td><td><input type="text" name="price" style="width:100%;"></td></tr>
	   <tr><td class="active _text-align" colspan="2">본문</td></tr>
   		<tr><td colspan="2"><textarea id="content" name="content" style="width: 100%; height: 100%;"></textarea></td></tr>
   </table>
   </div>

첨부파일<input type="file" name="file" style="border: none;">
   </form>
   
   <br>
   
   <div class="text-center">
      <button id="btnWrite" class="btn btn-dark  pull-right" type="button" >등록</button>
      <button id="btnCancel" class="btn btn-dark pull-right" type="button" >취소</button>
      <button id="btnList" class="btn btn-dark pull-right" type="button" >목록</button>
   </div>
   <br>
   

</div><!-- container 끝 -->

</div> <!-- bodybox 끝 -->


  
 

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
   oAppRef: oEditors,
   elPlaceHolder: "content", //에디터가 적용될 <textarea>의 id 적기
   sSkinURI: "/resources/se2/SmartEditor2Skin.html",
   fCreator: "createSEditor2"
})
</script>


<footer>
<%@ include file="../layout/footer.jsp" %>
</footer>

</body>
</html>