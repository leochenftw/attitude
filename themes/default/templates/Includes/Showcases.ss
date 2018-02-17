<% if $Showcases %>
<div class="section showcases<% if not $PrevWork && not $NextWork %> short-padding<% end_if %>">
    <div class="container">
        <div class="tile is-ancestor">
            <div class="tile is-parent is-12">
                <div class="tile is-child has-text-centered">
                <% loop $Showcases.limit(1,0) %>
                    <% with $SetWidth(1920) %>
                        <div class="tile is-child has-text-centered is-relative" style="background-image: url($URL); padding-top: $Ratio;">
                            <a data-lightbox="$Top.Title" data-title="$Top.Title" class="is-overlay" href="$Up.URL"><span class="icon"><i class="fa fa-search-plus"></i></span></a>
                        </div>
                    <% end_with %>
                <% end_loop %>
                </div>
            </div>
        </div>
        <div class="tile is-ancestor">
            <div class="tile is-parent is-8">
                <% loop $Showcases.limit(1,1) %>
                    <% with $SetHeight(460) %>
                        <div class="tile is-child has-text-centered is-relative" style="background-image: url($URL); padding-top: $Ratio;">
                            <a data-lightbox="$Top.Title" data-title="$Top.Title" class="is-overlay" href="$Up.URL"><span class="icon"><i class="fa fa-search-plus"></i></span></a>
                        </div>
                    <% end_with %>
                <% end_loop %>
            </div>
            <div class="tile is-parent is-4">
                <% loop $Showcases.limit(1,2) %>
                    <% with $SetHeight(460) %>
                        <div class="tile is-child has-text-centered is-relative" style="background-image: url($URL); padding-top: $Ratio;">
                            <a data-lightbox="$Top.Title" data-title="$Top.Title" class="is-overlay" href="$Up.URL"><span class="icon"><i class="fa fa-search-plus"></i></span></a>
                        </div>
                    <% end_with %>
                <% end_loop %>
            </div>
        </div>
        <div class="tile is-ancestor">
            <div class="tile is-parent is-12">
                <div class="tile is-child has-text-centered">
                <% loop $Showcases.limit(1,3) %>
                    <% with $SetWidth(1920) %>
                        <div class="tile is-child has-text-centered is-relative" style="background-image: url($URL); padding-top: $Ratio;">
                            <a data-lightbox="$Top.Title" data-title="$Top.Title" class="is-overlay" href="$Up.URL"><span class="icon"><i class="fa fa-search-plus"></i></span></a>
                        </div>
                    <% end_with %>
                <% end_loop %>
                </div>
            </div>
        </div>
        <div class="tile is-ancestor">
            <div class="tile is-parent is-4">
                <div class="tile is-child has-text-centered">
                <% loop $Showcases.limit(1,4) %>
                    <% with $SetHeight(460) %>
                        <div class="tile is-child has-text-centered is-relative" style="background-image: url($URL); padding-top: $Ratio;">
                            <a data-lightbox="$Top.Title" data-title="$Top.Title" class="is-overlay" href="$Up.URL"><span class="icon"><i class="fa fa-search-plus"></i></span></a>
                        </div>
                    <% end_with %>
                <% end_loop %>
                </div>
            </div>
            <div class="tile is-parent is-8">
                <div class="tile is-child has-text-centered">
                <% loop $Showcases.limit(1,5) %>
                    <% with $SetHeight(460) %>
                        <div class="tile is-child has-text-centered is-relative" style="background-image: url($URL); padding-top: $Ratio;">
                            <a data-lightbox="$Top.Title" data-title="$Top.Title" class="is-overlay" href="$Up.URL"><span class="icon"><i class="fa fa-search-plus"></i></span></a>
                        </div>
                    <% end_with %>
                <% end_loop %>
                </div>
            </div>
        </div>
    </div>
</div>
<% end_if %>
