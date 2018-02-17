var WorkTilesTemplate   =   '{{#each .}}\
                                <div class="columns slide-up work align-items-center">\
                                    <div class="column is-7 label">\
                                        {{#if subtitle}}<p class="subtitle is-6">{{subtitle}}</p>{{/if}}\
                                        <a href="/works/{{slug}}" class="is-inline-block linker">\
                                            <h3 class="title is-3 text">{{title}}</h3>\
                                            <span class="icon is-block">\
                                                <i class="fa fa-caret-right"></i>\
                                            </span>\
                                        </a>\
                                    </div>\
                                    <div class="column is-5 cover">\
                                        <a href="/works/{{slug}}" class="is-block">\
                                            <img class="is-block" src="{{cover.url}}" alt="{{title}}" width="{{cover.width}}" height="{{cover.height}}" />\
                                        </a>\
                                    </div>\
                                </div>\
                            {{/each}}',
    WorkTiles           =   function(data)
    {
        var me          =   this;

        this.tpl        =   Handlebars.compile(WorkTilesTemplate);
        this.html       =   $($.trim(this.tpl(data)));

        return this.html;
    };
