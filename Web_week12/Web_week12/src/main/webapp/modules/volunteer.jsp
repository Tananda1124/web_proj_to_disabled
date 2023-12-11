<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- bootstrap css -->
    <link rel="stylesheet" href="style1.css" type="text/css">
    
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
            height: 30rem;
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

	<%@ include file="./header.jsp" %>

    <!-- section -->
    <section>

        <!-- carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="overlay-image" style="background-image:url(./resource/img/carousel/vol.png);"></div>
                    <div class="container">
                        <h1>봉사활동</h1>
                        <p>선한 영향력을 발산하고 싶으신가요? 지금 봉사활동을 신청해 보세요! 여러분의 도움이 필요합니다!
                        </p>
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
        <div id="content_Low">
            <span style="color:rgb(92, 92, 92); font-size: 25px; font-weight: bold;">봉사 지원하기</span>
            <hr>
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th colspan="2"><label for="searchHopeArea1">봉사지역</label></th>
                    <th colspan="2"><label for="searchHopeSrvc1">봉사분야</label></th>
                    <th><label for="searchActOnline">활동구분</label></th>
                    <th><label for="searchSrvcStts">모집상태</label></th>
                </table>
                <form name="form1">

                    <select name="h_area1" onChange="cat1_change(this.value,h_area2)" style="width: 5rem;"size="3" >
                  
                     <option>전체</option>
                  
                  <option value='1'>서울</option>
                  
                  <option value='2'>부산</option>
                  
                  <option value='3'>대구</option>
                  
                  <option value='4'>인천</option>
                  
                  <option value='5'>광주</option>
                  
                  <option value='6'>대전</option>
                  
                  <option value='7'>울산</option>
                  
                  <option value='8'>강원</option>
                  
                  <option value='9'>경기</option>
                  
                  <option value='10'>경남</option>
                  
                  <option value='11'>경북</option>
                  
                  <option value='12'>전남</option>
                  
                  <option value='13'>전북</option>
                  
                  <option value='14'>제주</option>
                  
                  <option value='15'>충남</option>
                  
                  <option value='16'>충북</option>
                  
                    </select>
             
                  
                    <select name="h_area2" >
                  
                     <option>-선택-</option>
                  
                    </select>
                  
                  <script language=javascript>
                   var cat1_num = new Array(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16);
                  
                   var cat1_name = new Array('서울','부산','대구','인천','광주','대전','울산','강원','경기','경남','경북','전남','전북','제주','충남','충북');
                  
                  
                  
                  
                  
                   var cat2_num = new Array();
                  
                   var cat2_name = new Array();
                  
                  
                  
                  
                  
                   cat2_num[1] = new Array(17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41);
                  
                   cat2_name[1] = new Array('강남구','강동구','강북구','강서구','관악구','광진구','구로구','금천구','노원구','도봉구','동대문구','동작구','마포구','서대문구','서초구','성동구','성북구','송파구','양천구','영등포구','용산구','은평구','종로구','중구','중랑구');
                  
                  
                  
                  
                  
                   cat2_num[2] = new Array(42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57);
                  
                   cat2_name[2] = new Array('강서구','금정구','남구','동구','동래구','부산진구','북구','사상구','사하구','서구','수영구','연제구','영도구','중구','해운대구','기장군');
                  
                  
                  
                  
                  
                   cat2_num[3] = new Array(58,59,60,61,62,63,64,65);
                  
                   cat2_name[3] = new Array('남구','달서구','동구','북구','서구','수성구','중구','달성군');
                  
                  
                  
                  
                  
                   cat2_num[4] = new Array(66,67,68,69,70,71,72,73,74,75);
                  
                   cat2_name[4] = new Array('계양구','남구','남동구','동구','부평구','서구','연수구','중구','강화군','옹진군');
                  
                  
                  
                  
                  
                   cat2_num[5] = new Array(76,77,78,79,80);
                  
                   cat2_name[5] = new Array('광산구','남구','동구','북구','서구');
                  
                  
                  
                  
                  
                   cat2_num[6] = new Array(81,82,83,84,85);
                  
                   cat2_name[6] = new Array('대덕구','동구','서구','유성구','중구');
                  
                  
                  
                  
                  
                   cat2_num[7] = new Array(86,87,88,89,90);
                  
                   cat2_name[7] = new Array('남구','동구','북구','중구','울주군');
                  
                  
                  
                  
                  
                   cat2_num[8] = new Array(91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108);
                  
                   cat2_name[8] = new Array('강릉시','동해시','삼척시','속초시','원주시','춘천시','태백시','고성군','양구군','양양군','영월군','인제군','정선군','철원군','평창군','홍천군','화천군','횡성군');
                  
                  
                  
                  
                  
                   cat2_num[9] = new Array(109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148);
                  
                   cat2_name[9] = new Array('고양시 덕양구','고양시 일산구','과천시','광명시','광주시','구리시','군포시','김포시','남양주시','동두천시','부천시 소사구','부천시 오정구','부천시 원미구','성남시 분당구','성남시 수정구','성남시 중원구','수원시 권선구','수원시 장안구','수원시 팔달구','시흥시','안산시 단원구','안산시 상록구','안성시','안양시 동안구','안양시 만안구','오산시','용인시','의왕시','의정부시','이천시','파주시','평택시','하남시','화성시','가평군','양주군','양평군','여주군','연천군','포천군');
                  
                  
                  
                  
                  
                   cat2_num[10] = new Array(149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168);
                  
                   cat2_name[10] = new Array('거제시','김해시','마산시','밀양시','사천시','양산시','진주시','진해시','창원시','통영시','거창군','고성군','남해군','산청군','의령군','창녕군','하동군','함안군','함양군','합천군');
                  
                  
                  
                  
                  
                   cat2_num[11] = new Array(169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192);
                  
                   cat2_name[11] = new Array('경산시','경주시','구미시','김천시','문경시','상주시','안동시','영주시','영천시','포항시 남구','포항시 북구','고령군','군위군','봉화군','성주군','영덕군','영양군','예천군','울릉군','울진군','의성군','청도군','청송군','칠곡군');
                  
                  
                  
                  
                  
                   cat2_num[12] = new Array(193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214);
                  
                   cat2_name[12] = new Array('광양시','나주시','목포시','순천시','여수시','강진군','고흥군','곡성군','구례군','담양군','무안군','보성군','신안군','영광군','영암군','완도군','장성군','장흥군','진도군','함평군','해남군','화순군');
                  
                  
                  
                  
                  
                   cat2_num[13] = new Array(215,216,217,218,219,220,221,222,223,224,225,226,227,228,229);
                  
                   cat2_name[13] = new Array('군산시','김제시','남원시','익산시','전주시 덕진구','전주시 완산구','정읍시','고창군','무주군','부안군','순창군','완주군','임실군','장수군','진안군');
                  
                  
                  
                  
                  
                   cat2_num[14] = new Array(230,231,232,233);
                  
                   cat2_name[14] = new Array('서귀포시','제주시','남제주군','북제주군');
                  
                  
                  
                  
                  
                   cat2_num[15] = new Array(234,235,236,237,238,239,240,241,242,243,244,245,246,247,248);
                  
                   cat2_name[15] = new Array('공주시','논산시','보령시','서산시','아산시','천안시','금산군','당진군','부여군','서천군','연기군','예산군','청양군','태안군','홍성군');
                  
                  
                  
                  
                  
                   cat2_num[16] = new Array(249,250,251,252,253,254,255,256,257,258,259,260);
                  
                   cat2_name[16] = new Array('제천시','청주시 상당구','청주시 흥덕구','충주시','괴산군','단양군','보은군','영동군','옥천군','음성군','진천군','청원군');
                  
                  
                  
                  
                  
                  function cat1_change(key,sel){
                  
                   if(key == '') return;
                  
                   var name = cat2_name[key];
                  
                   var val = cat2_num[key];
                  
                  
                  
                   for(i=sel.length-1; i>=0; i--)
                  
                    sel.options[i] = null;
                  
                   sel.options[0] = new Option('-선택-','', '', 'true');
                  
                   for(i=0; i<name.length; i++){
                  
                    sel.options[i+1] = new Option(name[i],val[i]);
                  
                   }
                  
                  }                
                  </script>

<form name="form3">

    <select name="h_area3"style="width: 15rem;" size="3" >
  
     <option>전체</option>
  
  <option value='1'>생활편의지원</option>
  
  <option value='2'>주거환경</option>
  
  <option value='3'>상담</option>
  
  <option value='4'>교육</option>
  
  <option value='5'>보건의료</option>
  
  <option value='6'>농어촌봉사</option>
  
  <option value='7'>문화행사</option>
  
  <option value='8'>환경보호</option>
  
  <option value='9'>행정보조</option>
  
  <option value='10'>안전,예방</option>
    </select>
    
    <form name="form4">

        <select name="h_area4"style="width: 15rem;"size="3" >
      
         <option>전체</option>
      
      <option value='1'>온라인</option>
      <option value='2'>오프라인</option>
      <option value='3'>온라인+오프라인</option>
        </select>
        <form name="form5">

            <select name="h_area5"style="width: 15rem;" size="3">
          
             <option>전체</option>
          
          <option value='1'>모집중</option>
          <option value='2'>모집완료</option>
            </select>
                  </form>
                  <div class="volunteer_data">
                    <!-- 검색 박스 -->
                    <div class="search_service mb05 pc_only">
                            <dl class="form_elem col01">
                                <dt class="label"><label for="searchProgrmBgnde">봉사기간</label></dt>
                                <dd data-module='datepicker'>
                                    <span class="datepicker">
                                        <!--  이전 소스 <label class="haze" for="searchProgrmBgnde">봉사기간 시작날짜</label> -->
                                        
                                            
                                                <span class="input_text"><input type="text" id="searchProgrmBgnde" name="searchProgrmBgnde" value="2022-12-03" title="봉사기간 시작날짜" maxlength="10" readonly="readonly"></span>
                                        <button type="button" class="date_select" onclick="openCalendar(document.getElementById('searchProgrmBgnde')); return false;"><span>시작날짜 선택</span></button>
                                    </span>
                                    <span class="symbol">~</span>
                                    <span class="datepicker">
                                        <label for='searchProgrmEndde' class="haze">봉사기간 종료날짜</label>
                                                <span class="input_text"><input type="text" id="searchProgrmEndde" name="searchProgrmEndde" value="2023-03-03" title="봉사기간 종료날짜" maxlength="10" readonly="readonly"></span>  
                                        <button type="button" class="date_select" onclick="openCalendar(document.getElementById('searchProgrmEndde')); return false;"><span>종료날짜 선택</span></button>
                                    </span>
                                </dd>
                            </dl>
                            <dl class="form_elem col02">
                                <dt class="label"><label for="adultPosblAt">봉사자유형</label></dt>
                                <dd class="radio_group">
                                    <span class="checks small">
                                        <input name="adultPosblAt" id="adultPosblAt" value="Y" type="checkbox" checked="checked">
                                        <label for="adultPosblAt">성인</label>
                                    </span>
                                    <span class="checks small">
                                        <input name="yngbgsPosblAt" id="yngbgsPosblAt" value="Y" type="checkbox" checked="checked">
                                        <label for="yngbgsPosblAt">청소년</label>
                                    </span>
                                </dd>
                            </dl>
                            <dl class="form_elem col01" >
                                <dt class="label"><label for="searchKeyword">봉사명</label></dt>
                                <dd class="input_01">
                                    <span class="input_text"><input type="text" id="searchKeyword" name="searchKeyword" value="" maxlength="50" title="봉사명"></span>
                                </dd>
                            </dl>
                            <dl class="form_elem col02" >
                                <dt class="label"><label for="searchNanmmbyNm"> 수요처명</label></dt>
                                <dd class="input_01">
                                    <span class="input_text"><input type="text" id="searchNanmmbyNm" name="searchNanmmbyNm" value="" maxlength="50" title="수요처명 입력"></span>
                                </dd>
                            </dl>
                            <dl class="form_elem col01">
                                <dt class="label"><label for="searchRequstSe">재난 일감</label></dt>
                                <dd class="radio_group">
                                    <span class="checks small">
                                        <input style="margin-right:0px;margin-left:2px;"  type="checkbox" name="searchRequstSe" id="searchRequstSe" class="chk" checked="checked">
                                        <label for="searchRequstSe">재난일감 포함</label>
                                    </span>
                                    <span class="checks small">
                                        <input style="margin-right:0px;margin-left:2px;" type="checkbox" name="searchReqConfirm" id="searchReqConfirm" class="chk" >
                                        <label for="searchReqConfirm">재난</label>
                                    </span>
                                </dd>
                            </dl>
                            <div class="btn_sec search_service_btn">
                                <button type="button" class="btn grey btn_orange" onclick="javascript:return false;" id="btnSearch"><span>검색</span></button>
                                <button type="button" class="btn white_small btn_gray" onclick="javascript:return false;" id="btnReset"><span>초기화</span></button>
                            </div>
                        </div>
                        <!--// 검색 박스 -->
                    </div>
                    </form>
                    <h5> 아래 부터 목록 보기 ( 리스트)</h5>


    <!--footer-->
   
	<%@ include file="./footer.jsp" %>
</body>