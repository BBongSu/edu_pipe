<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="custom-container1 content-wrapper">
	<div class="custom-table-container1">
		<div class="button-container">
			<button onclick="location.href='/page?pageName=boardDetail'">글쓰기</button>
		</div>
		<table>
			<thead></thead>
			<tbody></tbody>
		</table>
	</div>
</div>

<script>
	$(() => {
		listData('/board/list',{});
	});
</script>