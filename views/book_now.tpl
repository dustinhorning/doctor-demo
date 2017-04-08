<div class="container">
	<div class="row">
		<div class="col-md-12">
			{{ page.embed}}
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 text-center">
			{{ if {page.book_now_button} == 0 }}
			<a href=""><button class="btn btn-primary">Book Now!</button></a>
			{{ end-if }}
		</div>
	</div>
</div>
