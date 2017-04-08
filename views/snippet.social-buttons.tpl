<div class="mn-social-bottom-c">
	<a class="social-button mn-social-bottom" href="https://www.facebook.com/sharer/sharer.php?t=%23{{clippings.global_hashtag.substr(1,100)}}&u="><i class="fa fa-facebook"></i></a>
	<a class="social-button mn-social-bottom" href="https://twitter.com/home?status=%23{{clippings.global_hashtag.substr(1,100)}} "><i class="fa fa-twitter"></i></a>
	<a class="social-button mn-social-bottom" href="https://www.linkedin.com/shareArticle?mini=true&url="><i class="fa fa-linkedin"></i></a>
	<a class="social-button mn-social-bottom" href="https://pinterest.com/pin/create/link/?url="><i class="fa fa-pinterest-p"></i></a>
	<a class="email-button mn-social-bottom" href="mailto:?subject='{{page.seo_link_title}}'&body="><i class="fa fa-envelope"></i></a>
	<div id="mn-social-bottom-hidden">
		<a class="social-button mn-social-bottom" href="http://www.stumbleupon.com/submit?url="><i class="fa fa-tumblr"></i></a>
		<a class="social-button mn-social-bottom" href="https://getpocket.com/save?url="><i class="fa fa-get-pocket"></i></a>
		<a class="social-button mn-social-bottom" href="http://www.stumbleupon.com/submit?url="><i class="fa fa-stumbleupon"></i></a>
		<a class="social-button mn-social-bottom" href="http://www.reddit.com/submit?url="><i class="fa fa-reddit"></i></a>
		<a class="social-button mn-social-bottom" href="https://plus.google.com/share?url="><i class="fa fa-google-plus"></i></a>		
		<a class="social-button mn-social-bottom"><i class="fa fa-delicious"></i></a>
	</div>
</div>
<script>
	
	$('.social-button').click(function(){	window.open($(this).attr('href')+window.location,'targetWindow','toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=400,height=300');
		return false;
	});
	
	$('.email-button').click(function(){			
		$(this).attr('href',$(this).attr('href')+window.location);
	});
	
</script>