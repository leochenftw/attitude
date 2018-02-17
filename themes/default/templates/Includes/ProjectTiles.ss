<% if $Projects %>
<section id="section-projects" class="section">
    <div class="container">
        <header class="has-text-centered">
            <h2 class="title is-2 is-inline-block has-text-left">
                <span class="is-inline-block index">03</span>
                <span class="is-block is-title">Projects</span>
            </h2>
        </header>
        <div class="tile is-ancestor">
            <div class="tile is-vertical is-parent is-4">
                <% loop $Projects.limit(1,0) %>
                <div class="project is-maxheight is-relative" style="padding-top: $Cover.Cropped.getRatio; background-image: url($Cover.Cropped.SetWidth(480).URL); background-size: cover; background-position: center; background-repeat: no-repeat;">
                    <div class="is-overlay">
                        <div class="content column is-10 is-offset-1 has-text-centered">
                            <p class="subtitle is-6">$Status</p>
                            <h3 class="title is-3">$Title</h3>
                            <div class="link has-text-centered">
                                <a href="/projects/$Slug" class="is-inline-block linker">
                                    <span class="title is-6 text">Read more</span>
                                    <span class="icon is-block">
                                        <i class="fa fa-caret-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <% end_loop %>
            </div>
            <div class="tile is-vertical is-8">
                <div class="tile">
                    <% loop $Projects.limit(1,1) %>
                    <div class="tile is-parent is-half">
                        <div class="project content">
                            <p class="subtitle is-6">$Status</p>
                            <h3 class="title is-3">$Title</h3>
                            <div class="content">$Description</div>
                            <div class="link">
                                <a href="/projects/$Slug" class="is-inline-block linker">
                                    <span class="title is-6 text">Read more</span>
                                    <span class="icon is-block">
                                        <i class="fa fa-caret-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <% end_loop %>
                    <% loop $Projects.limit(1,2) %>
                    <div class="tile is-parent is-half">
                        <div class="project content">
                            <p class="subtitle is-6">$Status</p>
                            <h3 class="title is-3">$Title</h3>
                            <div class="content">$Description</div>
                            <div class="link">
                                <a href="/projects/$Slug" class="is-inline-block linker">
                                    <span class="title is-6 text">Read more</span>
                                    <span class="icon is-block">
                                        <i class="fa fa-caret-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <% end_loop %>
                </div>
                <div class="tile">
                    <% loop $Projects.limit(1,3) %>
                    <div class="tile is-parent is-half">
                        <div class="project content">
                            <p class="subtitle is-6">$Status</p>
                            <h3 class="title is-3">$Title</h3>
                            <div class="content">$Description</div>
                            <div class="link">
                                <a href="/projects/$Slug" class="is-inline-block linker">
                                    <span class="title is-6 text">Read more</span>
                                    <span class="icon is-block">
                                        <i class="fa fa-caret-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <% end_loop %>
                    <% loop $Projects.limit(1,4) %>
                    <div class="tile is-parent is-half">
                        <div class="project content">
                            <p class="subtitle is-6">$Status</p>
                            <h3 class="title is-3">$Title</h3>
                            <div class="content">$Description</div>
                            <div class="link">
                                <a href="/projects/$Slug" class="is-inline-block linker">
                                    <span class="title is-6 text">Read more</span>
                                    <span class="icon is-block">
                                        <i class="fa fa-caret-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <% end_loop %>
                </div>
            </div>
        </div>
        <div class="has-text-centered call-to-action">
            <a href="#" class="button is-primary is-outlined">More projects</a>
        </div>
    </div>
</section>
<% end_if %>
