<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    
    <meta charset="utf-8">
    <!-- Favicons -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

    <style>

        #login_form {
            width: 1000px;
            height: 1000px;
            background-color: whitesmoke;
            position: absolute;
            left: 50%;
            top: 7%;
            margin: 0px  0  0 -500px;
            z-index: 5;
            padding: 40px;
        }

        .bg_login {
        background-color:lightgray;
        }

        .logo {
            width: 70px;
            height: 70px;
        }

    </style>

</head>
<body class="bg_login">

    <div class="modal-content rounded-4 shadow" id="login_form">
        <div class="modal-header p-5 pb-4 border-bottom-0">
        <h1 class="fw-bold mb-0 fs-2" href="/join">회원가입</h1>
        <img src="./resource/img/logo.png" width="65px" height="65px" class="logo">
    </div>

    <form class="needs-validation" action="<%=request.getContextPath() %>/join.do">
        <div class="row g-3"">
          <div class="col-sm-6">
            <label for="firstName" class="form-label">성명</label>
            <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          
          
          <div class="col-sm-6">
            <label for="firstName" class="form-label">Id</label>
            <input type="text" class="form-control" id="firstName" name="ID">
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          
          
          <div class="col-sm-6">
            <label for="firstName" class="form-label">비밀번호</label>
            <input type="text" class="form-control" id="firstName" name="PW">
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          
          <hr class="my-5">
          
          <div class="col-md-5">
            <label for="country" class="form-label">성별</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                  남성
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                <label class="form-check-label" for="flexRadioDefault2">
                  여성
                </label>
              </div>
            <div class="invalid-feedback">
              성별이 선택되지 않았습니다!
            </div>
          </div>

          <div class="col-12">
            <label for="username" class="form-label">닉네임</label>
            <div class="input-group has-validation">
              <span class="input-group-text"><a href="#" style="color: grey;">중복 확인</a></span>
              <input type="text" class="form-control" id="username" placeholder="사용할 닉네임을 입력하세요!" required="">
            <div class="invalid-feedback">
                사용자 이름이 입력되지 않았습니다!
              </div>
            </div>
          </div>

          <hr class="my-5">

          <div class="col-12">
            <label for="email" class="form-label">이메일<span class="text-muted">(선택)</span></label>
            <input type="email" class="form-control" id="email" placeholder="abcdef@example.com">
          </div>

          <hr class="my-5">

          <div class="col-12">
            <label for="address" class="form-label">주소</label>
            <input type="text" class="form-control" id="address" placeholder="시/군/구, 길, 건물 까지만 입력하세요." required="">
            <div class="invalid-feedback">
                주소가 입력되지 않았습니다!
            </div>
          </div>

          <hr class="my-5">

          <div class="col-12">
            <label for="address2" class="form-label">상세주소</label>
            <input type="text" class="form-control" id="address2" placeholder="동/호 수를 입력하세요.">
          </div>
        </div>

        <hr class="my-4">

        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">(필수)개인정보 이용 약관에 동의합니다.</label>
          </div>
  
        <div class="form-check">
          <input type="checkbox" class="form-check-input" id="same-address">
          <label class="form-check-label" for="same-address">(선택)정보 수신에 동의합니다.</label>
        </div>

        <hr class="my-4">

        <button class="w-100 btn btn-success btn-lg" type="submit">회원가입</button>
      </form>
	</div>
</body>