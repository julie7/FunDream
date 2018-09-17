<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FunDream</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/calculatepage.css">
</head>
<body class="calbody">
	<div class="cal-container">
		<div class="cal-title-center">
			<h1>${project.p_name} 정산</h1><br><br>
			<div class="cal-imgbox">
				<img src="img/bg.jpg" class="cal-img">
			</div><br>
		</div>
		<div class="cal-textbox">
			<div class="cal-textbox-1">
				<div class="cal-textbox-left">목표금액</div>
				<div class="cal-textbox-right"><fmt:formatNumber pattern="###,###" value="${project.p_target}" /> 만원</div>
			</div>
		</div>
		<div class="cal-textbox">
			<div class="cal-textbox-1">
				<div class="cal-textbox-left">후원받은금액</div>
				<div class="cal-textbox-right"><fmt:formatNumber pattern="###,###" value="${project.p_status}" /> 만원</div>
			</div>
		</div>
		<div class="cal-textbox">
			<div class="cal-textbox-1">
				<div class="cal-textbox-left">달성률</div>
				<div class="cal-textbox-right">
					<div class="cal-progress">
						<div class="cal-bar" style="width:30%">
							<p class="cal-percent">${project.p_status / project.p_target * 100} %</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="cal-textbox">
			<div class="cal-textbox-1">
				<div class="cal-textbox-left">정산받을금액</div>
				<div class="cal-textbox-right"><fmt:formatNumber pattern="###,###" value="${project.p_status * 10000 * 0.93}" /> 원 
				 	<a href="#" data-tooltip data-tooltip-label="정산비용" data-tooltip-message="수수료 7%(VAT별도)를 제외한 금액으로 정산됩니다.">
					 	<i class="fa fa-question-circle"></i>
				 	</a>
				 </div>
			</div>
		</div><br><br>
		<div class="cal-accountbox">
			<h2>계좌정보</h2><br>
			<div class="cal-accountbox-1">
				<div class="cal-accountbox-left">은행명</div>
				<div class="cal-accountbox-right">
					<select class="cal-bankname" name="bankname" id="bankname">
						<option value="1">신한은행</option>
						<option value="2">국민은행</option>
						<option value="3">우리은행</option>
					</select>
				</div>
			</div>
			<div class="cal-accountbox-1">
				<div class="cal-accountbox-left">계좌번호</div>
				<div class="cal-accountbox-right"><input type="text" placeholder="ex) 000-000-000000" class="cal-accountnumber" id="bankaccount" name="bankaccount"></div>
			</div>
			<div class="cal-accountbox-1">
				<div class="cal-accountbox-left">예금주명</div>
				<div class="cal-accountbox-right"><input type="text" placeholder="ex) 홍길동" class="cal-accountname" id="bankowner" name="bankowner"></div>
			</div>
			<div class="cal-btn-center">
				<input type="button" value="신청" class="cal-applybtn">
				<input type="button" value="취소" class="cal-cancelbtn">
			</div>
		</div>
	</div>
	<jsp:include page="Header.jsp" />
</body>
</html>