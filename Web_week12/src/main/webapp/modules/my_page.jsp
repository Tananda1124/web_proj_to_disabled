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

    <title>My Page</title>
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
        div.banner_top {
            display: flex;
            width : 100%;
            height : 380px;
            position: static;
            margin: 0, auto;
            background-color: rgb(78, 80, 91);
        }

        div.banner_top_img {
            position: absolute;
            top: 160px;
            left: 277px;    
            border-radius: 50%;    
        }

        div.banner_top_text {
            margin-top: 150px;
            margin-left: 120px;
            width: 180px;
            height: 200px;
            /* background-color: blanchedalmond; */
        }

        div.banner_top_temp {
            margin-top: 240px;
            margin-left: 185px;
            width: 360px;
            height: 100px;
            /* background-color: aquamarine; */
        }

        .form-range {
            width: 360px;
            color: rgb(237, 143, 2);
        }

        /* content_hr */
        hr.content_hr {
            width: 960px;
            margin: auto;
            margin-top: 55px;
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

<div>


	<%@ include file="./header.jsp" %>

    <!-- banner_Top-->
    <div class="banner_top">
        <span style="font-size: 22px; color:rgb(212, 212, 212); font-weight:bold; margin-top:30px; margin-left:277px;">
            마이 페이지</span>
        <div class="banner_top_img">
            <img src="resource/img/기본 프로필.png" style="border-radius: 50%; width: 200px; height: 200px;">
        </div>
        <div class="banner_top_text">
            <span style="font-size: 30px; color:rgb(255, 255, 255); font-weight: bold;"><%=(String)request.getAttribute("loginMember") %></span>
        </div>
        <div class="banner_top_temp">
            <label for="customRange3" class="form-label" style="font-size: 20px; color:rgb(255, 255, 255); font-weight: bold;">
                나의 온도</label><br>
            <input type="range" class="form-range" min="28" max="70" step="0.5" id="customRange3">
        </div>
    </div>

    <!--content_Top-->
    <div id="content_top">
        <div id="content_top_text" style="font-size: 16px; color: rgb(80, 80, 80); font-weight: bold;">
            <span style="font-size: 25px; color:rgb(125, 125, 125); font-weight: bold;">나의 활동 내역</span>
            <p><br></p>
        </div>
        <div class="row">
            <div class="col-sm-6">
              <div class="card">
                <div class="card-body">
                  <span style="font-size: 20px; color:rgb(151, 226, 165); font-weight: bold;">나의 봉사 내역</span>
                  <br><br>
                  <p class="card-text"><span style="color:rgb(91, 91, 91); font-weight: bold;">지금까지의 나의 봉사 내역을 조회 합니다.</span></p>
                  <a href="#" class="btn btn-light">이동</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="card">
                <div class="card-body">
                  <span style="font-size: 20px; color:rgb(151, 226, 165); font-weight: bold;">나의 후원 내역</span>
                  <br><br>
                  <p class="card-text"><span style="color:rgb(91, 91, 91); font-weight: bold;">지금까지의 나의 후원 내역을 조회 합니다.</span></p>
                  <a href="#" class="btn btn-light">이동</a>
                </div>
              </div>
            </div>
          </div>
    </div>

  
	<%@ include file="./footer.jsp" %>
</body>