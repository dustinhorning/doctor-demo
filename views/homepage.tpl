<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
<!-- Header -->
<header style="background-image:url('{{page.hero_image.getImage()}}')">
	<div class="slider-container" >
		<!-- Header -->
		<div class="slick-slider-container" >
			<div id="slick-hero"  >
				{{ each homepage_slides as slide sort by slide.sort_order }}
				{{ if {slide.background_video} }}
				<div class=""  >
					<div  data-vide-bg="mp4: {{ slide.background_video.getmediaurl() }}{{if {slide.background_image} }}, poster: {{slide.background_image.getmediaurl()}}{{ end-if }}" data-vide-options="loop: true, muted: true, position: 50% 50%">
						<div class="slide-container">
							<div class="intro-text">
								<h3 class="intro-lead-in">{{slide.title}}</h3>
								<p class="intro-heading">
									{{slide.second_line}}<br/>
									{{ if {slide.button_text} }}
									<a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
									{{ end-if }}
								</p>
							</div>
						</div>
					</div>
				</div>
				{{ else }}
				<div class=""  >
					<div class="slide-container">
						<div class="image-wrap" style="background-image:url('{{slide.background_image.getImage(3000)}}')">
						</div>
						<div class="intro-text">
							<h3 class="intro-lead-in">{{slide.title}}</h3>
							<p class="intro-heading">
								{{slide.second_line}}
								{{ if {slide.button_text} }}
								<a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
								{{ end-if }}
							</p>
						</div>
					</div>
				</div>
				{{ end-if }}
				{{ end-each }}
			</div>
		</div>
	</div>
</header>
<script>
	$('#slick-hero').slick({
				autoplay: true,
				arrows: false,
				fade: false,
				infinite: true,
				slidesToShow: 1,
				adaptiveHeight: true,
				speed: 300,
				dots: true,
				autoplaySpeed: 6750,
				pauseOnHover: false,
				pauseOnFocus: false,
			});
			
			$("video").each(function(){
				$(this).get(0).play();
			});
</script>

{{ include script-bg-video }}
<!-- Portfolio Grid Section -->
<section id="portfolio" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">{{page.social_section_title}}</h2>
				<h4>
					<a class="hashtag-popopen" href="https://twitter.com/home?status=%23{{clippings.global_hashtag.substr(1,100)}} ">
						{{clippings.global_hashtag}}
					</a>
				</h4>
				{{ page.social_feed_embed_raw }}
				
				<br>
			</div>
		</div>
		<div class="row">
			{{each social_feed as social limit 3 order by z.sort}}
			
			{{include social-loop}}
			
			{{end-each}}
			
		</div>
		<div class="row">
			<div class="col-lg-12 text-center">
				<a href="{{truepath(501)}}" class="page-scroll btn btn-xl">{{page.social_section_button_text}}</a>
			</div>
		</div>
	</div>
</section>

<!-- About Section -->
<section id="about">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">{{page.timeline_title}}</h2>
				<h3 class="section-subheading text-muted">{{page.timeline_subtitle}}</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<ul class="timeline">
					{{each homepage_timeline as hptimeline sort by hptimeline.bubble_blurb}}
					{{if {index} % 2 = 0}}
					<li class="timeline-inverted">
						{{else}}
						<li>
							{{end-if}}
							<div class="timeline-image">
								<img class="img-circle img-responsive" src="{{ hptimeline.bubble_image.getImage(400,400,crop)}}" alt="{{timeline.title}} Image">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>{{hptimeline.bubble_title}}</h4>
									<h4 class="subheading">{{hptimeline.bubble_subtitle}}</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">{{hptimeline.bubble_blurb}}</p>
								</div>
							</div>
					</li>
					{{end-each}}
					
					<li class="timeline-inverted">
						<div class="timeline-image">
							<h4>{{page.button_text_3}}</h4>
							<ul class="list-inline social-buttons">
								<li>
									<a class="hashtag-popopen" href="https://www.facebook.com/sharer/sharer.php?">
										<i class="fa fa-facebook"></i>
									</a>
								</li>
								<li>
									<a class="hashtag-popopen" href="https://twitter.com/home?status=%23{{clippings.global_hashtag.substr(1,100)}} ">
										<i class="fa fa-twitter"></i>
									</a>
								</li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<!-- Team Section -->
<section id="team" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">{{page.title4}}</h2>
				<h3 class="section-subheading text-muted">{{page.sub_title4}}</h3>
			</div>
		</div>
		<div class="row">
			{{each individual_testimonials as itest limit 3}}
			<div class="col-sm-4">
				<div class="team-member">
					<a href="{{itest.getUrl()}}">
						<img src="{{itest.image.getImage(500,500,crop)}}" class="img-responsive img-circle" alt="{{itest.name}} image">
					</a>
					<h4><a href="{{itest.getUrl()}}">{{itest.name}}</a></h4>
					<p class="text-muted">{{itest.title}}</p>
					(**<ul class="list-inline social-buttons">
													<li><a href="#"><i class="fa fa-twitter"></i></a>
													</li>
													<li><a href="#"><i class="fa fa-facebook"></i></a>
													</li>
													<li><a href="#"><i class="fa fa-linkedin"></i></a>
													</li>
											</ul>
											**)
					</div>
				</div>
				{{end-each}}
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<a href="{{individual_testimonials.first().getUrl()}}" class="page-scroll btn btn-xl">{{page.button_text_4}}</a>
				</div>
			</div>
		</div>
</section>
