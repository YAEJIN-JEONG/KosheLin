<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript">
	$(document).ready(function() {
		//alert(1);
		$("#navbarTogglerDemo02 li a[href*=about]").parent().addClass("active");
		/*
		$("#navbarTogglerDemo02 li").click(function() {
			$(this).addClass("active");
			alert($(this).text());
		})
		 */
	})
</script>
<!-- inner banner -->
<div class="inner-banner">
	<section class="w3l-breadcrumb">
		<div class="container">
			<h4 class="inner-text-title font-weight-bold text-white mb-sm-3 mb-2">About
				Us</h4>
			<ul class="breadcrumbs-custom-path">
				<li><a href="index.html">Home</a></li>
				<li class="active"><span class="fa fa-chevron-right mx-2"
					aria-hidden="true"></span>About Us</li>
			</ul>
		</div>
	</section>
</div>
<!-- //inner banner -->

<!-- about section -->
<section class="w3l-features-photo-7 py-5">
	<div class="container py-md-5 py-4">
		<div class="row w3l-features-photo-7_top align-items-start">
			<div class="col-lg-6 w3l-features-photo-7_top-right mt-lg-0 mt-sm-5 mt-4">
				<img src="assets/images/blog1.jpg" class="img-responsive" alt="" />
				
			<!-- 	<div style="float: left; width: 25%">
					<img src="assets/images/blog1.jpg" class="img-responsive" alt="" />
				</div>
				<div style="float: left; width: 25%">
					<img src="assets/images/blog1.jpg" class="img-responsive" alt="" />
				</div>
				<div style="float: left; width: 25%">
					<img src="assets/images/blog1.jpg" class="img-responsive" alt="" />
				</div>
				<div style="float: left; width: 25%">
					<img src="assets/images/blog1.jpg" class="img-responsive" alt="" />
				</div> -->
				
			</div>
			<div class="col-lg-6 w3l-features-photo-7_top-left pl-lg-4">
				<div class="waviy">
					<span style="-i: 1">B</span>
					<span style="-i: 2">e</span> 
					<span style="-i: 3">s</span> 
					<span style="-i: 4">t</span> 
					<span style="-i: 5"></span>
					<span style="-i: 6">P</span> 
					<span style="-i: 7">i</span>
					<span style="-i: 8">c</span>
					<span style="-i: 9">k</span>
				</div>
				<div class="d-flex align-items-center mt-3">
                	<h6 style="font-size: 20px;"><i class="fa fa-clock-o mr-1" aria-hidden="true"></i> 7:00 pm - 8:00 pm</h6>
                    <h6 class="ml-5" style="font-size: 20px;"><i class="fa fa-calendar mr-2" aria-hidden="true"></i>Dec 31</h6>
                </div>
				<p class="pt-lg-4" style="font-weight: bold; font-size: 25px;" align="justify">신라호텔 출신 쉐프가 운영하는 이탈리안 연남동 맛집</p>
				<p style="font-size: 15px; font-weight: bold;">이탈리아 || 신사</p>
				<div class="row feat_top">
					<div class="col-auto w3l-features-photo-8-box pt-lg-4">
						<img src="assets/images/별.png" alt="" class="img-fluid pt-5 pb-5 pr-sm-0">
						<!-- <p>In a diam et dui, orci urna. Donec sed tempus enims.</p> -->
					</div>
					<span style="margin-top: 32px; font-size: 30px; color: orange">4.8</span>
					<span style="margin-top: 45px; font-size: 15px">(10)</span>
				</div>
				<div class="row feat_top">
					<div class="col-auto w3l-features-photo-9-box">
						<img src="assets/images/해.png" alt="" class="img-fluid">
					</div>
					<span style="margin-top: 5px; font-size: 15px" >점심3만원</span>
					<div class="col-auto w3l-features-photo-9-box">
						<img src="assets/images/달.png" alt="" class="img-fluid">
					</div>
					<span class="mb-5" style="margin-top: 5px; font-size: 15px">저녁7만원</span>
				</div>
				<a href="/member/doReservation" class="btn btn-style mt-5 ml-5">예약하러 가기</a>
			</div>
		</div>
	</div>
</section>
<!-- //about section -->

<!----------------------------------------------------------------------- 리뷰 쓰는지역(위아래) ----------------------------------------------------------------------->
<section class="w3l-blog-single">
<div class="single blog py-5">
	<div class="container py-md-5 py-4">
		
		<div class="testi-top mt-5 pt-4">
        	<h3 class="post-content-title">Leave a review</h3>
            <div class="form-commets mt-4">
            	<!-- ----------------------------리뷰 작성 폼---------------------------- -->
            	<form action="registerReview" method="post">
            	<sec:csrfInput/>
                	<div class="media-form">
                    	<input type="hidden" name="id" value="${mvo.id }">
                        <input type="text" name="title" required="required" placeholder="Title">
					</div>
                    <textarea name="message" required="required" placeholder="Write your comments here"></textarea>
                    <div class="text-right">
                    	<button class="btn btn-primary btn-style" type="submit">Post review</button>
					</div>
				</form>
            </div>
		</div>
		<!-- -------------------------------------------------------------------------------------- -->
		<!-- ----------------------------리뷰 작성된거 보는 곳---------------------------- -->
		
		<div class="comments">
			<h3 class="post-content-title">Review</h3>
				<div class="media mt-4 bod-1">
                	<div class="img-circle">
                    	<img src="assets/images/team1.jpg" class="img-fluid" alt="...">
                    </div>
                    <div class="media-body">
                    	<div class="medi-top mb-2">
                        	<a href="#URL" class="name mt-0">${reviewVO.memberVO.id }</a>
                            <span>${reviewVO.reviewRegdate }</span>
                        </div>
                        <p>${reviewVO.reviewContent }</p>
                        <a href="#reply" class="rep mt-3">Reply</a>
                        <div class="media mt-4 bod-2 mb-0 pb-0 px-0">
                        	<a class="img-circle img-circle-sm" href="#">
                            	<img src="assets/images/team2.jpg" class="img-fluid" alt="...">
                            </a>
                        	<div class="media-body">
                            	<div class="medi-top mb-2">
                                	<a href="#URL" class="name mt-0">Alexander</a>
                                    <span>13 Jan, 2021 </span>
                                </div>
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque
                                ante sollicitudin. Cras purus odio, vestibulum at.</p>
                                <a href="#reply" class="rep mt-3">Reply</a>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                
                
				<c:forEach var="list" items="${requestScope.list }">
				<div class="media bod-3">
                	<div class="img-circle">
                    	<img src="assets/images/team3.jpg" class="img-fluid" alt="...">
                    </div>
                    <div class="media-body">
                    	<div class="medi-top mb-2">
                        	<a href="#URL" class="name mt-0">${list.smVO.name}</a>
                        	<span>14 Jan, 2021 </span>
                        </div>
                        <p>${list.content }</p>
                        <a href="#reply" class="rep mt-3">Reply</a>
                    </div>
               </div>
               </c:forEach>
               </div>
               
        
        <%-- 페이징 처리 --%>
		<c:set var="pb" value="${requestScope.pagingBean}"></c:set>
		<div class="pagination-style text-center mt-5 pt-5">
			<ul>
			<c:if test="${pb.previousPageGroup}">
			<li><a disabled="" class="not-allowed" href="about?pageNo=${pb.startPageOfPageGroup-1}">&laquo;</a></li>
			</c:if>
				<c:forEach var="page" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
				<c:choose>
					<c:when test="${pb.nowPage==page}">
					<li ><a class="active" href="about?pageNo=${page}">${page}</a></li>
					</c:when>
					<c:otherwise>
					<li><a href="about?pageNo=${page}">${page}</a></li>
					</c:otherwise>
				</c:choose>		
				</c:forEach>
			<c:if test="${pb.nextPageGroup}">
			<li><a href="about?pageNo=${pb.endPageOfPageGroup+1}">&raquo;</a></li>
			</c:if>	
			</ul>
		</div>
     	<!-- pagination -->
		<!-- ------------------------------------------------------------------------------------- -->
	</div>
</div>
</section>
<!--------------------------------------------------------------------------------------------------------------------------------------------------------------->

<!-- popular section -->
<section class="w3l-grids1">
	<div class="hny-three-grids py-5">
		<div class="container py-md-5 py-4">
			<h3 class="title-style text-center mb-md-5 mb-4">We are popular
				in</h3>
			<div class="row">
				<div class="col-md-4 col-sm-6 mt-0 grids5-info">
					<a href="#url"><img src="assets/images/p2.jpg"
						class="img-fluid" alt=""></a>
					<h5>Happy</h5>
					<h4>
						<a href="#url">Food & Drinks</a>
					</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Veniam esse? dolores impedit doloremque.</p>
				</div>
				<div class="col-md-4 col-sm-6 mt-sm-0 mt-5 grids5-info">
					<a href="#url"><img src="assets/images/p3.jpg"
						class="img-fluid" alt=""></a>
					<h5>Love</h5>
					<h4>
						<a href="#url">Fireworks</a>
					</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Veniam esse? dolores impedit doloremque.</p>
				</div>
				<div class="col-md-4 col-sm-6 mt-md-0 mt-5 grids5-info">
					<a href="#url"><img src="assets/images/p1.jpg"
						class="img-fluid" alt=""></a>
					<h5>Events</h5>
					<h4>
						<a href="#url">Party Celebrations</a>
					</h4>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Veniam esse? dolores impedit doloremque.</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //popular section -->

<!-- team sections -->
<section class="w3l-team-main" id="team">
	<div class="team py-5">
		<div class="container py-md-5 py-4">
			<div class="waviy white-text text-center mb-sm-5 mb-4">
				<span style="-i: 1">O</span> <span style="-i: 2">u</span> <span
					style="-i: 3">r</span> <span style="-i: 4"></span> <span
					style="-i: 5">T</span> <span style="-i: 6">e</span> <span
					style="-i: 7">a</span> <span style="-i: 8">m</span> <span
					style="-i: 9"></span> <span style="-i: 10">M</span> <span
					style="-i: 11">e</span> <span style="-i: 12">m</span> <span
					style="-i: 13">b</span> <span style="-i: 14">e</span> <span
					style="-i: 15">r</span> <span style="-i: 16">s</span>
			</div>
			<!-- fireworks effect -->
			<div class="pyro">
				<div class="before"></div>
				<div class="after"></div>
			</div>
			<div class="row team-row mt-md-5 mt-4">
				<div class="col-lg-3 col-6 team-wrap">
					<div class="team-member text-center">
						<div class="team-img">
							<img src="assets/images/team1.jpg" alt="" class="radius-image">
						</div>
						<a href="#url" class="team-title">Lyn Victor</a>
						<div class="team-details text-center">
							<div class="socials mt-20">
								<a href="#url"> <span class="fa fa-facebook-f"></span>
								</a> <a href="#url"> <span class="fa fa-twitter"></span>
								</a> <a href="#url"> <span class="fa fa-instagram"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- end team member -->
				<div class="col-lg-3 col-6 team-wrap">
					<div class="team-member text-center">
						<div class="team-img">
							<img src="assets/images/team2.jpg" alt="" class="radius-image">
						</div>
						<a href="#url" class="team-title">Meyer Lson</a>
						<div class="team-details text-center">
							<div class="socials mt-20">
								<a href="#url"> <span class="fa fa-facebook-f"></span>
								</a> <a href="#url"> <span class="fa fa-twitter"></span>
								</a> <a href="#url"> <span class="fa fa-instagram"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- end team member -->
				<div class="col-lg-3 col-6 team-wrap mt-lg-0 mt-5">
					<div class="team-member last text-center">
						<div class="team-img">
							<img src="assets/images/team3.jpg" alt="" class="radius-image">
						</div>
						<a href="#url" class="team-title">Lyn Meyer</a>
						<div class="team-details text-center">
							<div class="socials mt-20">
								<a href="#url"> <span class="fa fa-facebook-f"></span>
								</a> <a href="#url"> <span class="fa fa-twitter"></span>
								</a> <a href="#url"> <span class="fa fa-instagram"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- end team member -->
				<div class="col-lg-3 col-6 team-wrap mt-lg-0 mt-5">
					<div class="team-member last text-center">
						<div class="team-img">
							<img src="assets/images/team4.jpg" alt="" class="radius-image">
						</div>
						<a href="#url" class="team-title">Sam Mills</a>
						<div class="team-details text-center">
							<div class="socials mt-20">
								<a href="#url"> <span class="fa fa-facebook-f"></span>
								</a> <a href="#url"> <span class="fa fa-twitter"></span>
								</a> <a href="#url"> <span class="fa fa-instagram"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- end team member -->
			</div>
		</div>
	</div>
</section>
<!-- //team sections -->

<!-- testimonials -->
<section class="w3l-clients-1" id="testimonials">
	<div class="cusrtomer-layout py-5">
		<div class="container py-md-5 py-4">
			<div class="waviy text-center mb-sm-5 mb-4">
				<span style="-i: 1">W</span> <span style="-i: 2">h</span> <span
					style="-i: 3">a</span> <span style="-i: 4">t</span> <span
					style="-i: 5"></span> <span style="-i: 6">P</span> <span
					style="-i: 7">e</span> <span style="-i: 8">o</span> <span
					style="-i: 1">p</span> <span style="-i: 2">l</span> <span
					style="-i: 3">e</span> <span style="-i: 4"></span> <span
					style="-i: 5">S</span> <span style="-i: 6">a</span> <span
					style="-i: 7">y</span>
			</div>
			<div class="testimonial-row">
				<div id="owl-demo2"
					class="owl-two owl-carousel owl-theme mb-md-3 mb-sm-5 mb-4">
					<div class="item">
						<div class="testimonial-content">
							<div class="testimonial">
								<blockquote>
									<q>Lorem ipsum dolor sit amet int consectetur adipisicing
										elit. Velita beatae laudantium Quas minima sunt natus tempore,
										maiores aliquid modi felis vitae facere aperiam sequi optio
										lacinia id ipsum non velit, culpa. voluptate rem ullam dolore
										nisi est quasi, doloribus tempora. est elit. Non quae, fugiat
										ad libero justo sed amet.</q>
								</blockquote>
								<div class="testi-des">
									<a href="#url" class="testi-img"> <img
										src="assets/images/testi1.jpg" alt=""
										class="radius-image img-fluid">
									</a>
									<div class="peopl align-self">
										<h3>Dennis wilson</h3>
										<p class="identity">Customer</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonial-content">
							<div class="testimonial">
								<blockquote>
									<q>Lorem ipsum dolor sit amet int consectetur adipisicing
										elit. Velita beatae laudantium Quas minima sunt natus tempore,
										maiores aliquid modi felis vitae facere aperiam sequi optio
										lacinia id ipsum non velit, culpa. voluptate rem ullam dolore
										nisi est quasi, doloribus tempora. est elit. Non quae, fugiat
										ad libero justo sed amet.</q>
								</blockquote>
								<div class="testi-des">
									<a href="#url" class="testi-img"> <img
										src="assets/images/testi2.jpg" alt=""
										class="radius-image img-fluid">
									</a>
									<div class="peopl align-self">
										<h3>Tommy sakura</h3>
										<p class="identity">Customer</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonial-content">
							<div class="testimonial">
								<blockquote>
									<q>Lorem ipsum dolor sit amet int consectetur adipisicing
										elit. Velita beatae laudantium Quas minima sunt natus tempore,
										maiores aliquid modi felis vitae facere aperiam sequi optio
										lacinia id ipsum non velit, culpa. voluptate rem ullam dolore
										nisi est quasi, doloribus tempora. est elit. Non quae, fugiat
										ad libero justo sed amet.</q>
								</blockquote>
								<div class="testi-des">
									<a href="#url" class="testi-img"> <img
										src="assets/images/testi3.jpg" alt=""
										class="radius-image img-fluid">
									</a>
									<div class="peopl align-self">
										<h3>Roy Linderson</h3>
										<p class="identity">Customer</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonial-content">
							<div class="testimonial">
								<blockquote>
									<q>Lorem ipsum dolor sit amet int consectetur adipisicing
										elit. Velita beatae laudantium Quas minima sunt natus tempore,
										maiores aliquid modi felis vitae facere aperiam sequi optio
										lacinia id ipsum non velit, culpa. voluptate rem ullam dolore
										nisi est quasi, doloribus tempora. est elit. Non quae, fugiat
										ad libero justo sed amet.</q>
								</blockquote>
								<div class="testi-des">
									<a href="#url" class="testi-img"> <img
										src="assets/images/testi2.jpg" alt=""
										class="radius-image img-fluid">
									</a>
									<div class="peopl align-self">
										<h3>Mike Thyson</h3>
										<p class="identity">Customer</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //testimonials -->

<!-- call section -->
<section class="w3l-call-to-action-6">
	<div class="call-sec-style py-5">
		<div class="container py-md-4 py-3">
			<div class="row align-items-center">
				<div class="col-md-5 col-float-lt">
					<h3 class="title-big">Register now !</h3>
					<p>Wanna Join in, please call us today</p>
				</div>
				<div
					class="col-md-7 float-rt text-md-right align-items-center mt-md-0 mt-4">
					<ul class="buttons">
						<li class="phone-sec"><span
							class="fa fa-volume-control-phone mr-1" aria-hidden="true"></span>
							<a class="call-style-w3" href="tel:+1(23) 456 789 0000">+1(23)
								456 789 0000</a></li>
						<li class="green">Or</li>
						<li><a href="contact.html" class="btn btn-style">Get in
								touch</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //call section -->




<!----------------------------------------------------------------------- 리뷰 쓰는지역(양옆) ----------------------------------------------------------------------->

<!-- <section class="w3l-blog-single">
<div class="testi-top mt-5 pt-4 float-left">
<h3 class="post-content-title">Leave a message</h3>
	<div class="form-commets mt-4">
		<form action="#" method="post">
			<div class="media-form">
				<input type="text" name="Name" required="required" placeholder="Your Name">
				<input type="email" name="Email" required="re" placeholder="Your Email">
			</div>
			<textarea name="Message" required="required" placeholder="Write your comments here"></textarea>
			<div class="text-right">
				<button class="btn btn-primary btn-style" type="submit">Post comment</button>
			</div>
		</form>
	</div>
</div>
<div class="single-left">
<div class="comments2 mt-5 pt-4">
	<h3 class="post-content-title">Comments</h3>
	<div class="media mt-4 bod-1">
	<div class="media-body">
	
		<div class="medi-top mb-2">
			<a href="#URL" class="name mt-3">이름</a>
				<span>날짜</span>
		</div>
		<p align="justify">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
		내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용 p태그 상위에 jstl로 반복문 돌려서 리뷰내용 갖고온다</p>
		<!-- <a href="#reply" class="rep mt-1">Reply</a> -->
		<!-- ----------------------여기서 주석이 위아래로 두개로 나뉨-------------------------- -->
		<!--
		<div class="medi-top mb-2">
			<a href="#URL" class="name mt-3">상관없조</a>
				<span>06 Jan, 2021 </span>
		</div>
		<p align="justify">문장 정렬이 됐으면 좋겠다문장 정렬이 됐으면 좋겠다문장 정렬이 됐으면 좋겠다문장 정렬이 됐으면 좋겠다
		문장 정렬이 됐으면 좋겠다문장문장 정렬이 됐으면 좋겠다문장 정렬이 됐으면 좋겠다</p>
		<a href="#reply" class="rep mt-1">Reply</a>
		
		<div class="medi-top mb-2">
			<a href="#URL" class="name mt-3">야호~~~~</a>
				<span>06 Jan, 2021 </span>
		</div>
		<p align="justify">문장 정렬이 됐으면 좋겠다문장 정렬이 됐으면 좋겠다문장 정렬이 됐으면 좋겠다문장 정렬이 됐으면 좋겠다
		문장 정렬이 됐으면 좋겠다문장문장 정렬이 됐으면 좋겠다문장 정렬이 됐으면 좋겠다</p>
		<a href="#reply" class="rep mt-1">Reply</a>
		
	</div>
	</div>
</div>
</div>
</section>
 -->
<!-------------------------------------------------------------------------------------------------------------------------------------------------------->