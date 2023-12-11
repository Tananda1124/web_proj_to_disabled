<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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

    <title>Main Page</title>
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
        
        .container {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding-bottom: 50px;
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
</head>

<body>

	<%@ include file="./modules/header.jsp" %>

    <!-- section -->
    <section>

        <!-- carousel -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="overlay-image" style="background-image:url(./resource/img/carousel/charity.jpg);"></div>
                    <div class="container">
                        <h1>후원</h1>
                        <p>당신의 관심으로 모두가 더 나은 삶을 살 수 있습니다! 지금 세상을 밝혀보세요!
                        </p>
                        <a href="#" class="btn btn-success btn-primary">
                                지금 후원하기!
                            </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="overlay-image" style="background-image:url(./resource/img/carousel/information.jpg);"></div>
                    <div class="container">
                        <h1>정보마당</h1>
                        <p>장애인들이 누구인지 알아보세요! 서로 이해하며 아름다운 세상을 만들어주세요!
                        </p>
                        <a href="#" class="btn btn-success btn-primary">
                                장애인에 대해 알아보기!
                            </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="overlay-image" style="background-image:url(./resource/img/carousel/job.jpg);"></div>
                    <div class="container">
                        <h1>취업하기</h1>
                        <p>장애인, 비장애인 상관없습니다! 당신이 일할 자리는 많으니까요!
                        </p>
                        <a href="#" class="btn btn-success btn-primary">
                                나를 원하는 기업 보기!
                            </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="overlay-image" style="background-image:url(./resource/img/carousel/map.jpg);"></div>
                    <div class="container">
                        <h1>지원시설</h1>
                        <p>도움이 필요하신가요? 여러분을 도와드릴 시설을 소개합니다!
                        </p>
                        <a href="#" class="btn btn-success btn-primary">
                                시설 알아보러 가기!
                            </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="overlay-image" style="background-image:url(./resource/img/carousel/shop.jpg);"></div>
                    <div class="container">
                        <h1>장애인 생산품 쇼핑몰</h1>
                        <p>수익의 일부는 장애인 사업에 후원됩니다! 확실한 품질 보증!
                        </p>
                        <a href="#" class="btn btn-success btn-primary">
                                쇼핑하러 가기!
                            </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="overlay-image" style="background-image:url(./resource/img/carousel/volunteer.jpg);"></div>
                    <div class="container">
                        <h1>봉사활동</h1>
                        <p>선한 영향력을 발산하고 싶으신가요? 지금 봉사활동을 신청해 보세요! 여러분의 도움이 필요합니다!
                        </p>
                        <a href="#" class="btn btn-success btn-primary">
                                봉사하러 가기!
                            </a>
                    </div>
                </div>
            </div>
            <a href="#myCarousel" class="carousel-control-prev" role="button" data-slide="prev">
                <span class="sr-only">Previous</span>
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </a>
            <a href="#myCarousel" class="carousel-control-next" role="button" data-slide="next">
                <span class="sr-only">Previous</span>
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </a>
        </div>

        <!-- figure -->
        <div class="container" id="figure_container">

            <div class="thumbnail">

                <div class="row">

                    <div class="col-md-6">

                        <a href="#">

                            <img class="figure_img" src="./resource/img/figure_img.jpg">

                        </a>

                    </div>

                    <div class="col-md-6">

                        <div class="caption" style="margin-top: 70px">

                            <h1>다양성에 대한 존중</h1>

                            <hr>

                            <p>여러분은 일상 속에서 장애인을 많이 보셨나요? 가끔씩 전동 휠체어를 타고 다니시는 어르신, 점자 블록을 지팡이로 따라가는 시각 장애인, 사실은 귀가 잘 들리지 않는 청각장애인 소년까지 <span style="color: #51f338;">우리 생각보다 장애인은 가까운 곳에 있습니다.</span> 이 사이트에서는 장애인들의 자유로운 활동과 비장애인과의 화합을 물심양면으로 지원합니다.
                            </p>

                            <hr>

                            <p class="caption-footer">

                                <a href="#" class="badge badge-success" style="width: 70px;"><span class="badge badge-success">좋아요</span></a>

                                <a href="#" class="badge badge-primary" style="width: 70px;"><span class="gbadge badge-primary">공유하기</span></a>

                            </p>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!--content_Low-->
        <div id="content_Low">
            <span style="color:rgb(92, 92, 92); font-size: 25px; font-weight: bold;">후원 사이트</span>
            <div class="box">
                <span style="color: rgb(80, 80, 80); font-size: 14px; font-weight: bold;">따듯한 후원에 참여하세요 후원 참여시, 회당 5도의 온도가 올라갑니다. 뫄뫄 사이트는 밀알복지재단, 한국장애인재단, 푸르메재단과 함께합니다.<br />
          사이트에 방문해 주신 회원님의 관심에 감사드립니다.</span>
            </div>
            <div class="row">
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="resource/img/miral.png" class="card-img-top" alt="밀알복지재단">
                        <div class="card-body">
                            <h5 class="card-title" style="color: rgb(60, 60, 60);">밀알복지재단</h5>
                            <span class="badge badge-pill badge-danger" style="margin-bottom: 7px;">인기</span>
                            <p class="card-text" style="color:rgb(90, 90, 90)">장애인의 인간다운 삶과 권리를 보장하기 위해 다양한 분야의 장애인전문복지사업을 수행하고 있습니다.</p>
                            <a href="#" class="btn btn-light">이동</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="resource/img/korea.png" class="card-img-top" alt="한국장애인재단">
                        <div class="card-body">
                            <h5 class="card-title" style="color: rgb(60, 60, 60);">한국장애인재단</h5>
                            <span class="badge badge-pill badge-success" style="margin-bottom: 7px;">투명성</span>
                            <p class="card-text" style="color:rgb(90, 90, 90)">한국장애인재단은 장애인의 사회참여와 기회의 균등을 통해 장애인의 인권을 증진하는 공익 사업을 지원하고 있습니다.</p>
                            <a href="#" class="btn btn-light">이동</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="resource/img/purume.png" class="card-img-top" alt="푸르메재단">
                        <div class="card-body">
                            <h5 class="card-title" style="color: rgb(60, 60, 60);">푸르메재단</h5>
                            <span class="badge badge-pill badge-secondary" style="margin-bottom: 7px;">재무안정성</span>
                            <p class="card-text" style="color:rgb(90, 90, 90)">오늘도, 내일도, 꾸준히 자신만의 속도로 성장하고 있는 장애어린이의 꿈이 훨훨 날 수 있도록 응원해주세요!</p>
                            <a href="#" class="btn btn-light">이동</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- content_Bottom -->
        <div id="content_Bottom">
            <div class="card text-black" style="border-color: white;">
                <img src="resource/img/bottom.png" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h3 class="card-title"><strong>차별과 제약없이 녹아드는 <br /><span style="color: green;">우리</span></strong> </h3>
                    <p class="card-text"></p>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>

    </section>


	<%@ include file="./modules/footer.jsp" %>

</body>