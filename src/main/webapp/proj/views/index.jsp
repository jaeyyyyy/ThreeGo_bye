<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Bootstrap icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css" type="text/css" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../resources/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/assets/css/style.css" rel="stylesheet" />
    <title>프로젝트 이름</title>
</head>
<body>
<!-- Nav bar-->
<div class="top-header">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark">
            <a class="navbar-brand" href="index.jsp">
                <i class="bi-pin-map-fill m-auto text-primary"></i>
                <!--<img src="#" target="blank" alt="logo" height="100">-->
            </a>

            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">여행정보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">여행일정</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../views/community/bbs.jsp">커뮤니티</a>
                    </li>


                    <div class="nav-right navbar">
                        <li class="nav-item">
                            <a class="nav-link" href="#">로그인</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">회원가입</a>
                        </li>
                    </div>
                </ul>
            </div>
        </nav>
    </div>

    <div class="container position-relative">
        <div class="row justify-content-center">
            <div class="col-xl-8">
                <div class="text-center text-white">
                    <form class="form-subscribe" id="searchForm">
                        <!-- Email address input-->
                        <div class="row">
                            <div class="col">
                                <input class="form-control form-control-lg" id="searchInput" placeholder="여행지를 입력하세요."/>
                            </div>
                            <div class="col-auto"><button class="btn btn-primary btn-lg" id="searchButton" type="submit">검색</button></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>
<!-- Masthead-->

<!-- Icons Grid-->
<!-- 메뉴 다시 안내 -->
<section class="features-icons bg-light text-center">
    <div class="container">
        <div class="row">
            <h2 class="mb-5">당신의 여행을 시작하세요!</h2>
            <div class="col-lg-4">

                <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                    <div class="features-icons-icon d-flex"><i class="bi-pin-map-fill m-auto text-primary"></i></div>
                    <h5>국내의 도시를 검색하세요.</h5>
                    <p class="mb-0">넣을 내용이 더 있으면 더 넣습니다.</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                    <div class="features-icons-icon d-flex"><i class="bi-calendar-week m-auto text-primary"></i></div>
                    <h5>다른 여행자들의 일정을 확인하고,<br>나만의 일정을 계획해보세요.</h5>
                    <p class="mb-0"></p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                    <div class="features-icons-icon d-flex"><i class="bi-luggage-fill m-auto text-primary"></i></div>
                    <h5>여행자들과 여행정보를<br>공유하고, 질문해보세요.</h5>
                    <p class="mb-0"></p>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<!-- Image Cards-->
<!-- 대략적인 도시들을 나열합니다. 도시는 8개지만 '도'를 포함하면 총 17개(api기준)입니다. 일단은 8개만 나열했습니다.-->
<!-- 이미지 사이즈는 3:2 비율로 넣으면 예쁘게 들어갑니다.-->
<section class="bg-light text-center">
    <div class="container-fluid p-0">
        <div class="row row-cols-1 row-cols-md-4 g-4">
            <div class="col">
                <div class="card border-0">
                    <img src="images/seoul.jpg" class="card-img-top rounded" alt="...">
                    <div class="card-img-overlay">
                        <h4 class="card-title text-white text-center">서울</h4>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card border-0">
                    <img src="images/busan.jpg" class="card-img-top rounded" alt="...">
                    <div class="card-img-overlay">
                        <h4 class="card-title text-white text-center">부산</h4>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card border-0">
                    <img src="images/bg-showcase-2.jpg" class="card-img-top rounded" alt="...">
                    <div class="card-img-overlay">
                        <h4 class="card-title text-white text-center">Card title</h4>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card border-0">
                    <img src="images/bg-showcase-2.jpg" class="card-img-top rounded" alt="...">
                    <div class="card-img-overlay">
                        <h4 class="card-title text-white text-center">Card title</h4>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card border-0">
                    <img src="images/bg-showcase-2.jpg" class="card-img-top rounded" alt="...">
                    <div class="card-img-overlay">
                        <h4 class="card-title text-white text-center">Card title</h4>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card border-0">
                    <img src="images/bg-showcase-2.jpg" class="card-img-top rounded" alt="...">
                    <div class="card-img-overlay">
                        <h4 class="card-title text-white text-center">Card title</h4>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card border-0">
                    <img src="images/bg-showcase-2.jpg" class="card-img-top rounded" alt="...">
                    <div class="card-img-overlay">
                        <h4 class="card-title text-white text-center">Card title</h4>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card border-0">
                    <img src="images/bg-showcase-2.jpg" class="card-img-top rounded" alt="...">
                    <div class="card-img-overlay">
                        <h4 class="card-title text-white text-center">Card title</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--footer-->
<footer class="footer bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
                <ul class="list-inline mb-2">
                    <li class="list-inline-item"><a href="#!">About</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!">Contact</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!">Terms of Use</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!">Privacy Policy</a></li>
                </ul>
                <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2023. All Rights Reserved.</p>
            </div>
            <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
                <ul class="list-inline mb-0">
                    <li class="list-inline-item me-4">
                        <a href="#!"><i class="bi-facebook fs-3"></i></a>
                    </li>
                    <li class="list-inline-item me-4">
                        <a href="#!"><i class="bi-twitter fs-3"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#!"><i class="bi-instagram fs-3"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/script.js"></script>
</body>
</html>
