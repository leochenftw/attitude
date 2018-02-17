<nav id="main_nav" class="nav column header__nav is-11 columns is-marginless">
    <ul class="columns column is-9 is-paddingless is-marginless">
        <% loop $MenuSet('Main Menu').MenuItems %>
        <li class="column<% if LinkOrCurrent = current || $LinkOrSection = section %> current<% end_if %>">
            <a href="$Link" class="$LinkingMode" <% if $ScrollTo %>data-scroll-to="$ScrollTo"<% end_if %> <% if IsNewWindow %>target="_blank"<% end_if %>>$MenuTitle</a>
        </li>
        <% end_loop %>
    </ul>
    <div class="column is-1 is-relative is-paddingless has-text-right">
        <button id="btn-mobile-menu" class="header__nav__menu-toggler is-paddingless">
            <span class="t1"></span>
            <span class="t2"></span>
            <span class="t3"></span>
        </button>
    </div>
</nav>
