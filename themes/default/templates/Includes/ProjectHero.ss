<section class="section internal-hero"<% if $Cover %> style="background-image: url($PageHero.Cropped.SetWidth(1920).URL);"<% end_if %>>
    <div class="sitting-triangles">
        <svg class="sitting-triangle" width="66.7%" height="165" viewBox="0 0 100 102" preserveAspectRatio="none">
            <path d="M 0 0
                     L 0 100
                     L 100 100
                     L 0 0
                     Z"></path>
        </svg>
        <svg class="sitting-triangle" width="33.3%" height="165" viewBox="0 0 100 102" preserveAspectRatio="none">
            <path d="M 0 100
                     L 100 100
                     L 100 0
                     L 0 100
                     Z"></path>
        </svg>
    </div>
    <div class="hero-body container has-text-centered">
        <header>
            <h1 class="title is-1">$Title</h1>
            <p class="subtitle is-6">$Subtitle</p>
        </header>
        <div class="content">
            <h2 class="title is-4">Description</h2>
            <div class="divider mini"></div>
            <div class="description">
                $Content
            </div>
        </div>
        <div class="content">
            <h2 class="title is-4">Duties</h2>
            <div class="divider mini"></div>
            <div class="description">
                $Duty
            </div>
        </div>
        <div class="columns">
            <div class="column">
                <h2 class="title is-6">Client</h2>
                <p>$Client.Title</p>
            </div>
            <% if $Agency %>
            <div class="column">
                <h2 class="title is-6">Work @</h2>
                <p><a href="$Agency.Website.URL" target="_blank">$Agency.Title</a></p>
            </div>
            <% end_if %>
            <div class="column">
                <h2 class="title is-6">Technology</h2>
                <p>
                    <% loop $Coverage.Sort('Title ASC') %>
                        $Title<% if not $Last %>,<% end_if %>
                    <% end_loop %>
                </p>
            </div>
            <div class="column">
                <h2 class="title is-6">Live site</h2>
                <p><a href="$Link.URL" target="_blank">$Link.Title</a></p>
            </div>
        </div>
    </div>
</section>
