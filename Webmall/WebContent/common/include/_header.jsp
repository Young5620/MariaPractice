<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
body{
background:linear-gradient(to right,#61E6DC,#FDEBE2);
}
</style>
</head>
<body>


<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <img alt="로고" src="../CSS/logo11.png">
        <span class="fs-4"><strong>Glo Stock</strong></span>
      </a>

      <ul class="nav nav-pills">
        <li class="nav-item"><a href="#" class="nav-link link-dark" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark">Market</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark">Trade</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark">Pricing</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark">Help</a></li>
      </ul>
    </header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light rounded" aria-label="Twelfth navbar example">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample10" aria-controls="navbarsExample10" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample10">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">게시판</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown10" data-bs-toggle="dropdown" aria-expanded="false">MyPage</a>
              <ul class="dropdown-menu" aria-labelledby="dropdown10">
                <li><a class="dropdown-item" href="#">회원가입</a></li>
                <li><a class="dropdown-item" href="#">로그인</a></li>
                <li><a class="dropdown-item" href="#">나의계좌</a></li>
                <li><a class="dropdown-item" href="#">나의정보</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown10" data-bs-toggle="dropdown" aria-expanded="false">Community</a>
              <ul class="dropdown-menu" aria-labelledby="dropdown10">
                <li><a class="dropdown-item" href="#">전체글</a></li>
                <li><a class="dropdown-item" href="#">인기글</a></li>
                <li><a class="dropdown-item" href="#">시사게시판</a></li>
                <li><a class="dropdown-item" href="#">자유게시판</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown10" data-bs-toggle="dropdown" aria-expanded="false">News</a>
              <ul class="dropdown-menu" aria-labelledby="dropdown10">
              	<li><a class="dropdown-item" href="#">전체뉴스</a></li>
                <li><a class="dropdown-item" href="#">최신뉴스</a></li>
                <li><a class="dropdown-item" href="#">주요뉴스</a></li>
                <li><a class="dropdown-item" href="#">많이 본 뉴스</a></li>
              </ul>
            </li>    
          </ul>
          <form action="#" class="d-flex">
        		<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        		<button class="btn btn-outline-success" type="submit">Search</button>
      		</form>
        </div>
      </div>
    </nav>
  </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>