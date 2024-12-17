/**
 *
 */
function listData(url,params) {

	$.ajax({
	    url: url,
	    type: 'post',
	    dataType: 'json',
	    contentType: 'application/json',
	    data: JSON.stringify(params),
	    success: function (result) {
	        listForm(result);
	    },
	    error: function (xhr,status,error) {
			console.error("에러 상태 코드:", xhr.status);
			console.error("에러 메시지:", xhr.responseText);
			console.error("상세 에러:", error);
			alert("목록 정보 조회 실패. 다시 시도해 주세요.");
	    }
	});
}

function listForm(result) {

	// 기존 데이터 초기화
	$("thead").empty();
	$("tbody").empty();

	// 데이터가 없을 경우
	if(!result || result.length === 0){
		$("tbody").append('<tr><td colspan="100%" class="text-center">게시글이 없습니다.</td></tr>');
		return;
	}

	// 1. 테이블 헤더 동적 생성
	const keys = Object.keys(result[0]);
	let headerRow = '<tr><th>번호</th>';
	keys.forEach(key => {
		headerRow += '<th>'+key+'</th>';
	});
	headerRow += '</tr>';
	$("thead").append(headerRow);

	// 2. 테이블 본문 동적 생성
	result.forEach((item, index) => {
		let row = '<tr><td>'+(index+1)+'</td>';
		keys.forEach(key => {
			row += '<td>'+(item[key] !== undefined ? item[key] : '')+'</td>';
		});
		row += '</tr>';
		$("tbody").append(row);
	});
}

function selectData(url,params) {
	$.ajax({
		url: url,
		type: 'post',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(params),
		success: function (result) {
			selectForm(result);
		},
		error: function () {
			alert("상세 정보 조회 실패. 다시 시도해 주세요.");
		}
	});
}

function selectForm(result) {
	for(const key in result){
		const element = $('[name='+key+']');
		if (element.is(':checkbox')) {
	        // 체크박스 처리
	        element.prop('checked', data[key]);
	    } else if (element.is('select')) {
	        // 셀렉트박스 처리
	        element.val(data[key]);
	    } else {
	        // 기본 input, textarea 처리
	        element.val(data[key]);
	    }
	}
}

function insertData(url,params) {
	$.ajax({
		url: url,
		type: 'post',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(params),
		success: function (result) {

		},
		error: function () {
			alert("정보 추가 실패. 다시 시도해 주세요.");
		}
	});
}

function updateData(url,params) {
	$.ajax({
		url: url,
		type: 'post',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(params),
		success: function (result) {

		},
		error: function () {
			alert("정보 수정 실패. 다시 시도해 주세요.");
		}
	});
}

function deleteTable(url,params) {
	$.ajax({
		url: url,
		type: 'post',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(params),
		success: function (result) {

		},
		error: function () {
			alert("정보 삭제 실패. 다시 시도해 주세요.");
		}
	});
}