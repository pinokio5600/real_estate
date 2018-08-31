<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>   
   
<!DOCTYPE html>
<html>
	<head>
		<title>뿌르릉</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
		<%@include file="include/common.jsp" %> 
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
										<c:if test="${!empty selUpload}">							                 
	                                        <c:forEach var="imgSrc" items="${selUpload}" varStatus="i">
	                                        	<div class="media">
	                                           		<a href="/share/upload/${imgSrc.upload_src_name}" target="_blank"><img src="/share/upload/${imgSrc.upload_src_name}" alt="" title="골든"/></a>
	                                           	</div>                                           	
	                                        </c:forEach>			                                      
	                                    </c:if>					
									</div>
									<footer>
										<a href="/list" class="button big">전체 보기</a>
									</footer>
								</div>
						</section>
						<!-- 플러스친구 버튼 -->
						<div id="plusfriend-chat-button" style="right: 50px; bottom: 45px; position: fixed;"></div>
						
						<%@include file="include/footer.jsp" %>
				</section>
		</div>
	</body>
	<script type="text/javascript">
		Kakao.init("d7cae200ae086234c4afe8a27217174b");
		Kakao.PlusFriend.createChatButton({
			container:"#plusfriend-chat-button",
			plusFriendId:"_dWdZj"
		});
	</script>
</html>