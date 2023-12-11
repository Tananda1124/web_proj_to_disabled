<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <header>
    <c:if test="${loginCheck eq 'yes'}">
    <div id="about_user">
    	<a style="color:rgb(168, 246, 140);">"${loginMember}님, 환영합니다!"</a>
    	<a href="<%=request.getContextPath()%>/logout">로그아웃</a>
    		<c:if test="${isManager eq 'yes'}">
	            <a>  |  </a>
	            <span>
	                <a href="<%=request.getContextPath() %>/list.do" style="color: #ffffff;">관리자</a>
	            </span>
	            </c:if>
    	</div>
    	</c:if>
    	<a href="<%=request.getContextPath() %>/main">
        <img src="./resource/img/logo.png" id="logo" /></a>
        <c:if test="${loginCheck ne 'yes'}">
	        <div id="about_user">
	            <span>
	                <a href="<%=request.getContextPath()%>/login" style="color: #ffffff">로그인</a>
	            </span>
	            <a>  |  </a>
	            <span>
	                <a href="<%=request.getContextPath() %>/join" style="color: #ffffff;">회원가입</a>
	            </span>
        	</div>
        	</c:if>

        <ul class="nav justify-content-center bg-dark">
            <li class="nav-item">
                <a class="nav-link active" href="<%=request.getContextPath() %>/info" style="color: rgb(168, 246, 140);">정보마당</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/search.do" style="color: rgb(168, 246, 140)">지원시설 찾기</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/getjob" style="color: rgb(168, 246, 140);">취업정보</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/volunteer" style="color: rgb(168, 246, 140);">봉사하기</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="color: rgb(168, 246, 140);">장애인 생산품 구매하기</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath() %>/donation" style="color: rgb(168, 246, 140);">후원하기</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="color: #b1b1b1;">더보기</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="<%=request.getContextPath() %>/mypage">마이 페이지</a>
                    <a class="dropdown-item" href="#">장바구니</a>
                    <a class="dropdown-item" href="#">배송조회</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">이용약관</a>
                </div>
            </li>
        </ul>
    </header>