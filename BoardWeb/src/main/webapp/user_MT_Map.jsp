<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화관 위치</title>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
      function initialize() {
        var mapLocation = new google.maps.LatLng('36.322473', '127.412501'); // 지도에서 가운데로 위치할 위도와 경도
        var markLocation = new google.maps.LatLng('36.322473', '127.412501'); // 마커가 위치할 위도와 경도
         
        var mapOptions = {
          center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
          zoom: 18, // 지도 zoom단계
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
            mapOptions);
         
        var size_x = 60; // 마커로 사용할 이미지의 가로 크기
        var size_y = 60; // 마커로 사용할 이미지의 세로 크기
         
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                            new google.maps.Size(size_x, size_y),
                            '',
                            '',
                            new google.maps.Size(size_x, size_y));
         
        var marker;
        marker = new google.maps.Marker({
               position: markLocation, // 마커가 위치할 위도와 경도(변수)
               map: map,
               icon: image, // 마커로 사용할 이미지(변수)
//             info: '말풍선 안에 들어갈 내용',
               title: '서대전네거리역이지롱~' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
        });
         
        var content = "이곳은 서대전네거리역이다! <br/> 지하철 타러 가자~"; // 말풍선 안에 들어갈 내용
         
        // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
        var infowindow = new google.maps.InfoWindow({ content: content});
 
        google.maps.event.addListener(marker, "click", function() {
            infowindow.open(map,marker);
        });
         
 
         
      }
      google.maps.event.addDomListener(window, 'load', initialize);
</script>
<link rel="stylesheet" type="text/css" href="user_Style.css">
</head>
<body>
<div class="my_m">
	<h1>영화관 위치</h1>
	<hr>
 <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: 37.562155, lng: 127.035223};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 20,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxMtylloko8_0z9g408v-twicISuY5YPA&callback=initMap">
    </script>
<div>
<h3>찾아 오시는길</h3>
</div>
<div>
	<p>
	지하철
4호선 / 경의중앙선(문산-용문)

이촌역 2번출구 방향 '박물관 나들길'⇔박물관 서문
이촌역 2번출구⇔박물관 서문
※ 엘리베이터 이용안내 : 이촌역 1번출구, 이촌역 2번출구 방향 '박물관 나들길' 에 위치
기타 노선

1호선 : 용산역 하차 -> 경의중앙선 환승 -> 이촌역 하차
3호선 : 옥수역 하차 -> 경의중앙선 환승 -> 이촌역 하차
6호선 : 삼각지역 환승 -> 이촌역 하차
7호선 : 총신대입구(이수)역 환승 -> 이촌역 하차
9호선 : 동작역 환승 -> 이촌역 하차
박물관 나들길(국립중앙박물관 이촌역 지하보도) 이용안내

나들길 개방시간
- 월,화,목,금요일(평일) : 07:00 ~ 19:00
- 수,토요일(야간 개장일) : 07:00 ~ 22:00
- 일요일,공휴일 : 07:00 ~ 20:00
	</p>
</div>
</div>

<div></div>
<div></div>
<div></div>
</body>
</html>