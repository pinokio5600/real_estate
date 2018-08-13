<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="include/common.jsp" %>    
<!DOCTYPE html>
<html>
	<head>
		<title>뿌르릉</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
	</head>
	<body>
		<div class="page-wrap">

			<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="/" class="active"><span class="icon fa-home"></span></a></li>
						<li><a href="/list"><span class="icon fa-camera-retro"></span></a></li>
						<li><a href="generic.html"><span class="icon fa-file-text-o"></span></a></li>
					</ul>
				</nav>

			<!-- Main -->
				<section id="main">

					<!-- Banner -->
						<section id="banner">
							<div class="inner">
								<h1>뿌르릉</h1>
								<p>환영합니다.</p>
								<ul class="actions">
									<li><a href="#galleries" class="button alt scrolly big">Continue</a></li>
								</ul>
							</div>
						</section>

					<!-- Gallery -->
						<section id="galleries">
							<!-- Photo Galleries -->
								<div class="gallery">
									<header class="special">
										<h2>새로 올라온 글</h2>
									</header>
									<div class="content">
										<div class="media">
											<a href="images/fulls/01.jpg"><img src="images/thumbs/01.jpg" alt="" title="This right here is a caption." /></a>
										</div>
										<div class="media">
											<a href="images/fulls/05.jpg"><img src="images/thumbs/05.jpg" alt="" title="This right here is a caption." /></a>
										</div>
										<div class="media">
											<a href="images/fulls/09.jpg"><img src="images/thumbs/09.jpg" alt="" title="This right here is a caption." /></a>
										</div>
										<div class="media">
											<a href="images/fulls/02.jpg"><img src="images/thumbs/02.jpg" alt="" title="This right here is a caption." /></a>
										</div>
										<div class="media">
											<a href="images/fulls/06.jpg"><img src="images/thumbs/06.jpg" alt="" title="This right here is a caption." /></a>
										</div>
										<div class="media">
											<a href="images/fulls/10.jpg"><img src="images/thumbs/10.jpg" alt="" title="This right here is a caption." /></a>
										</div>
										<div class="media">
											<a href="images/fulls/03.jpg"><img src="images/thumbs/03.jpg" alt="" title="This right here is a caption." /></a>
										</div>
										<div class="media">
											<a href="images/fulls/07.jpg"><img src="images/thumbs/07.jpg" alt="" title="This right here is a caption." /></a>
										</div>
									</div>
									<footer>
										<a href="/list" class="button big">전체 보기</a>
									</footer>
								</div>
						</section>

<%@include file="include/footer.jsp" %>    						

						
				</section>
		</div>
	</body>
</html>