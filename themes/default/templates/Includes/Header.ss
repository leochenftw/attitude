<header id="header" class="header">
    <div class="container">
        <div class="columns is-marginless">
            <div class="column is-1"><a href="/" id="logo" rel="start" class="header__logo<% if $BodyClass.LowerCase == 'home-page' %> scroll-to<% end_if %>"<% if $BodyClass.LowerCase == 'home-page' %> data-to="#main"<% end_if %>>$SiteConfig.Title</a></div>
            <% include Navigation %>
        </div>
    </div>
</header>
