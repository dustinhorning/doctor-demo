	
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a href="#portfolioModal{{index}}" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
						<img src="{{social.image_url}}" class="img-responsive" alt="{{social.content.striptags()}}">
                    </a>
                    <div class="portfolio-caption">
						<h4>Posted by <a target="_blank" href="{{social.post_url}}">{{social.username}}</a></h4>
                        
                    </div>
                </div>
				{{if {index} % 3 == 0 }}
			</div>
			<div class="row">
				{{end-if}}
				
				 <!-- Social Modal {{index}} -->
			    <div class="portfolio-modal modal fade" id="portfolioModal{{index}}" tabindex="-1" role="dialog" aria-hidden="true">
			        <div class="modal-dialog">
			            <div class="modal-content">
			                <div class="close-modal" data-dismiss="modal">
			                    <div class="lr">
			                        <div class="rl">
			                        </div>
			                    </div>
			                </div>
			                <div class="container">
			                    <div class="row">
			                        <div class="col-lg-8 col-lg-offset-2">
			                            <div class="modal-body">
			                                <!-- Project Details Go Here -->
			                                <h2>Posted by {{social.username}}</h2>
			                                <p class="item-intro text-muted">Posted on {{social.date_created}}</p>
			                                <img class="img-responsive img-centered" src="{{social.image_url}}" alt="">
			                                <p>{{social.content.activate_links()}}</p>
			                                 <div>
												<a href="http://www.facebook.com/sharer/sharer.php?u={{social.post_url}}&t={{social.title}}&description={{social.content.substr(0,70)}}&picture={{social.image_url}}" target="_blank" class="share-popup" >
													 <i class="fa fa-facebook"></i>
												</a>
												<a href="http://www.twitter.com/intent/tweet?url={{social.post_url}}&text={{social.title}}" target="_blank" class="share-popup">
													 <i class="fa fa-twitter"></i>
												</a>
											</div>
			                                
			                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>

			