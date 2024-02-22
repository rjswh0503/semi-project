<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>����</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="website.css">

<style>
@import url('https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap');
.top10 {
	margin-left: 12%;
	margin-right: 15%;
	width: 75%;
	height: 500px;
	margin-bottom: 25px;
	flex-wrap: wrap;

}

img {
	
	margin-top: 30px;
	border-radius: 20px;
	filter: drop-shadow(10px 8px 8px #c3c3c3);
	

}




.mainImage {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    margin-top: 100px;
    margin-bottom: 80px;
    margin-left: 15%;
    
}

.mainImage a {
    flex: 0 0 40%; /* Adjust the width of each image container */
    margin: 10px; /* Add some margin to provide space between images */
}

.mainImage img {
    width: 300px;
    height: 300px;
    border-radius: 20px;
    right:15%;
}

.main_logo {
	color:  #EE9CA7;
	text-decoration-line: none;
	font-size: 80px;
	margin-left: 10%;
	font-family: 'Bagel Fat One', sans-serif;
	text-shadow: 5px 5px 20px #EE9CA7;
}





#dropdownBtn {
	position: relative;
	margin-left: 50%;
	background-color: #EE9CA7;
	color: #fff;
	border: none;
    padding: 10px 30px;
    border-radius: 50px;
    width:170px;
    font-size: 16px;
    font-weight: 600;
	background-size: 290% 100%;
	
	moz-transition: all .4s ease-in-out;
	-o-transtion: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
	
	background-image: linear-gradient(to right, #ed6ea0,#ec8c69, #f7186a , #FBB03B);
	box-shadow: 0 4px 15px 0 rgba(236,116,149,0.75);
	left: 13%;
	
}


#dropdownBtn:hover {
	background-position: 100% 0;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
	
}


#dropdownBtn:focus {
	outline: none;
}





#dropdownContent {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 150px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	border-radius: 20px;
}

#dropdownContent a {
	color: black;
	padding: 16px 16px;
	text-decoration: none;
	display: block;

	
}

#dropdownContent a:hover {
	background-color: #EE9CA7;
	color: white;
	border-radius: 20px;
}


.info {
	margin-left: 10%;
	margin-right: 10%;
}

.category_img {
	width: 500px;
	height: 300px;
}

#topMenu {
	padding: 20px;

	

}
#topMenu ul {
	
    display: flex;
    list-style: none;
    padding: 0;
    margin-bottom: 30px;

    
    
}

#topMenu li {
    margin-right: 0px;
    
   
    
}

.submenu,
.submenu2,
.submenu3 {
     display: flex;
    flex-direction: row; 
    position: absolute;
    top: 95%;
    left: 0;
    z-index: 1;
    display: none;
}

.submenu li,
.submenu2 li,
.submenu3 li {
    margin: 0.5px;
}

#topMenu li:hover .submenu,
#topMenu li:hover .submenu2,
#topMenu li:hover .submenu3 {
    display: flex;
    
}


h2 {
	text-align: center;
	margin-top: 100px;
	color: #EE9CA7;
	font-size: 100px;
	text-shadow: 5px 5px 25px #EE9CA7; 
	font-family: 'Bagel Fat One', sans-serif;
	
	
}

p {
 margin-right: 50%;
color: #EE9CA7;
	font-size: 30px;
	text-shadow: 5px 5px 25px #EE9CA7; 
	font-family: 'Bagel Fat One', sans-serif;
}









</style>


<body>
	<form action="LoginServlet" method="post">
        <input type="hidden" name="formAction" value="userInfoForm">
	
		<a href="mainpage.jsp" class="main_logo">
			<h1 style="display: inline-block;">
				<span class="main_title2">������</span>
			</h1>
		</a> 
		<%
		String loggedIn = (String) session.getAttribute("user_id");
		%>

		<button type="button" id="dropdownBtn">
			<span>������</span>
			<div id="dropdownContent" style="display: none;">
				<a href="mainpage.jsp">����������</a>

				<%
				if (loggedIn != null && !loggedIn.isEmpty()) {
				%>
				<a href="myPage/user-info.jsp">����������</a>
				<%
				}
				%>
				<div id="citiesDropdown">
					<a href="#">���� ����</a>
					<div id="citiesContent" style="display: none;">
						
					</div>
				</div>
				<%
				loggedIn = (String) session.getAttribute("user_id");

				if (loggedIn != null && !loggedIn.isEmpty()) {
				%>
				<a href="LoginServlet">�α׾ƿ�</a>
				<%
				} else {
				%>
				<a href="login.jsp">�α���</a>
				<%
				}
				%>
			
		</button>
		

		<div id="imageSlider">
			<a href=""><img src="./Image/1.jpg" class="top10"
				alt=""></a> <a href=""><img
				src="./Image/2.jpg" class="top10" alt=""></a>
			<a href=""><img src="./Image/4.jpg" class="top10"
				alt=""></a> <a href=""><img
				src="./Image/4.jpg" class="top10" alt=""></a> 
				
		</div>
		<!-- Navbar End -->



		<!-- Header Start -->



		<!-- Header End -->



		<!-- Booking Start -->
		<nav id="topMenu">
			<ul>
				<li class="Menu"><a class="menuLink" href="">������</a>
					<ul class="submenu">
						<li><a href="./city/Sapporo/spot/SapporoTourList.jsp" class="sub">������</a></li>
						<li><a href="./city/Sapporo/res/SapporoResList.jsp" class="sub">����</a></li>
						<li><a href="./city/Sapporo/acc/SapporoAccList.jsp" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink" href="">����</a>
					<ul class="submenu">
						<li><a href="./city/Tokyo/spot/TokyoTourList.jsp" class="sub">������</a></li>
						<li><a href="./city/Tokyo/res/TokyoResList.jsp" class="sub">����</a></li>
						<li><a href="./city/Tokyo/acc/TokyoAccList.jsp" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink" href="">�����ī</a>
					<ul class="submenu">
						<li><a href="./city/Shizuoka/spot/ShizuokaTourList.jsp" class="sub">������</a></li>
						<li><a href="./city/Shizuoka/res/ShizuokaResList.jsp" class="sub">����</a></li>
						<li><a href="./city/Shizuoka/acc/ShizuokaAccList.jsp" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">�����</a>
					<ul class="submenu2">
						<li><a href="./city/Nagoya/spot/NagoyaTourList.jsp" class="sub">������</a></li>
						<li><a href="./city/Nagoya/res/NagoyaResList.jsp" class="sub">����</a></li>
						<li><a href="./city/Nagoya/acc/NagoyaAccList.jsp" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">����</a>
					<ul class="submenu2">
						<li><a href="./city/Kyoto/spot/KyotoTourList.jsp" class="sub">������</a></li>
						<li><a href="./city/Kyoto/res/KyotoResList.jsp" class="sub">����</a></li>
						<li><a href="./city/Kyoto/acc/KyotoAccList.jsp" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">����ī</a>
					<ul class="submenu2">
						<li><a href="./city/Osaka/spot/OsakaTourList.jsp" class="sub">������</a></li>
						<li><a href="./city/Osaka/res/OsakaResList.jsp" class="sub">����</a></li>
						<li><a href="./city/Osaka/acc/OsakaAccList.jsp" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">�����ī</a>
					<ul class="submenu3">
						<li><a href="./city/Fukuoka/spot/FukuokaTourList.jsp" class="sub">������</a></li>
						<li><a href="./city/Fukuoka/res/FukuokaResList.jsp" class="sub">����</a></li>
						<li><a href="./city/Fukuoka/acc/FukuokaAccList.jsp" class="sub">����</a></li>
					</ul></li>

				<li class="Menu"><a class="menuLink">������Ű</a>
					<ul class="submenu3">
						<li><a href="./city/Nagasaki/spot/NagasakiTourList.jsp" class="sub">������</a></li>
						<li><a href="./city/Nagasaki/res/NagasakiResList.jsp" class="sub">����</a></li>
						<li><a href="./city/Nagasaki/acc/NagasakiAccList.jsp" class="sub">����</a></li>
					</ul></li>
					
					<li class="Menu"><a href="./board/boardList.jsp" class="menuLink">�����Խ���</a>
					</li>


			</ul>
		</nav>


<div class="text">
			

		<h2>������</h2>


</div>


		<!-- Blog Start -->
		
		
	<div class="mainImage">	
		<a href="webDetail.jsp"><p style="text-align: center;">��Ÿ�����</p> <img src="./Image/1.jpg" class="top10"
				alt=""></a> <a href="#"><p style="text-align: center;">����������</p><img
				src="./Image/2.jpg" class="top10" alt=""></a>
			<a href=""><p style="text-align: center;">�÷������̺��� ��ũ</p><img src="./Image/4.jpg" class="top10"
				alt=""></a> <a href="#"><p style="text-align: center;">Ȫī�̵� �ű�</p><img
				src="./Image/5.jpg" class="top10" alt=""></a> 
		
	</div>
	
	
	
		<script>
			var dropdownBtn = document.getElementById("dropdownBtn");
			var dropdownContent = document.getElementById("dropdownContent");

			dropdownBtn.addEventListener("click", function() {
				if (dropdownContent.style.display === "none"
						|| dropdownContent.style.display === "") {
					dropdownContent.style.display = "block";
				} else {
					dropdownContent.style.display = "none";
				}
			});

			document.addEventListener("click", function(event) {
				if (event.target !== dropdownBtn
						&& event.target !== dropdownContent) {
					dropdownContent.style.display = "none";
				}
			});

			let slideIndex = 0;
			const images = document.querySelectorAll('#imageSlider img');

			function showSlides() {
				for (let i = 0; i < images.length; i++) {
					images[i].style.display = 'none';
				}
				slideIndex++;
				if (slideIndex > images.length) {
					slideIndex = 1;
				}
				images[slideIndex - 1].style.display = 'block';
				setTimeout(showSlides, 3000); 
			}

			showSlides(); 
			
		
		
		</script>
	</form>

</body>
</html>