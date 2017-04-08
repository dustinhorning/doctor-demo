
<!-- Product Page View -->
<section>
    <div class="container">

		<div class="product" itemscope="" itemtype="http://schema.org/Product">
			<a href="{{ truepath(515) }}" target="_blank" class="btn btn-primary pull-right"><span class="fa {{clippings.fontawesome_icon}}"></span>  Book Now</a>
			<h1 itemprop="name">{{page.name}}</h1>

			<div class="row">
				<div class="col-md-6">
					<div class="team-wrap">
						<img src="{{page.main_image.getImage()}}" class="img-responsive" itemprop="image">
						<div style="text-align:center">
						{{include social-buttons}}
						</div>
						<hr>
				<div class="description" itemprop="specifications">{{page.specs}}</div>


					</div>
				</div>
				<div class="col-md-6">

					<div class="description" itemprop="description">{{page.description}}</div>
					<h2><center><div class="price" itemprop="price">{{page.price}}</div></center></h2>
					<hr>


					<a href="{{ truepath(515) }}" class="btn btn-primary btn-sm"><span class="fa {{clippings.fontawesome_icon}}"></span>  Book Now</a>

				</div>
			</div>
		</div>
    </div>
</section>
