

<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top {{if {page.path_part} != 'zesty_home'}}always-dark{{end-if}}">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            {{if {clippings.logo} }}
            <a class="navbar-brand brand-image page-scroll" href="/"><img src="{{clippings.logo.getImage()}}" alt="{{clippings.site_name}} logo"/></a>
            {{else}}
            <a class="navbar-brand page-scroll" href="/">{{clippings.site_name}}</a>
            {{end-if}}
        </div>
        
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right" id="nav" itemscope="" itemtype="http://schema.org/SiteNavigationElement">
                {{ each nav_links as nl sort by nl.sort_order }}
                {{ if {nl.parent_link} == '' }}
                {{ $subnav = 0 }}
                {{ $name = {nl.name} }}
                {{ $id = {nl.internal_nav_link} }}
                {{ each nav_links as subnl where subnl.parent_link = {$id} sort by subnl.sort_order }}
                {{ $subindex = {index} }}
                {{ $subnav = 1 }}
                {{ if {$subindex} == 1 }}
                <li class=" dropdown"><a class="{{ $name }} dropdown-toggle" href="{{ truepath({$id}) }}" title="{{ $name }}" itemprop="url"><span itemprop="name">{{ $name }}</span><b class="caret hide-on-sm"></b></a>
                    <ul class="{{ $name }} dropdown-menu" id="" itemscope="">
                        <li class=""><a class="{{ subnl.name }} dropdown-toggle hide-on-sm" href="{{ truepath({subnl.internal_nav_link}) }}" title="{{ subnl.name }}" itemprop="url"><span itemprop="name">{{ subnl.name }}</span></a></li>
                        {{ else }}
                        <li class=""><a class="{{ subnl.name }} dropdown-toggle hide-on-sm" href="{{ truepath({subnl.internal_nav_link}) }}" title="{{ subnl.name }}" itemprop="url"><span itemprop="name">{{ subnl.name }}</span></a></li>
                        {{ end-if }}
                        {{ end-each }}
                        {{ if {$subnav} == 1 }}
                    </ul>
                </li>
                {{ else }}
                <li class=""><a class="{{ $name }} dropdown-toggle" href="{{ truepath({$id}) }}" title="{{ $name }}" itemprop="url"><span itemprop="name">{{ $name }}</span></a></li>
                {{ end-if }}
                {{ end-if }}
                {{ end-each }}
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
    