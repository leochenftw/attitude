    <div class="works">
        <%-- <% loop $Works %>
            <div class="columns slide-up work align-items-center">
                <div class="column is-7 label">
                        <% if $Subtitle %><p class="subtitle is-6">$Subtitle</p><% end_if %>
                        <a href="/works/$Slug" class="is-inline-block linker">
                            <h3 class="title is-3 text">$Title</h3>
                            <span class="icon is-block">
                                <i class="fa fa-caret-right"></i>
                            </span>
                        </a>
                </div>
                <div class="column is-5 cover">
                    <a href="/works/$Slug" class="is-block">
                    <% with $Cover.SetWidth(768) %>
                        <img class="is-block" src="$URL" alt="$Up.Up.Title" width="$Width" height="$Height" />
                    <% end_with %>
                    </a>
                </div>
            </div>
        <% end_loop %> --%>
    </div>
    <%-- <% if $Works.MoreThanOnePage %> --%>
    <div class="has-text-centered call-to-action slide-up">
    <%-- <% if $Works.NotLastPage %> --%>
        <a class="button is-primary is-outlined" id="btn-more-work" href="$Works.NextLink&to_get=Work">Load more</a>
    <%-- <% end_if %> --%>
    </div>
    <%-- <% end_if %> --%>
