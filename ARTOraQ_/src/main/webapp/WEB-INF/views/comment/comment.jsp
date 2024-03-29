<%@page import="dto.Review"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    List<Review> list = (List) request.getAttribute("list");
    %>    
    
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
</head>

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
   /*  display: grid;
      /* place-items: justify; */ */
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
/*     background-clip: border-box; */
    border-radius: 6px;
    -moz-box-shadow: 0px 0px 5px 0px rgba(212, 182, 212, 1);
    margin:-10px; 
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


/* .form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #ffffff;
    outline: 0;
    box-shadow: 0 0 0 1px rgb(255, 0, 0) !important;
} */

.send {
    /* color: #fff; */
   /*  background-color: #ff0000;
    border-color: #ff0000; */
    position: absolute;
    bottom: 9px;
    right: 4px;
}

/* 별점 부여 */
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

/* 부여된 별점 */
.ratin {
    position:absolute;
    display: flex;
     margin-top: -7px;
     flex-direction: row-reverse;
     margin-left: 5px;
     float: left;
     top: 50px;
}

.ratin>input {
    display: none
}


.ratin>label {
    position: relative;
    width: 19px;
    font-size: 25px;
    color: #ffe87c;
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
    bottom: 9px;
    right: 52px;
}
.btn-sm{
   /* background-color: grey;  */
   border: none; !important;
   padding: 1px 9px;
   margin: 10px;
}

.customerId{
    position: absolute;
    bottom: 27px;
    left: 21px;
   font-size: 10px;

}
</style>


<%if( list != null){ %>
<% for(int i=0; i<list.size();i++) { %>
<div class="container">
<div class="card">

              <div class="row">
                  <div class="col-2">
                  </div>
                  <div class="col-10">
                      <div class="comment-box ml-2">
                          
                          <div class="ratin"> 
                      <% int l = list.get(i).getRating();%>
                      <% if( l == 5) { %>
                              <input type="radio" disabled="disabled" checked name="reviewRatin" value="5" id="5"><label for="5">★</label>
                              <input type="radio" disabled="disabled" name="reviewRatin" value="4" id="4"><label for="4">★</label> 
                             <input type="radio" disabled="disabled" name="reviewRatin" value="3" id="3"><label for="3">★</label>
                            <input type="radio" disabled="disabled" name="reviewRatin" value="2" id="2"><label for="2">★</label>
                              <input type="radio" disabled="disabled" name="reviewRatin" value="1" id="1"><label for="1">★</label>
                                                
                      <%   } else if( l == 4) {   %>
                              <input type="radio" name="reviewRatin" value="5" id="5"><label for="5">☆</label>
                              <input type="radio" checked name="reviewRatin" value="4" id="4"><label for="4">★</label> 
                             <input type="radio" name="reviewRatin" value="3" id="3"><label for="3">★</label>
                            <input type="radio" name="reviewRatin" value="2" id="2"><label for="2">★</label>
                              <input type="radio" name="reviewRatin" value="1" id="1"><label for="1">★</label>
                         
                      <%   } else if( l == 3) {   %>
                              <input type="radio" name="reviewRatin" value="5" id="5"><label for="5">☆</label>
                              <input type="radio" name="reviewRatin" value="4" id="4"><label for="4">☆</label> 
                             <input type="radio" checked name="reviewRatin" value="3" id="3"><label for="3">★</label>
                            <input type="radio" name="reviewRatin" value="2" id="2"><label for="2">★</label>
                              <input type="radio" name="reviewRatin" value="1" id="1"><label for="1">★</label>
                                                     
                      <%   } else if( l == 2) {   %>
                              <input type="radio" name="reviewRatin" value="5" id="5"><label for="5">☆</label>
                              <input type="radio" name="reviewRatin" value="4" id="4"><label for="4">☆</label> 
                             <input type="radio" name="reviewRatin" value="3" id="3"><label for="3">☆</label>
                            <input type="radio" checked name="reviewRatin" value="2" id="2"><label for="2">★</label>
                              <input type="radio" name="reviewRatin" value="1" id="1" readonly><label for="1">★</label>

                      <%   } else if( l == 1) {   %>
                              <input type="radio" name="reviewRatin" value="5" id="5" readonly><label for="5">☆</label>
                              <input type="radio" name="reviewRatin" value="4" id="4" readonly><label for="4">☆</label> 
                             <input type="radio" name="reviewRatin" value="3" id="3" readonly><label for="3">☆</label>
                            <input type="radio" name="reviewRatin" value="2" id="2" readonly><label for="2">☆</label>
                              <input type="radio" checked name="reviewRatin" value="1" id="1" readonly ><label for="1">★</label>
                              
                             <% } %>        
                                 
                          </div>
                          <div class="comment-area">
                              <textarea class="form-control" style="background-color: white; cursor:text; ;" readonly placeholder="you review??" rows="4" name="cmContents"><%=list.get(i).getRecontent() %></textarea>
                          </div>
                          <div class="comment-btns mt-2">
                              <div class="row">
                               <div class="col-6">
                                      <div class="pull-left">
                                      <button class="btn-dark cancel btn-sm" type="button" id="good" onclick="good(<%=list.get(i).getReid() %>)" value="<%=list.get(i).getReid() %>"><i class="bi bi-hand-thumbs-up"><%=list.get(i).getGood() %></i></button>    <!-- 좋아요  -->  
                                      </div>
                                  </div>
                                   <% if(session.getAttribute("memid").equals( list.get(i).getMemid() )) { %>
                                  <div class="col-6">
                                      <div class="pull-right">
                                      <button class="btn-dark send btn-sm"  onclick="del(<%=list.get(i).getReid() %>)"  id="reid" value="<%=list.get(i).getReid() %>" >삭제 </button>      
                                      </div>
                                  </div>
                                  <%} %>
                                  <div class="col-6">
                                      <div class="pull-right">
                                      <div class="btn-dark send customerId"> 작성자 : <%=list.get(i).getMemid() %>  </div>      
                                      </div>
                                  </div>
                                  
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
   </div>
<% } %>
<%} %>


<script type="text/javascript">
 $(".text").focus();
 $("input[name='reviewRatin']").attr('disabled',true); 
 
      
   

 
 
</script>

</body>
</html>