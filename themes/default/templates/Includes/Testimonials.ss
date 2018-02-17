<section id="section-testimonials" class="section">
    <div class="container">
        <header class="has-text-centered">
            <h2 class="title is-2 is-inline-block has-text-left">
                <span class="is-inline-block index">05</span>
                <span class="is-block is-title">Testimonials</span>
            </h2>
        </header>
        <div class="testimonials">
            <% loop $Testimonials %>
                <div class="testimonial slide-up columns<% if not $Odd %> reverse<% end_if %>">
                    <div class="avatar-col column is-2<% if $Odd %> has-text-right<% end_if %>">
                        <div class="avatar is-inline-block">
                            <img src="$AvatarURL" alt="$Title" width="160" height="160" class="is-block" />
                        </div>
                    </div>
                    <div class="text-col column is-6<% if not $Odd %> is-offset-4<% end_if %>">
                        <div class="spoke">
                            <div class="text content">
                                <span class="icon"><i class="fa fa-quote-left"></i></span>
                                $Content
                            </div>
                            <div class="person">
                                $Title, $Position
                                <% if $Client %>
                                     <a href="$Client.Website.URL" target="_blank">@$Client.Title</a>
                                <% end_if %>
                            </div>
                        </div>
                    </div>
                </div>
            <% end_loop %>
        </div>
    </div>
</section>
