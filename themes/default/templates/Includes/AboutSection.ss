<% if $AboutMe %>
    <% with $AboutMe %>
    <section id="section-aboutme" class="section">
        <div class="container">
            <header class="has-text-centered">
                <h2 class="title is-2 is-inline-block has-text-left">
                    <span class="is-inline-block index">01</span>
                    <span class="is-block is-title">About me</span>
                </h2>
            </header>
            <div class="columns has-text-centered services">
                <div class="column">
                    <span class="icon"><i class="fa fa-comments-o"></i></span>
                    <span class="is-block">Consult</span>
                </div>
                <div class="column">
                    <span class="icon"><i class="fa fa-paint-brush"></i></span>
                    <span class="is-block">Design</span>
                </div>
                <div class="column">
                    <span class="icon"><i class="fa fa-code"></i></span>
                    <span class="is-block">Build</span>
                </div>
                <div class="column">
                    <span class="icon"><i class="fa fa-users"></i></span>
                    <span class="is-block">Lead</span>
                </div>
                <div class="column">
                    <span class="icon"><i class="fa fa-language"></i></span>
                    <span class="is-block">Translate</span>
                </div>
            </div>
            <div class="columns content">
                <div class="column is-5 has-text-right">
                    $Abstract
                </div>
                <div class="column is-auto">
                    $Content
                </div>
                <% if $SecondContent %>
                <div class="column is-auto">
                    $SecondContent
                </div>
                <% end_if %>
                <% if $ThirdContent %>
                <div class="column is-auto">
                    $ThirdContent
                </div>
                <% end_if %>
            </div>
            <div class="has-text-centered call-to-action">
                <a class="button is-primary is-outlined scroll-to" data-to="#section-profile" href="#section-profile">Check out my profile</a>
            </div>
        </div>
    </section>
    <% end_with %>
<% end_if %>
