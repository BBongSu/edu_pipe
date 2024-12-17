<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="custom-container1 form-container">
	<h1>게시글 작성</h1>
	<form id="insertForm">
		<div class="mb-3">
			<label for="title" class="form-label">제목</label>
			<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
		</div>
		<div class="mb-3">
			<label for="writer" class="form-label">작성자</label>
			<input type="text" class="form-control" id="writer" name="writer" placeholder="작성자를 입력하세요" required>
		</div>
		<div class="mb-3">
			<label for="content" class="form-label">내용</label>
			<textarea class="form-control" id="content" name="content" rows="10" placeholder="내용을 입력하세요" required></textarea>
		</div>
		<button type="submit" class="btn btn-primary btn-submit">작성하기</button>
		<button type="button" class="btn btn-secondary btn-submit mt-2" onclick="location.href='/board'">취소</button>
	</form>
</div>
