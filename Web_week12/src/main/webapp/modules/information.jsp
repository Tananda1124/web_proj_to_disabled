<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- bootstrap css -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

    <title>Information Page</title>
    <!-- style -->
    <style>
        /* 초기화 */
        
        * {
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: sans-serif;
            width: 100%;
        }
        
        ul {
            list-style: none; /* Remove HTML bullets */
            padding: 0;
            margin: 0;
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

        /* banner_Top */
        #banner_top {
            width : 100%;
            height : 400px;
            position: static;
            margin: 0, auto;
            background-color: rgb(183, 241, 229);
        }
        #banner_top>#banner_top_text {
            display: inline-block;
            margin-top: 60px;
            margin-left: 277px;
        }
        #banner_top>#banner_top_img {
            position: absolute;
            top: 78px;
            right: 277px;        
        }

        /* content_hr */
        hr.content_hr {
            width: 960px;
            margin: auto;
            margin-top: 28px;
            margin-bottom: 80px;
        }

        /* content_Top */
        #content_top {
            width: 960px;
            height: 350px;
            margin: auto;
            margin-top: 80px;
            overflow: hidden;
        }
        #content_top>#content_top_text {
            display: inline-block;
        }
        
        #content_top>div.box {
            margin-top: 40px;
            width: 960px;
            height: 70px;
            padding: 10px 20px 10px 20px;
            border-radius: 13px;
            background-color: rgb(240, 240, 240);
        }

        /* content_Medium */
        #content_medium {
            width: 960px;
            height: 100px;
            margin: auto;
            margin-top: 80px;
            overflow: hidden;
        }
        #content_medium>#content_medium_text {
            display: inline-block;
        }

        div.medium_banner_odd {
            width: 960px;
            height: 300px;
            margin: auto;
            margin-top: 80px;
            overflow: hidden;
            /*background-color: bisque;*/
            display: flex;
            justify-content: space-between;
        }
        div.medium_banner_odd>img.medium_img_odd {
            width: 300px;
            height: 300px;
            border-radius: 13px;
        }

        div.medium_banner_odd>div.medium_text_odd{
            vertical-align: top;
            display: inline-block; 
            /* background-color: aqua;   */
        }

        div.medium_banner_even {
            width: 960px;
            height: 300px;
            margin: auto;
            margin-top: 80px;
            overflow: hidden;
            /* background-color: bisque; */
        }
        div.medium_banner_even>img.medium_img_even {
            width: 300px;
            height: 300px;
            border-radius: 13px;
            float: right;
        }
        div.medium_banner_even>div.medium_text_even {
            vertical-align: top;
            display: inline-block;
            /* background-color: aqua; */
        }


        /* content_Bottom */
        .content_bottom {
            width: 960px;
            height: auto;
            margin: auto;
            margin-top: 30px;
            overflow: hidden;
        }

        /* footer */
        
        #main_footer {
            width: 100%;
            height: 360px;
            margin-top: 300px;
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
</head>

<body>


	<%@ include file="./header.jsp" %>

    <!-- banner_Top-->
    <div id="banner_top">
        <div id="banner_top_text" style="font-size: 16px; color: rgb(91, 91, 91); font-weight: bold;">
            <span style="font-size: 30px; color: rgb(90, 90, 90); font-weight: bold;">알아두면<br>
            마음 따듯해지는 정보마당</span><br><br>
            지식과 따듯함을 채워보아요.
        </div>
        <div id="banner_top_img" width="100px;" height="100px;">
            <img src="resource/img/최종 정보마당.png">
        </div>
    </div>

    <!--content_Top-->
    <div id="content_top">
        <div id="content_top_text" style="font-size: 16px; color: rgb(80, 80, 80); font-weight: bold;">
            <span style="font-size: 25px; color:rgb(125, 125, 125); font-weight: bold;">장애인의 개념</span>
            <p><br></p>
            <span style="color:rgb(22, 188, 156);">장애인이란</span> 다음의 구분에 따른 신체적, 정신적 장애로 오랫동안 일상생활이나 사회생활에서 상당한 제약을 받는<br>
            사람들을 의미합니다. (장애인 복지법 제 2조 제1항 및 제2항)
            <p></p>
            <ul>
                <li><span style="color: rgb(160, 160, 160);">•</span> 신체적 장애 : 주요 외부 신체 기능의 장애, 내부기관의 장애 등</li>
                <li><span style="color: rgb(160, 160, 160);">•</span> 정신적 장애 : 발달 장애 또는 정신 질환으로 발생하는 장애</li>
            </ul>
            <p><br></p>
        </div>
        <div class="box" style="margin-top: 10px;">
            <span style="color: rgb(80, 80, 80); font-size: 14px; font-weight: bold; margin-left: 40px;">
                장애인에 대한 정의는 개별 입법 목적에 따라 다르며, 이 콘텐츠에서 다루는 장애인이란 [장애인 복지법]에 따른 장애인을 말합니다.<br>
                <a href="https://www.law.go.kr/%EB%B2%95%EB%A0%B9/%EC%9E%A5%EC%95%A0%EC%9D%B8%EB%B3%B5%EC%A7%80%EB%B2%95;" style="margin-left: 40px"><font color = orange>장애인 복지법 - 국가법령 정보센터</font></a>
            </span>
        </div>
    </div>
    
    <!--content_Medium-->
    <div id="content_medium">
        <div id="content_medium_text" style="font-size: 16px; color: rgb(80, 80, 80); font-weight: bold">
            <span style="font-size: 25px; color: rgb(125, 125, 125); font-weight: bold">장애인의 분류</span> 
            <p><br></p>
            <span style="color:rgb(22, 188, 156);">장애인은</span> 장애의 종류 및 기준에 따라 다음과 같이 분류합니다.  
        </div>
    </div>
    <hr class="content_hr">
    <div class="medium_banner_odd">
        <img class="medium_img_odd" src="resource/img/지체 장애인.png">
        <div class="medium_text_odd" style="font-size: 16px; color:rgb(80, 80, 80); font-weight: bold">
            <span style="font-size: 25px; color: rgb(125, 125, 125); font-weight: bold;">지체 장애인</span>
            <br><br>
            <p>
                한 팔, 한 다리 또는 몸통의 기능에 영속적인 장애가 있는 사람<br>
                한 손의 엄지손가락을 지골 관절 이상의 부위에서 잃은 사람 또는 <br>
                한 손의 둘째 손가락을 포함한 두개 이상의 손가락을 모두 제 1지골 관절<br>
                이상의 부위에서 잃은 사람<br>
                두 발의 발가락을 모두 잃은 사람<br>
                왜소증으로 키가 심하게 작거나 척추에 현저한 변형 또는 기형이 있는 사람<br>
                지체에 위 각 목의 어느 하나에 해당하는 장애정도 이상의 장애가 있다고<br>
                인정되는 사람
            </p>
        </div>
    </div>

    <div class="medium_banner_even">
        <img class="medium_img_even" src="resource/img/청각 장애인.png">
        <div class="medium_text_even" style="font-size: 16px; color:rgb(80, 80, 80); font-weight: bold">
            <span style="font-size: 25px; color: rgb(125, 125, 125); font-weight: bold;">청각 장애인</span>
            <br><br>
            <p>
                두 귀의 청력 손실이 각각 60데시벨(dB) 이상인 사람<br>
                한 귀의 청력 손실이 80데시벨 이상, 다른 귀의 청력 손실이 40 데시벨<br>
                이상인 사람<br>
                두 귀에 들리는 보통 말소리의 명료도가 50퍼센트 이하인 사람<br>
                평형 기능에 상당한 장애가 있는 사람
            </p>
        </div>
    </div>

    <div class="medium_banner_odd">
        <img class="medium_img_odd" src="resource/img/시각 장애인.png">
        <div class="medium_text_odd" style="font-size: 16px; color:rgb(80, 80, 80); font-weight: bold">
            <span style="font-size: 25px; color: rgb(125, 125, 125); font-weight: bold;">시각 장애인</span>
            <br><br>
            <p>
                나쁜 눈의 시력(공인된 시력표에 따라 측정된 교정시력을 말함)이 0.02<br>
                이하인 사람<br>
                좋은 눈의 시력이 0.2 이하인 사람<br>
                두 눈의 시력이 각각 주시점에서 10도 이하로 남은 사람<br>
                두 눈의 시야 2분의 1 이상을 잃은 사람<br>
                두 눈의 중심 시야에서 20도 이내에 겹보임[복시(複視)]이 있는 사람
            </p>
        </div>
    </div>

    <div class="medium_banner_even">
        <img class="medium_img_even" src="resource/img/언어 장애인.png">
        <div class="medium_text_even" style="font-size: 16px; color:rgb(80, 80, 80); font-weight: bold">
            <span style="font-size: 25px; color: rgb(125, 125, 125); font-weight: bold;">언어 장애인</span>
            <br><br>
            <p>
                다른 사람의 말을 이해하는 능력과 자신의 생각을 언어로 표현하는 능력의<br>
                장애를 보인다.<br>
                음성 기능이나 언어 기능에 영속적으로 상당한 장애가 있는 사람<br>
            </p>
        </div>
    </div>

    <div class="medium_banner_odd">
        <img class="medium_img_odd" src="resource/img/지적 장애인.png">
        <div class="medium_text_odd" style="font-size: 16px; color:rgb(80, 80, 80); font-weight: bold">
            <span style="font-size: 25px; color: rgb(125, 125, 125); font-weight: bold;">지적 장애인</span>
            <br><br>
            <p>
                정신 발육이 항구적으로 지체되어 지적 능력의 발달이 불충분 하거나<br>
                불완전 하고, 자신의 일을 처리하는 것과 사회생활에 적응하는 것이<br>
                상당히 곤란한 사람
            </p>
        </div>
    </div>
    <hr class="content_hr" style="margin-top: 80px;">
    <p><br><br></p>

    <!-- content_Bottom -->  
    <div class="content_bottom">
        <span style="font-size: 25px; color: rgb(125, 125, 125); font-weight: bold;">장애인 편의, 건강지원 콘텐츠 제공 정보</span>
        <p><br></p>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
              <div class="card">
                <div class="card-body">
                  <span style="font-size: 20px; color:rgb(176, 172, 255); font-weight: bold;">장애인 편의, 건강지원 개요</span>
                  <br><br>
                  <p class="card-text" style="color: rgb(125, 125, 125); font-weight: bold;">
                    • 장애인의 개념<br>
                    • 장애인 등록<br>
                    • 장애인 등록증 발급<br>
                  </p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card">
                <div class="card-body">
                  <span style="font-size: 20px; color:rgb(131, 213, 195); font-weight: bold;">보행편의 지원</span>
                  <br><br>
                  <p class="card-text" style="color: rgb(125, 125, 125); font-weight: bold;">
                    • 활동지원급여제도<br>
                    • 장애인 보조견의 훈련, 보급 지원<br>
                    • 장애인 보조기기의 교부, 대여, 수리 및 비용 지급<br>
                  </p>
                </div>
              </div>
            </div>
            <div class="col">
                <div class="card">
                  <div class="card-body">
                    <span style="font-size: 20px; color:rgb(123, 210, 234); font-weight: bold;">장애인 시설</span>
                    <br><br>
                    <p class="card-text" style="color: rgb(125, 125, 125); font-weight: bold;">
                        • 장애인 편의시설<br>
                        • 장애인 복지시설<br>
                        • 장애인 거주시설 입소 이용료 지원<br>
                    </p>
                  </div>
                </div>
              </div>
          </div>
    </div>

    <div class="content_bottom">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
              <div class="card">
                <div class="card-body">
                  <span style="font-size: 20px; color:rgb(241, 227, 71); font-weight: bold;">이동 편의 지원</span>
                  <br><br>
                  <p class="card-text" style="color: rgb(125, 125, 125); font-weight: bold;">
                    • 장애인 사용 자동차 표지 발급<br>
                    • 장애인 전용 주차구역<br>
                    • 액화석유가스(LPG)연료 사용 허용<br>
                    • 도시철도 채권 구입의무 면제<br>
                    • 대중교통의 이용<br>
                    • 장애인 특별 교통 수단<br>
                  </p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card">
                <div class="card-body">
                  <span style="font-size: 20px; color:rgb(254, 187, 133); font-weight: bold;">장애인 건강 지원</span>
                  <br><br>
                  <p class="card-text" style="color: rgb(125, 125, 125); font-weight: bold;">
                    • 건강보험료 경감<br>
                    • 보험급여 지급<br>
                    • 의료비 지원<br>
                    • 장애 진단서 발급 비용 및 검사비 지원<br>
                    • 여성 장애인 출산 비용 지원<br>
                    • 보장구에 대한 보험급여<br>
                    • 보장구에 대한 의료급여<br>
                  </p>
                </div>
              </div>
            </div>
        </div>
    </div>

  
	<%@ include file="./footer.jsp" %>
</body>