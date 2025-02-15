<%@page import="DTO.USERSDTO"%>
<%@page import="DTO.REVIEWDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.REVIEWDAO"%>
<%@page import="DTO.TEACHERSDTO"%>
<%@page import="DAO.TEACHERSDAO"%>
<%@page import="DTO.CLASSDTO"%>
<%@page import="DAO.CLASSDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
   <link rel="stylesheet" href="css/bootstrap.min.css"/>
   <link rel="stylesheet" href="css/font.css"/>
   <link rel="stylesheet" href="css/owl.carousel.css"/>
   <link rel="stylesheet" href="css/style.css"/>
   <link rel="stylesheet" href="css/style2.css" />
   <link rel="stylesheet" href="css/style3.css"/>
   <link rel="stylesheet" href="css/bootstrap.min.css" />
   <link rel="stylesheet" href="css/font-awesome.min.css" />
   
<title>Insert title here</title>
<style>
      .tabletwo > table tr{
         height: 30px;
      } 

      .table_content{
         border: 3px solid #FEA698;
         border-collapse: separate;
         border-radius: 12px;
         padding:10px;
         max-width : 40%;
         margin: auto;
        
      
      }
      th {
        color : #323232;
        font-size : 20px;
        font-family:'NanumSquareRound'
        
      }
      td.teacher {
        color : #323232;
        font-size : 18px;
        font-family:'NanumSquareRound'
      }
      td {
        color : black;
        font-size : 18px;
        font-family:'NanumSquareRound'
        
      }
      th.title{
         font-size : 30px;
         color: black;
         font-family:'NanumSquareRound'

         height:30px;
      }
      
   
.starR{
  background: url('img/star_image.png') no-repeat right 0;
  background-size: auto 100%;
  width: 30px;
  height: 30px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
}
.starR.on{background-position:0 0;}    
      
      
      
      
</style>
</head>
<body>
<% 
   CLASSDAO c_dao =  new CLASSDAO();
   int class_id = Integer.parseInt(request.getParameter("class_id"));
   TEACHERSDAO t_dao = new TEACHERSDAO();
   CLASSDTO c_dto = c_dao.allselect(class_id);
   REVIEWDAO r_dao = new REVIEWDAO();
   ArrayList<REVIEWDTO> review = null;
   review = r_dao.review_select(class_id);
   String stars = null;
  // request.setAttribute("class_id", c_dto.getId());
   String content = c_dto.getContent();
   content = content.replaceAll("\n", "<br>");
   USERSDTO user = null;
   try{
   	user = (USERSDTO)session.getAttribute("login");
   }catch(Exception e){
	   TEACHERSDTO teachers = (TEACHERSDTO)session.getAttribute("login");
   }


%>

<form action="main.jsp" method="post">
<br>
<div class="home">
<a href="main.jsp"><img style="width:60px; height:60px;" class = "home-logo" src="img/home_btn.png"></a>
</div>
<br>
<div class = "tabletwo">
<table class = 'table_content'>
<colgroup>
<col style="width:30%;">
<col style="width:70%;">
</colgroup>
   <tr>
   <td colspan = '2'>
   <img alt="뭔가 안됐음" style="width:100%;" src=<%=c_dto.getImage() %>></td>
   </tr>
   <tr bgcolor="white">
   <th colspan = '2'><%=c_dto.getCategory() %></th>
   </tr>
   <tr>
   <th class ='title' colspan = '2'><%=c_dto.getTitle() %></th>
   </tr>
   <tr>
   <td style="width: 300px;"></td>
   <td><div align="right" class="ca-pic set-bg" data-setbg= <%=c_dto.getIcon() %> style="width: 50px;
   height: 50px;
   border-radius: 50%;
   background-image: url(<%=c_dto.getIcon() %>); display: inilne; margin-left:auto"></div></td>
   </tr>
   <tr align="right" bgcolor="white">
      <td class = 'teacher' colspan = '2' ><%=t_dao.who(c_dto.getTeacher_id()) %> 강사</td> 
   </tr>
   <tr>
   <td colspan = "2"><hr style = "border: 1px solid #FEA698;"></td>

   </tr>
   
   <tr align="center" bgcolor="white">
      <td colspan = "2" style = "font-weight: 800; ">강좌 소개</td>
   </tr>
   <tr><td colspan = "2" style="color:#323232; line-height: 1.3;"><%=content %></td></tr>
	<tr><br></tr>
   <tr align="center" bgcolor="white" style = "font-weight: 800;">
      <td >시간</td>
      <td><%=c_dto.getTime() %></td>
   </tr>

   <tr align="center" bgcolor="white" style = "font-weight: 800;">
      <td>비용</td>
      <td><%=c_dto.getPrice() %></td>
   </tr>
   <tr></tr>
   <tr><td colspan = "2" align = "center">
   <%if(user != null){ %>
   <input type="button" class="site-btn" name="apply" value="클래스 신청하기" id="btn1">
   <% } %>
   </td></tr>
 <!--  리뷰 작성 부분 -->
 <td colspan = "2"><hr style = "border: 1px solid #FEA698;"></td>
 <tr align="center" ><td colspan = "2">
<%if(user != null){ %>
<br>
<h4  style="font-family:'NanumSquareRound'; color:black; font-weight:800px;">♤리뷰를 작성해 보세요♤</h4>
<div class="starRev" name="rating" align="center">
  <span class="starR" name="star1">1</span>
  <span class="starR" name="star2">2</span>
  <span class="starR" name="star3">3</span>
  <span class="starR" name="star4">4</span>
  <span class="starR" name="star5">5</span>

</div >
<br>
<div align="center"> 
<input tpye="text" id="comm" class = "search" placeholder="리뷰할 내용을 입력하세요" style="width: 300px; height: 50px; border:3px solid #FEA698; border-radius:12px;">&nbsp; 
<input type="button" value="작성하기" id="btnjj"  class="site-btn">
</div>
<%} %>  
 </td></tr>   
  <!--  리뷰 작성 부분 -->  
 <td colspan = "2"><hr style = "border: 1px solid #FEA698;"></td>   
   
 <!-- 리뷰 디자인 -->  
   <colgroup>
<col style="width:30%;">
<col style="width:70%;">
</colgroup>
<%if(review != null){ %>
   <tr>
   <th class ='title' colspan = '3' style="font-weight:bold; text-align:center; font-size:18px;" >수강생 후기</th>
   </tr>
   <tr>
   <td colspan = '2' style="text-align: center; color:darkgray; font-size:14px; font-weight:bold;">수강생 여러분의 생생한 후기를 남겨주세요!</td>
   </tr>
<%for(int i = 0; i < review.size(); i++){ %>
   <tr>
   <td style="width: 300px;"><%=review.get(i).getId() %></td>
   <td rowspan="2" align = "center"><%=review.get(i).getComm() %> </td>
   
   <td rowspan="2" align = "center">
   <%if(user != null){ %>
   <%if(user.getId().equals(review.get(i).getId())){ %>
   		<%String data = "?class_id=" + review.get(i).getClass_id() + "&comm=" + review.get(i).getComm(); %>
		<%String url = "REVIEW_delete.jsp" + data; %>
		<a href=<%=url %>>X</a>
   <%}} %>
   </td>
   
   </tr>
   
   <tr><td style="color:#ff9b00;">
   		 <%if (review.get(i).getRating() == 1){%>
         <% stars = "★☆☆☆☆"; %>
            <%=stars %>
         <% }else if(review.get(i).getRating() == 0){%>
         <% stars = "☆☆☆☆☆"; %>
         	<%=stars %>
         <% }else if(review.get(i).getRating() == 2){%>
         <% stars = "★★☆☆☆"; %>
            <%=stars %>
         <% }else if(review.get(i).getRating() == 3){%>
         <% stars = "★★★☆☆"; %>
            <%=stars %>
         <% }else if(review.get(i).getRating() == 4){%>
         <% stars = "★★★★☆"; %>
            <%=stars %>
         <% }else if(review.get(i).getRating() == 5){%>
         <% stars = "★★★★★"; %>
            <%=stars %>
           
            <% }%></td>
            </tr> 
   <tr align="right" bgcolor="white">
      
      <td class = 'teacher' colspan = '2' > <%=review.get(i).getDates() %> </td> 
   </tr>
     <tr><td colspan = "2"><hr style = "border: 1px solid #ffeae6;"></td></tr> 
   <%} %>
<%} %>   
 <!-- 리뷰 디자인 -->   
   </table>
</div>
</form>


   <script src="js/jquery-3.6.0.js"></script>
   <script>
      <%if(user != null){%>
      $('#btn1').on('click', function(){
         
         $.ajax({
            url:"ENROL_insert",
            type : 'POST',
            data : {
               'class_id' : <%=class_id %>
            },
            success : function(){
               alert('수강신청 완료');
               window.location.href =  'main.jsp';
            }
         });
         
      });
      <%}%>
      </script>   
      <script>
      <!-- 리뷰 스크립트-->
      <%if(user != null){ %>      
      let dataset = {};
      let arr = [];
      $('.starRev span').click(function(){
           $(this).parent().children('span').removeClass('on');
           $(this).addClass('on').prevAll('span').addClass('on');
           arr = $('.on');
           
           console.log($(arr[arr.length - 1]).html());
         
      });
         
         
      $('#btnjj').on('click', function(){
         if($(arr[arr.length - 1]).html() == null){
            dataset = {
                  'comm' : $('#comm').val(),
                  'rating' : 0,
                  'id' : '<%=user.getId() %>',
                  'class_id' : <%=class_id %>
                  
            }
         }else{
            dataset = {
                  'comm' : $('#comm').val(),
                  'rating' : $(arr[arr.length - 1]).html(),
                  'id' : '<%=user.getId() %>',
                  'class_id' : <%=class_id %>
            }
         }
         $.ajax({
            url : 'REVIEW_insert',
            data : dataset,
            type : 'post',
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            success : function(){
               //여기가 페이지 이동
               window.location = "class_detail.jsp?class_id=<%=class_id%>"
               
               //이게 클레스아이디값
               
               
               
               alert('리뷰 작성완료');
               
               
               
            }
         })
      })
      
<%}%>
   </script>      
      
      
      
   
</body>
</html>