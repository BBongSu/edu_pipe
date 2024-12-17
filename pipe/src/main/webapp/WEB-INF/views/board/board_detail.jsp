<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="custom-container1">
	<div class="custom-table-container1">
		<form method="post">
			<input type="hidden" name="id" />
			<input type="hidden" name="pageName" value="board_list" />
			<!-- 제목 입력 -->
			<div class="mb-3">
				<label for="title" class="form-label fw-bold">제목</label>
				<input type="text" class="form-control" name="title">
			</div>
			<!-- 작성자 입력 -->
			<div class="mb-3">
				<label for="writer" class="form-label fw-bold">작성자</label>
				<input type="text" class="form-control" name="writer">
			</div>
			<!-- 내용 입력 -->
			<div class="mb-3">
				<label for="content" class="form-label fw-bold">내용</label>
				<textarea class="form-control" name="content" rows="6"></textarea>
			</div>
			<!-- 버튼 영역 -->
			<div class="d-flex justify-content-end gap-2">
				<button type="submit" class="btn btn-primary">등록</button>
				<!-- 삭제 버튼 -->
				<button type="button" id="deleteBtn" class="btn btn-danger d-none">삭제</button>
				<button type="button" class="btn btn-secondary" onclick="location.href='/page?pageName=board_list'">취소</button>
			</div>
		</form>
	</div>
</div>

<script>
	$(() => {
		// URL에서 'id' 파라미터 가져오기
		const urlParams = new URLSearchParams(window.location.search);
		const id = urlParams.get('id');

		// 'id' 존재하면 상세 API 호출
		if(id){
			selectData('/board/select',{id:id});
			$("#deleteBtn").removeClass("d-none");
		}

		$("form").on("submit", function (e) {
			// 기본 제출 방지
			e.preventDefault();

			// form.serializeArray()로 데이터 추출 후 JSON으로 변환
	        const formDataArray = $(this).serializeArray();
	        const params = {};

	        // JSON 변환
	        formDataArray.forEach((field) => {
	            params[field.name] = field.value;
	        });

	     	// 'id' 존재에 따라 추가/수정 API 호출
	        if(params.id){
				if(confirm("수정하시겠습니까?")){
					updateData('/board/update',params);
				}
	        }else{
	        	if(confirm("저장하시겠습니까?")){
					insertData('/board/insert',params);
	        	}
	        }
		});

		// 삭제 API 호출
		$("#deleteBtn").on("click", function () {
			if (confirm("정말 삭제하시겠습니까?")) {
				const params = {
					id : $("input[name='id']").val(),
					pageName : $("input[name='pageName']").val()
				}
				deleteData('/board/delete', params);
			}
		});
	});
</script>
