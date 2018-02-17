<% if $Works %>
<svg class="bigTriangleColor work-section start-section-class" width="100%" height="150" viewBox="0 0 100 102" preserveAspectRatio="none">
    <path d="M0 100 L30 10 L100 100 Z"></path>
</svg>
<section id="work-list" class="section">
    <div class="container is-relative">
        <header class="has-text-centered">
            <h2 class="title is-2 is-inline-block has-text-left">
                <span class="is-inline-block index">02</span>
                <span class="is-block is-title">Work</span>
            </h2>
        </header>

        <% include WorkItems Works=$Works %>

    </div>
</section>
<svg class="bigTriangleColor work-section end-section-class" width="100%" height="150" viewBox="0 0 100 102" preserveAspectRatio="none">
    <path d="M0 0 L70 96 L100 0 Z"></path>
</svg>
<% end_if %>
