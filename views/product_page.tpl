
<!-- Generic Page View -->
<section>
    <div class="container">

		<div class="product-page">
			<h1 itemprop="name headline">{{page.title}}</h1>
			<div itemprop="text">{{page.description}}</div>
			<div class="products">
				<div class="row">
				{{each products as product}}
					<div class="col-md-4 col-sm-6 portfolio-item" temscope="" itemtype="http://schema.org/Person">
						<a href="{{product.getUrl()}}" class="portfolio-link">
	                        <div class="portfolio-hover">
	                            <div class="portfolio-hover-content">
	                                <i class="fa fa-plus fa-3x"></i>
	                            </div>
	                        </div>
							<img itemprop="image" src="{{product.main_image.getImage(600,600,crop)}}" class="img-responsive" alt="{{product.name}}">
	                    </a>
	                    <div class="portfolio-caption">
							<h4  itemprop="jobTitle"><a href="{{product.getUrl()}}">{{product.name}}</a></h4>
	                        
	                    </div>
	                </div>
					
											
				(** logic to create perfect columns and rows **)
				{{if {index} % 4 == 0}}
				</div>
				<div class="row">
				{{end-if}}
				
				{{end-each}}
				</div>
			</div>
			
		</div>


    </div>
</section>
