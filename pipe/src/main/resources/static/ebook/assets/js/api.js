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
			alert("목록 정보 조회 실패. 다시 시도해 주세요.");
	    }
	});
}

function listForm(result) {

	// 기존 데이터 초기화
	$("tbody").empty();

	// 데이터가 없을 경우
	if(!result || result.length === 0){
		$("tbody").append('<tr><td colspan="100%" class="text-center">게시글이 없습니다.</td></tr>');
		return;
	}
	// 목록 데이터
	const keys = Object.keys(result[0]);
	// 제외할 키 목록
	const excludeKeys = ['id']; // 여기에 제외할 키를 추가

	// 1. 테이블 본문 동적 생성
	result.forEach((item, index) => {

	    // keys 배열에서 제외할 키들을 필터링
	    const filteredKeys = keys.filter(key => !excludeKeys.includes(key));
	    let row = '<tr class="clickable-row" data-id="'+(item.id ? item.id : '')+'"><td>'+(index+1)+'</td>';

	    // 제외된 키를 제외하고 출력
	    filteredKeys.forEach(key => {
	        row += '<td>'+(item[key] !== undefined ? item[key] : '')+'</td>';
	    });

	    row += '</tr>';
	    $("tbody").append(row);
	});

	// 2. 클릭 이벤트 추가
	$("tbody").on("click", ".clickable-row", function () {
		const id = $(this).data("id");
		if (id) {
			$("#detailId").val(id);
			$("#detailForm").submit();
		} else {
			alert("잘못된 데이터입니다.");
		}
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
	        element.val(result[key]);
	    } else {
	        // 기본 input, textarea 처리
	        element.val(result[key]);
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
			alert("정보 추가 성공. 목록으로 이동합니다.");
			location.href="/page?pageName="+params.pageName;
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
			if(result != -1){
				alert("정보 수정 성공. 목록으로 이동합니다.");
				location.href="/page?pageName="+params.pageName;
			}
		},
		error: function () {
			alert("정보 수정 실패. 다시 시도해 주세요.");
		}
	});
}

function deleteData(url,params) {
	$.ajax({
		url: url,
		type: 'post',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(params),
		success: function (result) {
			if(result != -1){
				alert("정보 삭제 성공. 목록으로 이동합니다.");
				location.href="/page?pageName="+params.pageName;
			}
		},
		error: function () {
			alert("정보 삭제 실패. 다시 시도해 주세요.");
		}
	});
}