<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자(영화관등록)</title>
<link rel="stylesheet" href="theater.css">
<script type="text/javascript" src="https://maps.google.com/maps/api/js?v=3.exp&region=KR"></script>
</head>
<body>
<div class="header">
<h1>영화관 등록</h1>
</div>
	<div class="center">
	<form action="">
		<label for="MovieName">영화관 이름</label>
		<input type="text" id="MovieName" name="MovieName"	placeholder="">
			
		<label for="Comming">전화번호</label>
		<input type="text" id="Comming" name="Comming"	placeholder="">
			
		<label for="md">지역</label>
		<input type="text" id="md" name="md" placeholder="">
			
		<label for="member">영화관 주소</label>
				<input type="text" id="member" name="member" placeholder="">
		
		 <div id="google_map"></div>
  <script>
      var map;
 
      function initialize() {
 
        var mapOptions = { //구글 맵 옵션 설정
            zoom : 16, //기본 확대율
            center : new google.maps.LatLng(37.5651, 126.98955), // 지도 중앙 위치
            scrollwheel : false, //마우스 휠로 확대 축소 사용 여부
            mapTypeControl : false //맵 타입 컨트롤 사용 여부
        };
 
        map = new google.maps.Map(document.getElementById('google_map'), mapOptions); //구글 맵을 사용할 타겟
        
        var image = 'https://cheolguso.com/img/iconimg.png'; //마커 이미지 설정
 
        var marker = new google.maps.Marker({ //마커 설정
            map : map,
            position : map.getCenter(), //마커 위치
            icon : image //마커 이미지
        });
 
        google.maps.event.addDomListener(window, "resize", function() { //리사이즈에 따른 마커 위치
            var center = map.getCenter();
            google.maps.event.trigger(map, "resize");
            map.setCenter(center); 
        });
 
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxMtylloko8_0z9g408v-twicISuY5YPA&callback=initialize" async defer></script>
    <!-- ?key=YOUR_API_KEY  //이곳에 API KEY를 입력합니다. -->
    <!-- callback=initialize // 콜백으로 initialize() 함수가 실행됩니다. -->
			
		<label for="cut">영화관 사진</label>
		<button onclick="myFunction()">이미지 추가</button><br>
			
		
		<label for="lname">상세내용</label><br>	
		<textarea type="text" name="message" rows="10" cols="20">
		찾아오시는 길
		</textarea><br>
		<input type="submit" value="Submit">
	</form>
	</div>
</body>
</html>