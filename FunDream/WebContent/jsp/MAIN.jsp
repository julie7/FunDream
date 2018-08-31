<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FunDream</title>
	<link rel="stylesheet" href="css/mainpage.css">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="js/mainpage.js"></script>
</head>
<body class="mainPage">
	<div class="slideshow">
		<ul class="slider">
			<li>
				<a href=""><img class="banner" src="img/애완동물.jpg" alt="1">
				<section class="caption">
					<h1>프로젝트13</h1><!-- 프로젝트 제목  -->
				</section></a>
			</li>
			<li>
				<a href=""><img class="banner" src="img/레저.jpg" alt="2">
				<section class="caption">
					<h1>프로젝트12</h1>
				</section></a>
			</li>
			<li>
				<a href=""><img class="banner" src="img/화장품.jpg" alt="3">
				<section class="caption">
					<h1>프로젝트2</h1>
				</section></a>
			</li>
			<li>
				<a href=""><img class="banner" src="img/뷰티.jpg" alt="4">
				<section class="caption">
					<h1>프로젝트11</h1>
				</section></a>
			</li>
		</ul>
		<ol class="pagination">
			
		</ol>

		<div class="left">
			<span class="fa fa-chevron-left"></span>
		</div>

		<div class="right">
			<span class="fa fa-chevron-right"></span>
		</div>
	</div>
	<!-- 여기부터 메인 flex  -->
	<div class="mcontainer">
<span class="left-subtitle">
	<h2 class="left-h2">마감 임박 프로젝트</h2>
</span>
<span class="right-allview">
	<h5 href="" class="right-h5"><a href="">전체보기</a></h5>
</span>
	<!-- 카드 하나당 게시물 한개 -->
	<div class="cards">
	<c:forEach items="${endlist }" var="list">
		<a class="card" href="#">
			<span class="card-header" style="background-image: url(${list.p_mainimg});">
			</span>
			<span class="card-summary">
				<h3>${list.p_name}</h3><!-- 게시물 제목 -->
			</span><!-- 한줄 내용 입력창 -->
			<small class="card-part">00명 참여</small><!-- 참여자 수  -->
			<!-- 프로그레스 바 -->
			<div class="candidatos color">
    			<div class="parcial">
        			<div class="info">
            			<div class="percentagem-num">${list.per}%</div><!-- 보여지는 퍼센트  -->
            			
       				</div>
        			<div class="progressBar"><!-- 100%를 넘기면 밖으로 나가버리니 넘지않게 할 것 -->
        			<c:choose>
        			<c:when test="${list.per<=100}">
            			<div class="percentagem" style="width: ${list.per}%;"></div><!-- %바꾸면 그래프 표시된 바 변경   -->
        			</c:when>
        			<c:when test="${list.per>100 }">
        			<div class="percentagem" style="width: 100%;"></div><!-- %바꾸면 그래프 표시된 바 변경   -->
        			</c:when>
        			</c:choose>
        			</div>
        			<div class="partidas">${list.p_status}</div> <!-- 모금된 후원액 -->
    			</div>
			</div>
			<!-- 프로그레스 바 -->	
		</a>
	</c:forEach>
	</div>
</div>


<div class="mcontainer">
<span class="left-subtitle">
	<h2 class="left-h2">신규 프로젝트</h2>
</span>
<span class="right-allview">
	<h5 href="" class="right-h5"><a href="">전체보기</a></h5>
</span>
	<div class="cards">
<c:forEach items="${newlist}" var="list">
		<a class="card" href="#">
			<span class="card-header" style="background-image: url(${list.p_mainimg});">
			</span>
			<span class="card-summary">
				<h3>${list.p_name}</h3>
			</span>
			<small class="card-part">00명 참여</small>
			<!-- 프로그레스 바 -->
			<div class="candidatos color">
    			<div class="parcial">
        			<div class="info">
            			<div class="percentagem-num">${list.per}%</div>
       				</div>
        			<div class="progressBar">
            			<c:choose>
        			<c:when test="${list.per<=100}">
            			<div class="percentagem" style="width: ${list.per}%;"></div><!-- %바꾸면 그래프 표시된 바 변경   -->
        			</c:when>
        			<c:when test="${list.per>100 }">
        			<div class="percentagem" style="width: 100%;"></div><!-- %바꾸면 그래프 표시된 바 변경   -->
        			</c:when>
        			</c:choose>
        			</div>
        			<div class="partidas">${list.p_status}</div>
    			</div>
			</div>
			<!-- 프로그레스 바 -->	
		</a>
</c:forEach>
	</div>
</div>



<div class="mcontainer">
<span class="left-subtitle">
	<h2 class="left-h2">목표 달성 완료 프로젝트</h2>
</span>
<span class="right-allview">
	<h5 href="" class="right-h5"><a href="">전체보기</a></h5>
</span>
	<div class="cards">
<c:forEach items="${successlist}" var="list">
		<a class="card" href="#">
			<span class="card-header" style="background-image: url(${list.p_mainimg});">
			</span>
			<span class="card-summary">
				<h3>${list.p_name}</h3>
			</span>
			<small class="card-part">00명 참여</small>
			<!-- 프로그레스 바 -->
			<div class="candidatos color">
    			<div class="parcial">
        			<div class="info">
            			<div class="percentagem-num">${list.per}%</div>
       				</div>
        			<div class="progressBar">
            			<c:choose>
        			<c:when test="${list.per<=100}">
            			<div class="percentagem" style="width: ${list.per}%;"></div><!-- %바꾸면 그래프 표시된 바 변경   -->
        			</c:when>
        			<c:when test="${list.per>100 }">
        			<div class="percentagem" style="width: 100%;"></div><!-- %바꾸면 그래프 표시된 바 변경   -->
        			</c:when>
        			</c:choose>
        			</div>
        			<div class="partidas">${list.p_status}</div>
    			</div>
			</div>
			<!-- 프로그레스 바 -->	
		</a>
</c:forEach>
	</div>
</div>
	
	
	
	<jsp:include page="Header.jsp"/>
</body>
</html>