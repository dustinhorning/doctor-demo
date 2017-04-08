(** recipe: about page > single page view **)

<div class="about-page recipe-wrap">
	(** Simple output of the page title **)
	<h1 itemprop="name headline">{{thispage.title}}</h1>

	<div class="z-row">
		{{if {thispage.image} }}
			<center>
			<img src="{{thispage.image.getImage(600,250,crop)}}" class="z-responsive-width" alt="{{thispage.title}} Image" itemprop="primaryImageOfPage image" />
			</center>
			{{end-if}}
		<br>
		<div class="col-2/3" itemprop="mainContentOfPage">

			(** this if statement check if an image is present, if so, it print the image **)

			(** below outputs the content which is inputed in the Zesty Content tab **)
			<div itemprop="text">{{thispage.top_content}}</div>

			(** below outputs the blockquote which is inputed in the Zesty Content tab **)
			{{if {thispage.blockquote} }}
			<blockquote>{{thispage.blockquote}}</blockquote>
			{{end-if}}

			(** below outputs the content which is inputed in the Zesty Content tab **)
			<div itemprop="text">{{thispage.bottom_content}}</div>
		</div>
	</div>
</div>
