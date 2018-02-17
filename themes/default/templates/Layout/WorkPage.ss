<% include InternalHero %>
<% include Showcases %>
<% if $PrevWork || $NextWork %>
<div class="section work-nav">
    <div class="container">
        <div class="columns">
            <div class="column is-half has-text-left">
                <% if $PrevWork %>
                    <a class="title is-3 is-inline-block" href="/works/$PrevWork.Slug">
                        <span class="icon"><i class="fa fa-arrow-left"></i></span>
                        $PrevWork.Title
                    </a>
                <% end_if %>
            </div>
            <div class="column is-half has-text-right">
                <% if $NextWork %>
                    <a class="title is-3 is-inline-block" href="/works/$NextWork.Slug">
                        $NextWork.Title
                        <span class="icon"><i class="fa fa-arrow-right"></i></span>
                    </a>
                <% end_if %>
            </div>
        </div>
    </div>
</div>
<% end_if %>
<% if $CurrentMember.inGroup('administrators') %>
<a class="is-block button is-primary" style="position: fixed; bottom: 0; right: 0; border-radius: 0;" href="/admin/works/Work/EditForm/field/Work/item/$ID/edit" target="_blank">edit</a>
<% end_if %>
