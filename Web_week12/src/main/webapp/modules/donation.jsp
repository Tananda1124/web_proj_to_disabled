<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>후원하기!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>

<body>
    <style>
        body {
    background: url(resource/img/background.png) 100% 100%;
    background-size: cover;
}

.container {
    background: #E8F0F9;
}

        /* 초기화 */
        
        * {
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: sans-serif;
            width: 100%;
            background-color: lightgrey;
        }
        
        li {
            list-style: none;
        }
        
        a {
            text-decoration: none;
        }
        
        img {
            border: 0;
        }
        /* header */
        
        #header {
            width: 100%;
            height: 90px;
            background-color: rgb(203, 241, 214);
        }
        
        #nav {
            width: auto;
            height: max-content;
            background-color: aliceblue;
        }
        
        #logo {
            position: absolute;
            width: auto;
            height: 30px;
            top: 5px;
            left: 155px;
        }
        
        #about_user {
            height: fit-content;
            position: absolute;
            top: 10px;
            left: 82%;
        }
        
        #user {
            height: 30px;
        }
        
        #nav-menu {
            color: black;
        }
        
        #nav-menu-dropdown {
            color: rgb(168, 246, 140);
        }
        /* carousel */
        
        .carousel-item {
            height: 35rem;
            background: #aaa;
            color: black;
            position: relative;
            background-position: center;
            background-size: cover;
        }
             
        .overlay-image {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            top: 0;
            background-position: center;
            background-size: cover;
            opacity: 0.7;
        }
        /* figure */
        
        #figure_container {
            position: relative;
            top: 30%;
            margin-top: 50px;
        }
        
        .figure_img {
            width: 500px;
            height: auto;
            background-position: center;
            background-size: cover;
        }
        /* content_Low */
        
        #content_Low {
            width: 960px;
            height: 800px;
            margin: auto;
            margin-top: 80px;
            margin-bottom: 80px;
            overflow: hidden;
            background-color: rgb(255, 255, 255);
        }
        
        #content_Low>div.box {
            margin-top: 40px;
            margin-bottom: 85px;
            width: 960px;
            height: 70px;
            padding: 10px 20px 10px 20px;
            border-radius: 13px;
            background-color: rgb(240, 240, 240);
        }
        
        #content_Bottom {
            width: 960px;
            height: 500px;
            margin: auto;
            margin-bottom: 80px;
            background-color: rgb(255, 255, 255);
        }
        /* footer */
        
        #main_footer {
            width: 100%;
            height: 360px;
            margin-top: 250px;
            margin-bottom: 0px;
            background-color: rgb(249, 249, 249);
        }
        
        #main_footer>#main_footer_text {
            display: inline-block;
            margin-top: 30px;
            margin-left: 170px;
            bottom: 10px;
        }
    </style>

	<%@ include file="./header.jsp" %>
	
    <div class="container col-8 my-5 br-2 rounded">
        <div class="row g-3">
            <div class="col-4 order-md-last">
                <h4 class="d-flex justify-content-between align-item-center">
                    <span class="text-muted">주의 사항</span>
                    <span class="badge bg-secondary rounded-pill">3</span>
                </h4>
                <ul class="list-group">
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6>카드</h6>
                            <span class="text-muted">후원하면 환불 불가</span>
                        </div>
                        <span class="text-muted">1</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6>삼성카드</h6>
                            <span class="text-muted">12개월 무이자 할부 가능</span>
                        </div>
                        <span class="text-muted">2</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6>기부금영수증</h6>
                            <span class="text-muted">12월19일까지 승인된 내용이 해당연도 기부금 영수증에 포함됩니다.</span>
                        </div>
                        <span class="text-muted">3</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6>국세청</h6>
                            <span class="text-muted">연말정산 간소화 서비스에 정상적으로 등록하시려면
                                                    주민등록번호 13자리가 정확하게 입력되어야 합니다.
                            </span>
                        </div>
                        <span class="text-muted">4</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6>좋은곳에 쓰겠습니다 ^^</h6>
                        </div>
                        <span class="text-muted">5</span>
                    </li>
                </ul>
            </div>
            <div class="col-8">
                <h4>후원정보</h4>
                <form>
                    <div class="row">
                        <div class="col-6">
                            <label class="form-label" for="firstname">이름</label>
                            <input type="text" id="firstname" class="form-control">
                        </div>
                        <div class="col-6">
                            <label class="form-label" for="lastname">후원명</label>
                            <input type="text" id="lastname" class="form-control">
                        </div>
                        <div class="col-12">
                            <label class="from-label" for="username">후원 금액</label>
                            <div class="input-group">
                                <span class="input-group-text">단위:원</span>
                                <input type="text" class="form-control" id="usrname">
                            </div>
                        </div>
                        <div class="col-12">
                            <label class="form-label" for="email"> 이메일
                                <span class="text-muted"></span>
                            </label>
                            <input type="text" id="email" class="form-control">
                        </div>
                        <div class="col-12">
                            <label class="form-label" for="address">주소 </label>
                            <input type="text" id="address" class="form-control">
                        </div>
                        <div class="col-5">
                            <label class="form-label" for="country">은행명 </label>
                            <select class="form-select" id="country">
                                <option>국민</option><option>삼성</option><option>농협</option><option>기업</option>
                                <option>신협</option><option>새마을금고</option><option>카카오뱅크</option><option>토스뱅크</option>
                            </select>
                        </div>
                        <div class="col-4">
                            <label class="form-label" for="state">출금일</label>
                            <select class="form-select" id="state">
                                <option>매월 1일</option>
                                <option>매월 10일</option>
                                <option>매월 25일</option>
                            </select>
                        </div>
                        <div class="col-3">
                            <label class="form-label" for="zip">휴대폰 </label>
                            <input type="text" id="zip" class="form-control">
                        </div>
                    </div>
                    <hr>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input">
                        <label class="form-check-label">만14세 이상</label>
                    </div>
                    <hr>
                    <h4>Payment</h4>
                    <div class="form-check">
                        <input type="radio" class="form-check-input">
                        <label class="form-check-label">Credit Card</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input">
                        <label class="form-check-label">Debit Card</label>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label class="form-label" for="cardname">Name on Card(영문이름) </label>
                            <input type="text" id="cardname" class="form-control">
                            <small class="text-muted">Full name as displayed on card</small>
                        </div>
                        <div class="col-6">
                            <label class="form-label" for="creditcard">카드번호(정확히 ㅎㅎ) </label>
                            <input type="text" id="creditcard" class="form-control">
                        </div>
                        <div class="col-3">
                            <label class="form-label" for="expiration">만료일 </label>
                            <input type="text" id="expiration" class="form-control">
                        </div>
                        <div class="col-3">
                            <label class="form-label" for="cvv">카드뒷3자리번호 </label>
                            <input type="text" id="cvv" class="form-control">
                        </div>
                    </div>
                    <hr>
                    <button type="submit" class="btn btn-primary btn-block mb-4">Continue To Checkout</button>
                </form>
            </div>
        </div>
    </div>
    
	<%@ include file="./footer.jsp" %>
</body>
<style></style>
</html>