<!DOCTYPE html>
<html>
<head>
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
	width: 50%
}

td, th {
	text-align: center;
	padding: 5px;
	height: 15px;
	width: 100px;
}

th {
	background: skyblue;
}

td {
	background: lightgray;
}

input[type=button] {
	color: white;
}
</style>
<base href="${pageContext.request.contextPath }/" />
<script type="text/javascript">
	window.onload = function() { // 브라우저가 페이지 로딩을 끝냈을 때 이벤트
		document.getElementById("deleteBtn").onclick = onDelete;
	}
	function onDelete() {
		if (!confirm("삭제하시겠습니까?"))
			return false; // [Cancel] 할 경우 링크 진행 안됨
	}
</script>
</head>
<body>
	<h1 class="blurText">게시물 상세정보</h1>
	<table>
		<tr>
			<th>번호</th>
			<td>${board.seq }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${board.title }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${board.content }</td>
		</tr>
		<tr>
			<th>작성날짜</th>
			<td>${board.regdate }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${board.writer }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${board.cnt}</td>
	</table>
	<p>
		<input type="button" value="목록"
					style="background-color: blue; border: 0;"
					onclick="location.href='./app/board/boardList?pageNumber=1'">
		<input type="button" value="수정"
					style="background-color: blue; border: 0;"
					onclick="location.href='./app/board/boardEdit?seq=${board.seq }'">
	</p>
	<p id="deleteBtn">
		<input type="button" value="삭제"
					style="background-color: red; border: 0;"
					onclick="location.href='./app/board/deleteBoard?seq=${board.seq }'">
	</p>
</body>
</html>