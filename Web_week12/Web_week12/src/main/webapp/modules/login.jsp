<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="utf-8">
    <!-- Favicons -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style>
    
    #login_form {
        width: 500px;
        height: 800px;
        background-color: whitesmoke;
        position: absolute;
        left: 50%;
        top: 10%;
        margin: 0px  0  0 -250px;
        z-index: 5;
    }

    #bg_login {
        background-color:lightgray;
    }

</style>
<body id="bg_login">
    <form class="modal-content rounded-4 shadow" id="login_form" action="<%=request.getContextPath() %>/check.do">
        <div class="modal-header p-5 pb-4 border-bottom-0">
        <h1 class="fw-bold mb-0 fs-2">로그인하세요</h1>
        <img src="./resource/img/logo.png" width="65px" height="65px" >
    </div>

        <div class="modal-body p-5 pt-0">
        <form>
            <div class="form-floating mb-3">
                <input type="text" class="form-control rounded-3" id="floatingInput" placeholder="name@example.com" name=ID>
                <label for="floatingInput">아이디</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control rounded-3" id="floatingPassword" placeholder="Password" name=PW>
                <label for="floatingPassword">비밀번호</label>
            </div>
            <small><a>회원이 아니신가요? 언제든지 함께하실 수 있습니다! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </a><a href="<%=request.getContextPath() %>/join" style="color: darkturquoise; font-style:initial;">회원가입</a></small>
            <button class="w-100 mb-2 btn btn-lg rounded-3 btn-success" type="submit">로그인</button>
            <small class="text-muted">로그인 시, 이용 약관에 동의합니다.</small>
            <hr class="my-4">
            <h3 class="fs-5 fw-bold mb-3">다른 계정으로 로그인하기</h3>
            <button class="w-100 py-2 mb-2 btn btn-outline-success rounded-3" type="submit">
            <img src="./resource/img/naver_circle_2.png" width="16" height="16"></img>
            Naver 로그인
            </button>
            <button class="w-100 py-2 mb-2 btn btn-outline-warning rounded-3" type="submit" action="/bool">
            <img src="./resource/img/kakaotalk_logo.png" width="20" height="20"></img>
            KaKao 로그인
            </button>
            <button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-3" type="submit" >
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-apple" viewBox="0 0 16 16"><path d="M11.182.008C11.148-.03 9.923.023 8.857 1.18c-1.066 1.156-.902 2.482-.878 2.516.024.034 1.52.087 2.475-1.258.955-1.345.762-2.391.728-2.43Zm3.314 11.733c-.048-.096-2.325-1.234-2.113-3.422.212-2.189 1.675-2.789 1.698-2.854.023-.065-.597-.79-1.254-1.157a3.692 3.692 0 0 0-1.563-.434c-.108-.003-.483-.095-1.254.116-.508.139-1.653.589-1.968.607-.316.018-1.256-.522-2.267-.665-.647-.125-1.333.131-1.824.328-.49.196-1.422.754-2.074 2.237-.652 1.482-.311 3.83-.067 4.56.244.729.625 1.924 1.273 2.796.576.984 1.34 1.667 1.659 1.899.319.232 1.219.386 1.843.067.502-.308 1.408-.485 1.766-.472.357.013 1.061.154 1.782.539.571.197 1.111.115 1.652-.105.541-.221 1.324-1.059 2.238-2.758.347-.79.505-1.217.473-1.282Z"/>
                    <path d="M11.182.008C11.148-.03 9.923.023 8.857 1.18c-1.066 1.156-.902 2.482-.878 2.516.024.034 1.52.087 2.475-1.258.955-1.345.762-2.391.728-2.43Zm3.314 11.733c-.048-.096-2.325-1.234-2.113-3.422.212-2.189 1.675-2.789 1.698-2.854.023-.065-.597-.79-1.254-1.157a3.692 3.692 0 0 0-1.563-.434c-.108-.003-.483-.095-1.254.116-.508.139-1.653.589-1.968.607-.316.018-1.256-.522-2.267-.665-.647-.125-1.333.131-1.824.328-.49.196-1.422.754-2.074 2.237-.652 1.482-.311 3.83-.067 4.56.244.729.625 1.924 1.273 2.796.576.984 1.34 1.667 1.659 1.899.319.232 1.219.386 1.843.067.502-.308 1.408-.485 1.766-.472.357.013 1.061.154 1.782.539.571.197 1.111.115 1.652-.105.541-.221 1.324-1.059 2.238-2.758.347-.79.505-1.217.473-1.282Z"/>
                  </svg>
            Apple 로그인
            </button>
        </form>
        </div>
    </form>
</body>