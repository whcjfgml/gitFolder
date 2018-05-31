<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객(영화관)</title>
<link rel="stylesheet" type="text/css" href="css/user_Style.css">
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
//영화관선택
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

</script>
</head>
<body>
<div class="main">
<div class="header">
	<h1 >영화관</h1>
	<p>내 집같은 편안함, 영화관의 새로운 표준을 제시한다</p>
	<hr>
	<!-- 이미지 슬라이드 -->
	<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="image/cinemaImage01.jpg" style="width:100%">
  <div class="text">서울 영화관</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="image/cinemaImage02.jpg" style="width:100%">
  <div class="text">경기 영화관</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="image/cinemaImage03.jpg" style="width:100%">
  <div class="text">인천 영화관</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
</div>

<!-- 영화관 선택 -->
<div class="no">
	<h3>영화관 선택</h3>
</div>
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'soule')">서울</button>
  <button class="tablinks" onclick="openCity(event, 'incheon')">경기</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">인천</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">강원</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">대전/충청</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">광주/전라</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">대구/부산</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">경상/제주</button>
</div>

<div id="soule" class="tabcontent">
  <div class="gallery">
  <a target="_blank" href="image/cinemaImage01.jpg">
    <img src="image/cinemaImage01.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">서울</div>
</div>
</div>

<div id="incheon" class="tabcontent">
  <div class="gallery">
  <a target="_blank" href="image/cinemaImage02.jpg">
    <img src="image/cinemaImage02.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">경기</div>
</div>
</div>

<div id="Tokyo" class="tabcontent">
 <div class="gallery">
  <a target="_blank" href="image/cinemaImage03.jpg">
    <img src="image/cinemaImage03.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">인천</div>
</div>
</div>

<div id="Tokyo" class="tabcontent">
 <div class="gallery">
  <a target="_blank" href="img_fjords.jpg">
    <img src="img_fjords.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">인천</div>
</div>
</div>

<div id="Tokyo" class="tabcontent">
 <div class="gallery">
  <a target="_blank" href="img_fjords.jpg">
    <img src="img_fjords.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">Add a description of the image here</div>
</div>
</div>
	

</div>


<div></div>
<div></div>
<div></div>
</body>
</html>