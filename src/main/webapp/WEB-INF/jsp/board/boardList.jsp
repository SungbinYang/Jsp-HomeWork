<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
</head>
<style>
h1 {
	color: yellow;
}

.blurText {
	text-shadow: 3px 3px 5px blue;
}

hr {
	border: 5px solid gray;
}

table {
	border-collapse: collapse;
	width: 100%
}

td, th {
	text-align: center;
	padding: 5px;
	height: 15px;
	width: 100px;
}

thead {
	background: skyblue;
}

tbody {
	background: lightgray;
}

tbody tr:hover {
	background: yellow;
}

input[type=button] {
	color: white;
}
</style>
<body>
	<h1 class="blurText">게시글 목록</h1>
	<hr>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
			</tr>
		</thead>
		<c:forEach var="board" items="${boardList }">
			<tbody>
				<tr>
					<td><a href="./app/board/boardInfo?seq=${board.seq }">${board.seq }</a></td>
					<td>${board.title }</td>
					<td>${board.writer }</td>
				</tr>
			</tbody>

		</c:forEach>
	</table>


	<p>
		<!-- 링크로 만들 때 -->
		<!-- <a href="./app/board/boardForm">등록</a> -->
		<!-- 버튼으로 만들 때 -->
		<input type="button" value="등록"
			style="background-color: blue; border: 0;"
			onclick="location.href='./app/board/boardForm'">

		<c:choose> <!-- jstl에서는 if~else태그가 별도로 없어서 choose ~ when문으로 사용한다.(switch) -->
			<c:when test="${param.pageNumber eq '1' }"> <!-- 불러온 파라미터값이 1이면 -->
				<input type="button" value="다음"
					style="background-color: green; border: 0;"
					onclick="location.href='./app/board/boardList?pageNumber=${param.pageNumber + 1 }'">
			</c:when>
			<c:otherwise>
				<input type="button" value="이전"
					style="background-color: green; border: 0;"
					onclick="location.href='./app/board/boardList?pageNumber=${param.pageNumber - 1 }'">
				<input type="button" value="다음"
					style="background-color: green; border: 0;"
					onclick="location.href='./app/board/boardList?pageNumber=${param.pageNumber + 1 }'">
			</c:otherwise>
		</c:choose>
	</p>
</body>
</html>