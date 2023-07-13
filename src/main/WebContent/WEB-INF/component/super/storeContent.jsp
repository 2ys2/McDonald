<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="${pageContext.request.contextPath}/css/super/store.css" rel="stylesheet" />
<div class="title">
  <h1>가맹점관리</h1>
</div>

<div class="wrapper">
  <table class="table" page="store">
    <thead>
      <tr>
        <th>지점명</th>
        <th>점주</th>
        <th>전화번호</th>
        <th>개점일</th>
        <th>주소</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr store-num="1">
        <td>혜화점</td>
        <td>홍길동</td>
        <td>010-1234-4567</td>
        <td>2023/07/12</td>
        <td>서울특별시 종로구 창경궁로 241-1</td>
        <td>
          <button class="btn btn-danger btn-sm" onclick="storeDelBtnHandler(event)">
            삭제
          </button>
        </td>
      </tr>
      <tr store-num="2">
        <td>한성대점</td>
        <td>홍길동</td>
        <td>999-9999-9999</td>
        <td>8888/99/99</td>
        <td>서울특별시 성북구 성북구 성북구 성북구 성북구 성북구 성북구</td>
        <td>
          <button class="btn btn-danger btn-sm" onclick="storeDelBtnHandler(event)">
            삭제
          </button>
        </td>
      </tr>
    </tbody>
  </table>
</div>

<div class="footer">
  <div class="empty"></div>
  <nav>
    <ul class="pagination">
      <li class="page-item">
        <a class="page-link" href="#">
          <span aria-hidden="true">&laquo;</span>
        </a>
      </li>
      <li class="page-item active"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item">
        <a class="page-link" href="#">
          <span aria-hidden="true">&raquo;</span>
        </a>
      </li>
    </ul>
  </nav>
  <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#store-modal">
    가맹점 추가
  </button>
  <!-- <button class="btn btn-primary" onclick="">가맹점추가</button> -->
</div>
<!-- 모달 숨겨놓기-->
<div
class="modal fade"
id="store-modal"
data-bs-backdrop="static"
tabindex="-1"
aria-hidden="true"
>
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content" id="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">가맹점 추가</h5>
        <button
        type="button"
        class="btn-close"
        data-bs-dismiss="modal"
        aria-label="Close"
        ></button>
      </div>
      <div class="modal-body">
        <label class="form-label">지점명</label>
        <input type="text" class="form-control" />
        <label class="form-label">ID</label>
        <input type="text" class="form-control" />
        <label class="form-label">비밀번호</label>
        <input type="password" class="form-control" />
        <label class="form-label">비밀번호 확인</label>
        <input type="password" class="form-control" />
        <label class="form-label">점주명</label>
        <input type="text" class="form-control" />
        <label class="form-label">전화번호</label>
        <input type="text" class="form-control" />
        <label class="form-label">주소</label>
        <input type="text" class="form-control" />
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="storeAddBtnHandler()">
          추가
        </button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>