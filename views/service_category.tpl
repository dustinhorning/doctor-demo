
<!-- Product Page View -->
<section>
	<div class="container">
		
		<div class="product" itemscope="" itemtype="http://schema.org/Product">
			
			<div class="row">
				<div class="col-md-6">
					<div class="team-wrap">
						<h1 itemprop="name">{{page.name}}</h1>
					</div>
				</div>
				<div class="col-md-6">
					<div style="text-align:center">
						<br/>
						{{include social-buttons}}
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="description text-center" itemprop="description">{{page.description}}</div>
				</div>
			</div>
			<hr/>
			<div class="row">
				{{ each products as pro where pro.product_category = {page.zid} sort by pro.sort_order }}
				<div class="col-md-4">
					<a href="{{pro.getUrl()}}" >
						<div class="team-wrap">
							<img src="{{pro.main_image.getImage()}}" class="img-responsive" itemprop="image">
							<hr>
							
							<div class="description" itemprop="description"><p>{{pro.name }}</p></div>
							
							
							<a href="{{pro.getUrl()}}" class="btn btn-primary btn-sm"><span class="fa"></span>  Learn More</a>
						</div>
						
					</a>
					
					
				</div>
				{{ end-each }}
			</div>
		</div>
	</div>
</section>
