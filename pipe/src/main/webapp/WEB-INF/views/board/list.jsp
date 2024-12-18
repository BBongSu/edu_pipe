<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="custom-container1">
	<div class="custom-table-container1">
		<div class="button-container">
			<button onclick="location.href='/page?pageName=board_detail'">글쓰기</button>
		</div>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
	</div>
</div>

<form id="detailForm" action="/page" method="get" style="display:none;">
    <input type="hidden" name="pageName" value="board_detail">
    <input type="hidden" name="id" id="detailId">
</form>

<script>
	$(() => {
		listData('/board/list',{});
	});
</script>