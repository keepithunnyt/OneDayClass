<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.js"></script>
<script type="text/javascript">

function deselect() {
	  $("input:radio[name='experience']").prop('checked', false);
	  $("input:radio[name='hobby_choice']").prop('checked', false);
	  $("input:checkbox[name='non_give_up']").prop('checked', false);
	  $("input:radio[name='hobby_time']").prop('checked', false);
	  $("input:radio[name='Participants']").prop('checked', false);
	  $("input:radio[name='hobby_money']").prop('checked', false);
	  $("input:radio[name='obstacle']").prop('checked', false);
		}
		
</script>
	<!--  $('#write').on('click', function(){
			let id = $('.id').val();
			let pw = $('.pw').val();
			let name = $('.name').val();
			let tel = $('.tel').val();
			if(id != "" && pw != "" && name != "" && tel != ""){
				$('#write').attr('type', 'submit' )
			}else if(id == ""){
				alert('아이디를 입력해주세요')
			}else if(pw == ""){
				alert('비밀번호를 입력해주세요')
			}else if(name == ""){
				alert('이름을 입력해주세요')
			}else if( tel == ""){
				alert('전화번호를 입력해주세요')
			}
		});-->
<style>

div{
color: #0D3B66;
font-weight: bold;
text-align:left;
}


</style>
</head>
<body>
<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/owl.carousel.css" />
	<link rel="stylesheet" href="css/style.css" />
 
	<section class="contact-page spad pb-0">
		<div class="container" style="text-align: center;">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="section-title text-white text-left" style="text-align: center !important;" > 
							<h2>취미 성향 조사</h2>
							<h5>취미와 성향을 파악하여 최적의 원데이클래스를 추천해드립니다</h5>
						</div>
						<form action="http://211.105.165.117:9000/survey" class="contact-form" method='POST'> 
						<table>
						<tr>
							<p><h4>⊙성별</h4></p>
							<div>
							<input type="radio" value="man" name="gender" class='gender'>남자
							&emsp;
							<input type="radio" value="woman" name="gender" class='gender'>여자
							</div>
							<br>
							<br>
							<p><h4>⊙나이</h4></p>
							<div>
							<input type="radio" value="10s" name="age" >10대
							&emsp;
							<input type="radio" value="20s" name="age">20대
							&emsp;
							<input type="radio" value="30s" name="age">30대
							&emsp;
							<input type="radio" value="40s" name="age">40대
							&emsp;
							<input type="radio" value="over50s" name="age">50대 이상
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙직업</h4></p>
							<div>
							<input type="radio" value="student" name="job">학생
							&emsp;
							<input type="radio" value="seeker" name="job">취업준비생
							&emsp;
							<input type="radio" value="worker" name="job">직장인
							&emsp;
							<input type="radio" value="free_lancer" name="job">프리랜서
							&emsp;
							<input type="radio" value="none" name="job">무직
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙원데이클래스를 접해보셨나요?<br>그렇다면 몇 회 참여해보셨나요?</h4></p>
							<div>
							<input type="radio" value="1" name="experience">1회
							&emsp;
							<input type="radio" value="2" name="experience">2~3회
							&emsp;
							<input type="radio" value="4" name="experience">4~5회
							&emsp;
							<input type="radio" value="6" name="experience">6~7회
							&emsp;
							<input type="radio" value="8" name="experience">8~9회
							&emsp;
							<input type="radio" value="10" name="experience">10회 이상
							&emsp;
							<input type="radio" value="0" name="experience">없음
							<input type="button" class="site-btn3" value="선택 해제" onclick="deselect()">
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<%--<p><h4>⊙어떤 취미 활동을 원하시나요?</h4></p> --%>
							<%-- 
							<p><h4>어떤 취미 활동을 원하시나요?</h4></p>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/OneDayClass.git
							<div>
							<input type="radio" value="made" name="hobby_choice">공예/공방/목공(인테리어 소품, 도자기, 가죽, 자수, 향수, 캔들 등)
							<br>
							<input type="radio" value="sports" name="hobby_choice">스포츠(요가, 필라테스, 발레, 헬스 등)
							<br>
							<input type="radio" value="fashion" name="hobby_choice">패션/뷰티(코디, 메이크업, 헤어)
							<br>
							<input type="radio" value="picture" name="hobby_choice">사진/영상제작(촬영,편집)
							<br>
							<input type="radio" value="cooking" name="hobby_choice">요리/음료/맛집(베이킹, 와인 시음등)
							<br>
							<input type="radio" value="technology" name="hobby_choice">재테크/투자관련(주식 등)
							<br>
							<input type="radio" value="music" name="hobby_choice">음악(보컬,악기 디제잉 등)
							<br>
							<input type="radio" value="collection" name="hobby_choice">수집활동(신발,시계,장난감,골동품등)
							<br>
							<input type="radio" value="it" name="hobby_choice">IT(홈페이지,SNS,검색,1인 미디어 제작,블로그 관리,코딩*프로그래밍)
							<br>
							<input type="radio" value="study" name="hobby_choice">자격증 취득
							<br>
							<input type="button" class="site-btn3" value="선택 해제" onclick="deselect()">
							</div>
							<br>
							--%>
							<br>
							</tr>
							<tr>
							<p><h4>⊙시간에 쫓겨도 절대 포기 할 수 없는 분야는?</h4></p>
							<div>
							<input type="checkbox" value="sleep" name="non_give_up">수면
							&emsp;
							<input type="checkbox" value="company_work" name="non_give_up">회사업무의 완성도
							&emsp;
							<input type="checkbox" value="hobby" name="non_give_up">취미생활
							&emsp;
							<input type="checkbox" value="healthcare" name="non_give_up">건강관리
							<br>
							<input type="checkbox" value="entertainment" name="non_give_up">연애
							&emsp;
							<input type="checkbox" value="meeting" name="non_give_up">지인과의 만남
							&emsp;
							<input type="checkbox" value="appearance" name="non_give_up">외모관리
							&emsp;
							<input type="button" class="site-btn3" value="선택 해제" onclick="deselect()">
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙취미 활동에 얼마나 시간을 들이시나요?</h4></p>
							<div>
							<input type="radio" value="1" name="hobby_time">1시간 미만
							&emsp;
							<input type="radio" value="1.5" name="hobby_time">1시간~2시간 미만
							&emsp;
							<input type="radio" value="2" name="hobby_time">2시간~3시만 미만
							&emsp;
							<input type="radio" value="3" name="hobby_time">3시간 이상
							<br>
							<input type="button" class="site-btn3" value="선택 해제" onclick="deselect()">
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙유료로 취미생활/자기계발 분야시 선호하는 인원은?</h4></p>
							<div>
							<input type="radio" value="1" name="Participants">혼자
							&emsp;
							<input type="radio" value="2" name="Participants">2명
							&emsp;
							<input type="radio" value="3" name="Participants">3~5명
							&emsp;
							<input type="radio" value="5" name="Participants">5~9명
							&emsp;
							<input type="radio" value="10" name="Participants">10명 이상
							&emsp;
							<input type="radio" value="0" name="Participants">상관없음
							&emsp;
							<input type="button" class="site-btn3" value="선택 해제" onclick="deselect()">
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙나를 위해 취미생활에 얼마나 비용을 쓸 수 있나요?</h4></p>
							<div>
							<input type="radio" value="10" name="hobby_money">10만원 이하
							&emsp;
							<input type="radio" value="20" name="hobby_money">10~30만원 미만
							&emsp;
							<input type="radio" value="30" name="hobby_money">30~50만원 미만
							<br>
							<input type="radio" value="50" name="hobby_money">50~100만원 미만
							&emsp;
							<input type="radio" value="100" name="hobby_money">100만원 이상
							&emsp;
							<input type="button" class="site-btn3" value="선택 해제" onclick="deselect()">
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙취미 활동에 가장 걸림돌이 되는 것은 무엇인가요?</h4></p>
							<div>
							<input type="radio" value="10" name="obstacle">업무 등으로 인한 시간부족
							&emsp;
							<input type="radio" value="20" name="obstacle">경제적 부담
							&emsp;
							<input type="radio" value="100" name="obstacle">의지부족
							<br>
							<input type="radio" value="30" name="obstacle">경험이 부족하거나 할 줄 아는 것이 없어서
							&emsp;
							<input type="radio" value="50" name="obstacle">여가 정보 및 프로그램이 부족
							<br>
							<input type="radio" value="100" name="obstacle">여가를 함께 즐길 사람이 없어서
							&emsp;
							<input type="radio" value="100" name="obstacle">여가 시설이 부족해서
							&emsp;
							<input type="button" class="site-btn3" value="선택 해제" onclick="deselect()">
							</div>
							<br>
							<div>
							</div>
							</tr>
							<br>
							<p><h4>※ 아래 문항은 1~5점 척도로 선택해주세요. ※</h4>(초기값 3점)</p>
							</div>
							<tr>
							<p><h4>⊙다른사람들에게 자신을 소개하는 것을 어려워 하나요?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point1" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙대게 의욕적이고 활동적인가요?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point2" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙친분이 없는 사람과 쉽게 친해지나요?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point3" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙호기심이 많으시나요?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point4" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙대체로 상상보다는 경험에 더 의존하는 편입니까?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point5" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙책, 예술 또는 영화 등 색다르고 다양한 해석이 <br> 가능한 것에 관심이 있습니까?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point6" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙상대방이 메신저를 재빨리 회신하지 않을 경우, <br> 본인이 말실수를 했는지 걱정하나요?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point7" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙친구가 어떤 일로 슬퍼할 경우, 문제해결책을 <br> 제시하기보단 위로를 해주는 편이신가요?</h4></p>
							<div style="color: #045FB4; font-weight: bold;">
							비동의&emsp;<input type="range" name="mbti_point8" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙다른사람의 참견을 싫어하나요?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point9" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙구체적인 계획을 갖고 시간을 보내기보다는 <br> 즉흥적으로 움직이나요?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point10" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙자유를 즐기며 새로운 경험에 대해 개방적이신가요?</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point11" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							<tr>
							<p><h4>⊙일정표를 만들어 잘 지킵니다.</h4></p>
							<div>
							비동의&emsp;<input type="range" name="mbti_point12" min="1" max="5">&emsp;동의
							</div>
							<br>
							<br>
							</tr>
							</table>
								<input type="submit" class="site-btn4" id="write" value="작성 완료" align="center"> &nbsp;
								<input type="button" class="site-btn4" id="main" value="메인으로" align="center" onClick="location.href='main.jsp'">
						
						</form> 	 
					</div>
			 </div>
	</section>
	
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	//let arr = ['gender', 'age', 'job', 'experience',  'non_give_up', 'hobby_time',
	//	'Participants', 'hobby_money', 'obstacle'];
		


</script>
	
</body>
</html>