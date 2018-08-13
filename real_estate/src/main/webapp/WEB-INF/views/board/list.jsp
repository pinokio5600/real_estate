<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/common.jsp" %>  
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
						<li><a href="/"><span class="icon fa-home"></span></a></li>
						<li><a href="/list" class="active"><span class="icon fa-camera-retro"></span></a></li>
						<li><a href="generic.html"><span class="icon fa-file-text-o"></span></a></li>
					</ul>
				</nav>

			<!-- Main -->
				<section id="main">

					<!-- Header -->
						<header id="header">
							<div>뿌르릉</div>
						</header>

					<!-- Gallery -->
						<section id="galleries">

							<!-- Photo Galleries -->
								<div class="gallery">

									<!-- Filters -->
										<header>
											<h1>게시글</h1>
											
											
											
											<form id="type" method="post">
													<ul class="tabs">					
														<li><a href="#" data-tag="all" class="button active">전체</a></li>
														<li><a href="#" data-tag="people" class="button">월세</a></li>
														<li><a href="#" data-tag="place" class="button">전세</a></li>
														<li><a href="#" data-tag="thing" class="button">매매</a></li>
													</ul>
													<label for="region">지역 </label>				
													<input type="checkbox" id="region" name="region" value="one" />원미구
													<input type="checkbox" id="region" name="region" value="one" />오정구
													<br/>
													<label for="type">종류 </label>																					
													<input type="checkbox" value="one" id="type" name="one" />원룸
													<input type="checkbox" value="one" id="type" />오피스텔
													<input type="checkbox" value="one" id="type" />아파트
												</form>
										</header>

										<div class="content">
											<div class="media all people">
												<a href="images/fulls/01.jpg"><img src="images/thumbs/01.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all place">
												<a href="images/fulls/05.jpg"><img src="images/thumbs/05.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all thing">
												<a href="images/fulls/09.jpg"><img src="images/thumbs/09.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all people">
												<a href="images/fulls/02.jpg"><img src="images/thumbs/02.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all place">
												<a href="images/fulls/06.jpg"><img src="images/thumbs/06.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all thing">
												<a href="images/fulls/10.jpg"><img src="images/thumbs/10.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all people">
												<a href="images/fulls/03.jpg"><img src="images/thumbs/03.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all place">
												<a href="images/fulls/07.jpg"><img src="images/thumbs/07.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all thing">
												<a href="images/fulls/11.jpg"><img src="images/thumbs/11.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all people">
												<a href="images/fulls/04.jpg"><img src="images/thumbs/04.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all place">
												<a href="images/fulls/08.jpg"><img src="images/thumbs/08.jpg" alt="" title="This right here is a caption." /></a>
											</div>
											<div class="media all thing">
												<a href="images/fulls/12.jpg"><img src="images/thumbs/12.jpg" alt="" title="This right here is a caption." /></a>
											</div>
										</div>
								</div>
						</section>
			<%@include file="../include/footer.jsp" %> 
		</div>
	</body>
</html>