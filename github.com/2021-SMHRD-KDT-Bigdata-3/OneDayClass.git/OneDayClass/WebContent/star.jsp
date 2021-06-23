<%@page import="DTO.REVIEWDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.REVIEWDAO"%>
<%@page import="DTO.USERSDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
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

<div class="starRev" name="rating">
  <span class="starR on" name="star1">1</span>
  <span class="starR" name="star2">2</span>
  <span class="starR" name="star3">3</span>
  <span class="starR" name="star4">4</span>
  <span class="starR" name="star5">5</span>

</div>
<input tpye="text" id="comm">
<input type="button" value="작성하기">

<%REVIEWDAO r_dao = new REVIEWDAO();
int class_id = 196;
ArrayList<REVIEWDTO> review = null;
review = r_dao.review_select(class_id);
String stars = null;
%>
<table>
<%if(review != null){ %>
	<%for(int i = 0; i < review.size(); i++){ %>
	<tr> 
		<td><%=review.get(i).getId() %> </td>
		
		<td><%if (review.get(i).getRating() == 1){%>
			<% stars = "★☆☆☆☆"; %>
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
				<% }%>
			 </td>
		
		<td><%=review.get(i).getComm() %> </td>
		<td><%=review.get(i).getDates() %> </td>
	</tr>
	<%} %>
<%} %>
</table>

<script src="js/jquery-3.6.0.js"></script>
<script>
let dataset = {};
let arr = [];
$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  arr = $('.on');
	  
	  console.log($(arr[arr.length - 1]).html());
	
});
	
	
$('input:button').on('click', function(){
	if($(arr[arr.length - 1]).html() == null){
		dataset = {
				'comm' : $('#comm').val(),
				'rating' : 1,
				'id' : 'test',
				'class_id' : 196
				
		}
	}else{
		dataset = {
				'comm' : $('#comm').val(),
				'rating' : $(arr[arr.length - 1]).html(),
				'id' : 'test',
				'class_id' : 196
		}
	}
	$.ajax({
		url : 'REVIEW_insert',
		data : dataset,
		type : 'post',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(){
			alert('보냄');
			
		}
	})
})



	
</script>




</body>
</html>