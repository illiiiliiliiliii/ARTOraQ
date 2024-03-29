<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ARTORAQ</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   <link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">

<script type="text/javascript">
document.cookie = "safeCookie1=foo; SameSite=Lax"; 
document.cookie = "safeCookie2=foo"; 
document.cookie = "crossCookie=bar; SameSite=None; Secure";
</script>

<style type="text/css">
html,
body {
    height: 100%
}

body {
    font-family: 'Manrope', sans-serif;
   
   
    
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    padding: 20px;
    width: 500px;
    height:220px;
    word-wrap: break-word;
    background-color: 000000;
    border-radius: 6px;
    -moz-box-shadow: 0px 0px 5px 0px rgba(212, 182, 212, 1);
    margin:-10px; 
   margin-top: 50px;
}
.comment-box{
    
    padding:5px;
}
.comment-area textarea{
   resize: none;
   width:476px;
   height : 90px;
   position:absolute;
   top:86px;
   left:12px;  
   border: 1px solid #ad9f9f;
}

.send {

    position: absolute;
    bottom: 5px;
    right: 15px;
}
.rating {
    position:absolute;
    display: flex;
     margin-top: -7px;
     flex-direction: row-reverse;
     margin-left: 5px;
     float: left;
     top: 50px;
}
.rating>input {
    display: none
}
.rating>label {
    position: relative;
    width: 19px;
    font-size: 25px;
    color: #ffe87c;
    cursor: pointer;
}
.rating>label::before {
    content: "\2605";
    position: absolute;
    opacity: 0
}
.rating>label:hover:before,
.rating>label:hover~label:before {
    opacity: 1 !important
}
.rating>input:checked~label:before {
    opacity: 1
}
.rating:hover>input:checked~label:before {
    opacity: 0.4
}
.guide{
   position: absolute;
   top: 10px;
   left: 16px;
   font-size: 20px; 
}
.rounded-circle{
   position: absolute;
   top: 12px;
   left: 13px; 
   border-radius: 22px;
}
.cancel{
    position: absolute;
    bottom: 5px;
    right: 66px;
}
.btn-sm{

   border: none; !important
   
}
</style>

</head>


<body>


<div class="tab-content">
<div class="container">
<div class="card">
              <div class="row">
                  <div class="col-2">
                  </div>
                  <div class="col-10">
                      <div class="comment-box ml-2">
                          <h5 class="guide">후기를 작성해주세요</h5>
                          <div class="rating"  id="rating"> 
                              <input type="radio" name="reviewRating" value="5" id="5"><label for="5">☆</label>
                              <input type="radio" name="reviewRating" value="4" id="4"><label for="4">☆</label> 
                              <input type="radio" name="reviewRating" value="3" id="3"><label for="3">☆</label>
                              <input type="radio" name="reviewRating" value="2" id="2"><label for="2">☆</label>
                              <input type="radio" name="reviewRating" value="1" id="1" checked><label for="1">☆</label>
                          </div>
                          <div class="comment-area">
                              <textarea class="form-control text" placeholder="you review??" rows="4" name="cmContents" id="cmContents"></textarea>
                          </div>
                          <div class="comment-btns mt-2">
                              <div class="row">
                                  <div class="col-6">
                                      <div class="pull-left">
                                      <button class="btn-dark cancel btn-sm" type="reset" onclick="commentclear();">취소</button>      
                                      </div>
                                  </div>
                                  <div class="col-6">
                                      <div class="pull-right">
                                      <button type="button" onclick="commentSave();" class="btn-dark send btn-sm">등록</button>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          
                <div style="margin-left: -23px;" id="result" class="media" >
          
          
          </div>
          </div>
</div>




</body>
</html>