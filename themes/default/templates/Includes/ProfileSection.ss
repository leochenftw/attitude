<% if $Profile %>
<% with $Profile %>
<svg class="bigTriangleColor work-section start-section-class" width="100%" height="150" viewBox="0 0 100 102" preserveAspectRatio="none">
    <path d="M0 100 L30 10 L100 100 Z"></path>
</svg>
<section id="section-profile" class="section">
    <div class="container">
        <header class="has-text-centered">
            <h2 class="title is-2 is-inline-block has-text-left">
                <span class="is-inline-block index">04</span>
                <span class="is-block is-title">Profile</span>
            </h2>
        </header>
        <div class="content description">
            $Content
            <div class="has-text-centered call-to-action">
                <a class="button is-primary is-outlined" href="$CV" download>Download CV</a>
            </div>
        </div>
        <div class="columns content breakdowns">
            <div class="column">
                <h3 class="title is-3"><span class="icon"><i class="fa fa-trophy"></i></span><span class="is-block is-fullwidth">Strengths</span></h3>
                <ul>
                    <li>
                        <h4 class="title is-4">Smart</h4>
                        <p class="subtitle is-6">Well, at least not dumb...</p>
                    </li>
                    <li>
                        <h4 class="title is-4">Creative</h4>
                        <p class="subtitle is-6">What's more valuable? The ideas and the solutions!</p>
                    </li>
                    <li>
                        <h4 class="title is-4">Hardworking</h4>
                        <p class="subtitle is-6">When I do coding, midnight is called "young"</p>
                    </li>
                    <li>
                        <h4 class="title is-4">Responsible</h4>
                        <p class="subtitle is-6">Your business is in good hands</p>
                    </li>
                    <li>
                        <h4 class="title is-4">On time</h4>
                        <p class="subtitle is-6">Deadlines are always far</p>
                    </li>
                    <li>
                        <h4 class="title is-4">Flexible</h4>
                        <p class="subtitle is-6">Did you say you want the deployment to happen in the evening / weekend?</p>
                    </li>
                    <li>
                        <h4 class="title is-4">Multilingal</h4>
                        <p class="subtitle is-6">Mandarin, English &amp; Cantonese</p>
                    </li>
                    <li>
                        <h4 class="title is-4">Connections</h4>
                        <p class="subtitle is-6">I might look like a lonewolf, but I have a whole pack behind me</p>
                    </li>
                </ul>
            </div>
            <div class="column">
                <h3 class="title is-3"><span class="icon"><i class="fa fa-graduation-cap"></i></span><span class="is-block is-fullwidth">Education</span></h3>
                <% if $Education %>
                <ul>
                    <% loop $Education %>
                        <li>
                            <h4 class="title is-4">$ExperienceTitle</h4>
                            <p class="subtitle is-6">$SchoolName, $DateStarted.Year<% if $DateEnded %><% if $isDifferentYear %> - $DateEnded.Year<% end_if %><% end_if %><% if $isStill %> - current<% end_if %></p>
                        </li>
                    <% end_loop %>
                </ul>
                <% end_if %>
            </div>
            <div class="column">
                <h3 class="title is-3"><span class="icon"><i class="fa fa-laptop"></i></span><span class="is-block is-fullwidth">Experience</span></h3>
                <% if $Careers %>
                <ul>
                    <% loop $Careers %>
                        <li>
                            <h4 class="title is-4">$ExperienceTitle</h4>
                            <p class="subtitle is-6">$CompanyName, $DateStarted.Year<% if $DateEnded %><% if $isDifferentYear %> - $DateEnded.Year<% end_if %><% end_if %><% if $isStill %> - current<% end_if %></p>
                        </li>
                    <% end_loop %>
                </ul>
                <% end_if %>
            </div>
            <div class="column">
                <h3 class="title is-3"><span class="icon"><i class="fa fa-rocket"></i></span><span class="is-block is-fullwidth">Skills</span></h3>
                <% if $Skills %>
                <ul class="skills">
                    <% loop $Skills %>
                        <li>
                            <div class="columns">
                                <div class="column is-9"><h4 class="title is-4 is-marginless">$Title</h4></div><div class="column is-3 has-text-right">$Score%</div>
                            </div>
                            <progress class="progress is-primary is-small" value="$Score" max="100"></progress>
                        </li>
                    <% end_loop %>
                </ul>
                <% end_if %>
            </div>
        </div>
    </div>
</section>
<svg class="bigTriangleColor work-section end-section-class" width="100%" height="150" viewBox="0 0 100 102" preserveAspectRatio="none">
    <path d="M0 0 L70 96 L100 0 Z"></path>
</svg>
<% end_with %>
<% end_if %>
