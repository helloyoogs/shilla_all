<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록</title>
</head>
<body>
	<h1>책 목록</h1>
	
	<p>
	<form> <!-- 아무것도 안 넣음. 어차피 자기 자신으로 그대로 올거니까. -->
	<!-- placeholder input태그에 기본으로 연하게 적힌 값 -->
		<input type="text" placeholder="검색" name="keyword" value="${keyword}"/>
		<input type="submit" value="검색"/>
	</form>
	</p>
	
	
	<table>
		<thead>
			<tr>
				<td>아이디</td>
				<td>비밀번호</td>
				<td>이름</td>
				<td>나이</td>
				<td>이메일</td>
				<td>휴대폰번호</td>
				<td>주소</td>
			</tr>
		</thead>
		<tbody> <!-- data라는 키는 list를 가지고 있고, row는 이 리스트 안에 있는 값들 하나 하나 이다. -->
			<c:forEach var="row" items="${data}">
				<tr>
					<td>${row.id}</td>
					<td>${row.pw}</td>
					<td>${row.name}</td>
					<td>${row.age}</td>
					<td>${row.email}</td>
					<td>${row.phone}</td>
					<td>${row.address}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p><a href="/member/join">생성</a></p>
	<p><a href="/member/logout">로그아웃</a></p>
</body>
</html>



