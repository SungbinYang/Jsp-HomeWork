<!DOCTYPE html>
<html>
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

button[type=submit] {
	color: white;
}

button[type=button] {
	color: white;
}

input[type=text] {
	border: 2px solid skyblue;
	border-radius: 5px;
}

textarea {
	border: 2px solid skyblue;
	border-radius: 5px;
}
</style>
<head>
<base href="${pageContext.request.contextPath }/" />
<!-- /myapp/ -->
</head>
<body>
	<h1 class="blurText">게시물 수정</h1>
	<form action="./app/board/updateBoard" method="post">
		<table border="1">
			<tr>
				<th>번호</th>
				<td><input type="text" name="seq" value="${board.seq }"
					readonly /></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="${board.title }" style="width:100%"
					required /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="20" rows="5" name="content" style="width: 100%; border: 0"
						required>${board.content }</textarea></td>
			</tr>
		</table>
		<p>
			<button type="submit" style="background-color: blue; border: 0;">저장</button>
			<button type="button" onclick="history.back()" style="background-color: gray; border: 0;">취소</button>
		</p>
	</form>
</body>
</html>