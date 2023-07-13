// 모달클래스
class Modal {
	constructor() {
		this.modal = null;
	}

	init(selector) {
		this.modal = new bootstrap.Modal(document.querySelector(selector));
	}

	open() {
		if (this.modal !== null) {
			this.modal.show();
		}
	}

	close() {
		if (this.modal !== null) {
			this.modal.hide();
		}
	}
}

const menuViewModal = new Modal();
const postViewModal = new Modal();

// 상단 메뉴버튼 눌럿을 때
function pageMove(url) {
	$.ajax({
		url,
		dataType: "text"
	}).done((text) => {
		$("div#content").html(text);
	})
}

// store페이지
// 가맹점 삭제버튼
function storeDelBtnHandler(event) {
	// 가맹점삭제하는 요청보내야함.
	alert("가맹점삭제요청");
}

// 가맹점 추가모달의 등록버튼
function storeAddBtnHandler() {
	// 가맹점 추가하는 요청보내야함
	alert("가맹점추가")
}

//sale페이지
// 검색버튼
function searchBtnHandler() {
	alert("검색요청");
}

// menu페이지
// 이미지 미리보기 위한 핸들러
function fileChangeHandler() {
	const input = document.querySelector("input#file-form");
	console.log(input.files);
	if (input.files && input.files[0]) {
		const reader = new FileReader();
		reader.onload = (e) => {
			document.querySelector("img#preview").src = e.target.result;
		};
		reader.readAsDataURL(input.files[0]);
	}
}

// 상세보기 누르면 요청을 보내고 모달을 응답받아 메뉴상세보기 모달을 채워줘야한다.
function menuViewBtnHandler(event) {
	// ajax를 통해 모달의 내용을 받아와 #modal-content에 채워준다
	menuViewModal.open();
}

// 삭제버튼을 누르면 삭제요청 보내야함
function menuDelBtnHandler(event) {
	// ajax를 통해 삭제요청을 보내고 #content를 받아와 화면 변경
	alert("삭제요청");
}

// stock페이지
function stockConfirmBtnHandler(num) {
	// num -> Stockorder테이블의 primary key jsp에서 같이 넣어주기
	// ajax를 통해 재고주문 확인 요청
	alert("확인요청 " + num);
}

// post페이지

// 문의글 상세보기
function openViewModal() {
	// ajax를 통해 모달의 내용을 응답받고 #modal-content에 내용을 변경한다.
	postViewModal.open();
}

// 탭버튼 눌렀을 때
function tabBtnClick(num) {
	// num -> post테이블에서 조회해야할 status
	// ajax를 통해 알맞은 post들만 조회하여 #content 화면 변경
	alert("탭 변경");

}
