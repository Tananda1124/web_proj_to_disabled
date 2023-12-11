<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>지원시설 찾기</title>

    <!-- 기본 설정, api 키 -->
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&callback=initMap&v=weekly"
      defer
    ></script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&callback=initMap&v=weekly"
      defer
    ></script>

     <!-- bootstrap css -->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    
     <!-- map -->
    <script>
        let map;
  
        <%
        	Object lat = session.getAttribute("lat");
        	Object lng = session.getAttribute("lng");
        %>
        function initMap() {
          const target = { 
        		  lat: 		<%if(lat == null){%>
        		  				37.6804647
        		  			<%	}
        		  				else{
        		  					lat = (double)lat;%>
        		  			<%=lat %>
        		  			<%}%>,
        		  			
		       	   lng: <%if(lng == null){%>
		       				127.0568157
				  			<%	}
				  				else{
				  					lng = (double)lng;%>
				  			<%=lng %>
				  			<%}%>,
          };
  
          const map = new google.maps.Map(document.getElementById("map"), {
          center: target,
          zoom: 18,
          });
  
          const marker = new google.maps.Marker({
          position : target,
          map : map,
        });
        }
  
        window.initMap = initMap
        
      </script>

    <!-- style -->
    <style type="text/css">
        /* 초기화 */

        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            width: 100%;
            background-color: white;
        }

        section {
            height: 100%;
            width: 100%;
            place-content: center;
        }

        
        * {
            margin: 0;
            padding: 0;
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

        /* footer */
        
        #main_footer {
            width: 100%;
            height: 360px;
            margin-bottom: 0px;
            background-color: rgb(249, 249, 249);
        }
        
        #main_footer>#main_footer_text {
            display: inline-block;
            margin-top: 30px;
            margin-left: 170px;
            bottom: 10px;
        }


        /* 여기부터 작업 */
        section.left{
            width: 60%;
            float: left;
        }
        section.right{
            width: 40%;
            float: right;
        }

        .search_title {
            position: relative;
            top: 28px;
            left: 10%;
            clear: both;
        }

        
        #map {
            height: 69%;
            width: 45%;
            position: absolute;
            left: 10%;
            top:230px;
            margin-top: 20px;
            clear:both;
        }

        #search_table{
            position: relative;
            width: 80%;
            height: 74.5%;
            left: 0px;
            top: 10%;
        }

        .search_th{
            background-color: #41eb575e;
            text-align: center;
        }

        .search_tr{
            height: 80px;
            text-align: center;
            background-color: whitesmoke;
            max-height :150px;
        }

        .search_input {
            position: relative;
            width: 80%;
            left: 0%;
            top:10%
        }

        .search_menu {
            clear: both;
            position: relative;
            width: 75.5%;
            height: auto;
            margin-inline: 5%;
            padding: 1%;
            left: 11.5%;
            margin-top: 10px;
            margin-bottom: 40px;
        }
        

        .search_menu_title {
            position: relative;;
            left: 28.5%;
        }

    </style>
</head>

<body>
	<%@ include file="./header.jsp" %>

    <section>
        
            <h1 class="search_title" style="color: black">어떤 시설을 찾고 싶으신가요? 여기서 검색해보세요!</h1>
            <!-- left section -->
            <section class="left">
                <div class="search_menu">
                    <h2 class="search_menu_title"><span style="color:rgb(0, 0, 0)">&nbsp;지원 시설 유형</span></h2>
                        <ul class="nav justify-content-center">
                            <li class="nav-item">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                생산품판매&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                            </li>
                            <li class="nav-item">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                장애인거주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                            </li>
                            <li class="nav-item">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                의료재활&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                            </li>
                            <li class="nav-item">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                사회재활&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                            </li>
                            <li class="nav-item">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                직업재활&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                            </li>
                            <li class="nav-item">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                기타시설&nbsp;&nbsp;
                                </label>
                            </li>
                            <li class="nav-item">
                                <button type="submit" href="#" class="btn btn-success">적용하기</button>
                            </li>
                        </ul>
                </div>     

                <!-- map -->
                <div id="map"></div>
 

            </section>
            <!-- right section -->
            <section class="right">

                <form class="input-group mb-3 search_input" action="map.do" method="get">
                    <input type="text" class="form-control" placeholder="기관을 검색하면 지도가 바뀝니다!" name="map_search">
                      <input class="btn btn-outline-secondary" type="submit" value="검색하기"></button>
                  </form>

              <div class="table-responsive table" id="search_table"><table class="table">
                <thead class="search_th">
                <tr>
                    <th>시설명</th>
                    <th>시설유형</th>
                    <th>주소</th>
                </tr>
                </thead>
                <tbody>
				<%
				ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("nameList");
				ArrayList<String> addressList = (ArrayList<String>)session.getAttribute("addressList");
				ArrayList<String> typeList = (ArrayList<String>)session.getAttribute("typeList");
				for(int i = 0; i < nameList.size(); i++){
				%>
                <tr class="search_tr">
                	<td><%=nameList.get(i) %></td>
                	<td><%=typeList.get(i) %></td>
                	<td><%=addressList.get(i) %></td>
                </tr>
                <%} %>
                
                </tbody>
                </table></div>

            </section>

    </section>

    

	<%@ include file="./footer.jsp" %>
    
</body>
</html>