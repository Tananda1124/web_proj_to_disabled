<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <style>
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

        section.job {
            background-color: white;
            width: 100%;
        }

        #job_table {
            width: 70%;
            height: 1600px;
            left: 15%;
            position: relative;
            min-width: 1000px;
        }

        tr{
            text-align-last: center;
        }

        tr.common {
            background-color: rgb(243, 246, 250);
            font-size: larger;
        }

        tr.cross {
            background-color: rgb(167, 252, 167);
            font-size: larger;
        }

        button.btnjob {
            height: 30px;
            width: 95px;
        }

        .contain_options {
            width: 70%;
            height: fit-content;
            left: 15%;
            background-color: white;
            position: relative;
            min-width: 1000px;
            float: left;
            align-items: center;
            justify-content: center;
        }

        .dropdown {
            display: inline-block;
        }

        #search_job {
            width: 70%;
            height: fit-content;
            position: relative;
            left: 15%;
            min-width: 1000px;
            top: 13px;
        }

        #banner_top {
            width: 100%;
            height: 550px;
            position: relative;
            margin: 0, auto;
            background-color: white;
        }

        #banner_top>#banner_top_text {
            display: inline-block;
            margin-top: 60px;
            margin-left: 300px;
        }

        #banner_top>#banner_top_img {
            position: absolute;
            background-size: contain;
            width: 100%;
            height: 100%;
            object-fit: cover;
            overflow: hidden;
        }

        .overlay-image {
            width: 100%;
            max-height: 700px;
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            top: 0;
            background-position: center;
            background-size: cover;
            opacity: 0.7;
        }

        .table_job_search {
          width: 70%;
          left: 15%;
          position: relative;
          min-width: 1000px;
          background-color: rgb(148, 250, 148);
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

	<%@ include file="./header.jsp" %>
    <section class="job">
      
        <div id="banner_top">
            <div id="banner_top_text" style="font-size: 16px; color: rgb(41, 41, 41); font-weight: bold;">
              <span style="font-size: 50px; color: rgb(0, 0, 0); font-weight: bold;">여러분을 기다리는<br>
               가지각색 기업들</span>
            </div>
            <div class="overlay-image" style="background-image: url(./resource/img/job_banner.jpg);"></div>
            </div>
        <div class="input-group mb-3" id="search_job">
            <input type="text" class="form-control" placeholder="회사 이름을 입력해주세요" aria-describedby="button-addon2">
            <button class="btn btn-outline-dark" type="button" id="button-addon2">이름으로 찾기</button>
        </div>
        <div>
            <table class="table_job_search">
                      <thead>
                          <tr>
                              <th><label for="searchHopeArea1">근무지역</label></th>
                              <th colspan="2"><label for="searchHopeSrvc1">학력&nbsp;&nbsp; /&nbsp;&nbsp; 경력</label></th>
                              <th><label for="searchActOnline">근무시간</label></th>
                              <th><label for="searchSrvcTarget">급여</label></th>
                              <th><label for="searchSrvcStts">장애인 근무 적합도</label></th>
                              <th>&nbsp;</th>
                          </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <div class="form-floating">
                              <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                <option selected>근무지역</option>
                                <option>서울특별시</option>
                                <option>경기도</option>
                                <option>그외</option>
                              </select>
                            </div>
                          </td>
                          <td>
                            <div class="form-floating">
                              <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                <option selected>학력</option>
                                <option>초중졸</option>
                                <option>고졸</option>
                                <option>전문대졸</option>
                                <option>학사</option>
                              </select>
                            </div>
                          </td>
                          <td>
                            <div class="form-floating">
                              <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                <option selected>경력</option>
                                <option>신입</option>
                                <option>대리</option>
                                <option>과장</option>
                                <option>임원</option>
                              </select>
                            </div>
                          </td>
                          <td>
                            <div class="form-floating">
                              <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                <option selected>근무시간</option>
                                <option>6시간 미만</option>
                                <option>8시간</option>
                                <option>8시간 이상</option>
                              </select>
                            </div>
                          </td>
                          <td>
                            <div class="form-floating">
                              <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                <option selected>급여</option>
                                <option>2000-3000</option>
                                <option>3000-4000</option>
                                <option>4000만원 이상</option>
                              </select>
                            </div>
                          </td>
                          <td>
                            <div class="form-floating">
                              <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                <option selected>근무 적합도</option>
                                <option>적합</option>
                                <option>다소적합</option>
                                <option>부적합</option>
                              </select>
                            </div>
                          </td>
                          <td>
                            <button type="submit" class="btn btn-secondary">적용하기</button>
                          </td>
                        </tr>
                      </tbody>
            </table>
          </div>
          
        <table class="table table-striped table-light" id="job_table">
	        <thead>
	                <tr>
	                  <th scope="col">근무지역</th>
	                  <th scope="col">공고제목</th>
	                  <th scope="col">회사명</th>
	                  <th scope="col">근무시간</th>
	                  <th scope="col">경력</th>
	                  <th scope="col">지원하기</th>
	                </tr>
            	</thead>
<%
	ArrayList<String> locationList = (ArrayList<String>)session.getAttribute("locationList");
	ArrayList<String> titleList = (ArrayList<String>)session.getAttribute("titleList");
	ArrayList<String> companyList = (ArrayList<String>)session.getAttribute("companyList");
	ArrayList<String> careerList = (ArrayList<String>)session.getAttribute("careerList");
	ArrayList<Integer> job_timeList = (ArrayList<Integer>)session.getAttribute("job_timeList");
%>
            <tbody>
            	<%for(int i = 0; i < locationList.size(); i++){%>
		            <tr class="common">
		            	<td>
		            		<%=locationList.get(i)%>
		            	</td>
		            	<td>
		            		<%=titleList.get(i) %>
		            	</td>
		            	<td>
		            		<%=companyList.get(i) %>
		            	</td>
		            	<td>
		            		<%=careerList.get(i) %>
		            	</td>
		            	<td>
		            		<%=job_timeList.get(i) %>
		            	</td>
		            	<td scope='col'><button class="btn btn-success btnjob">지원하기</button><br>
	                					<button class="btn btn-primary btnjob">서류보기</button>
	                					</td>
		            </tr>
		         <%} %>
            </tbody>
        </table>
    </section>
    <!--footer-->
    <footer id="main_footer">
      <img src="resource/img/footer_icon.png" alt="footer_icon" width="250" style="float: right; margin-top: 30px; margin-right: 170px" />
      <div id="main_footer_text" style="font-size: 12px; color: rgb(91, 91, 91)">
          <span style="color: rgb(60, 60, 60); font-weight: bold;">고객센터></span><br />
          <span style="color: black;"><h2>1234-1234</h2></span>
          <span style="color: black">09:00 ~ 18:00 (주말, 공휴일은 쇼핑몰 배송, 봉사 신청 문의에 한해 전화상담 가능)</span>
          <br /><br />
          <b>대표</b> 최창정, 김기석, 조윤식|
          <b>사업자 번호</b> 123-45-67890<br />
          <b>주소</b> 서울특별시 고척동 경인로 445 동양미래대학교 3호관 314호<br />
          <b>상호명</b> (주)뫄뫄 주식회사 |
          <b>이메일(고객문의)</b> cs@dongyangservice.com<br />
          <span style="color: black">ⓒ Copyright 표시 - ex) Copyright 2014. bucketplace, Co., Ltd. All rights reserved</span>
          <br /><br />
          <span style="font-weight: bold; word-spacing: 1em">제휴문의 광고문의 PR문의 IR문의</span>
          <br /><br />
          <span style="font-weight: bold; word-spacing: 2em">이용약관 개인정보처리방침 위치기반서비스이용약관 이용자보호비전과계획</span>
      </div>
  </footer>
</body>
</html>