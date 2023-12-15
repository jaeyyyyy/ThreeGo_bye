<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<!-- 코드언어 표시 == 웹 표준지침 준수 -->
<head>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Bootstrap icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css" type="text/css" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../../resources/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../resources/assets/css/style.css" rel="stylesheet" />

    <title>로그인</title>
    <link rel = "icon" href="image/wave.ico">
    <%--    <style>--%>
    <%--        /*@import url("signUpCss3.css");*/--%>
    <%--    </style>--%>
    <!-- 자바스크립트(유효성검사 해당) -->
    <script src ="signUpjs3.js"></script>
    <!-- 다음 우편번호찾기 API -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<!-- header-->
<jsp:include page="../common/header.jsp"/>
<form action="login_ok.jsp" method="post">
    <div id="header" >
        <h1 class="text-center">
            <!--<span><img alt="프로젝트 메인 제목" src="#"></span>-->
            로그인
        </h1>
        <p class="text-center">회원가입에 필요한 정보를 기입해주세요.</p>
    </div>
<%--아이디--%>
    <div class="userInput m-5">
        <h4 class="list">아이디</h4>
        <input type="text" name="id"  class="form-control form-control-sm" maxlength="20" placeholder="아이디를 입력하세요."><br/>
    </div>
<%--비밀번호--%>
    <div class="userInput m-5">
        <h4 class="list">비밀번호</h4>
        <input type="password" name="pw" class="form-control form-control-sm" maxlength="20" placeholder="비밀번호를 입력하세요."><br/>
    </div>
<%--    로그인 버튼--%>
    <div class="col text-center">
        <input type="submit" value="로그인" class="btn btn-primary btn-md"><br/>
    </div>
</form>
<!--footer-->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>
