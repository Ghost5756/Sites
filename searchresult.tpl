[searchposts]
[fullresult]
{include file="shortstory.tpl"}
[/fullresult]
[shortresult]
<a href="{full-link}" class="sres d-flex ai-center">
    <div class="sres__title flex-grow-1 ws-nowrap">{title}</div>
    <div class="sres__btn btn btn-secondary">Смотреть</div>
</a>
[/shortresult]
[/searchposts]

[searchcomments]
[fullresult]
{include file="comments.tpl"}
[/fullresult]
[shortresult]
<a href="{news-link}" class="sres d-flex ai-center">
    <div class="sres__title flex-grow-1 ws-nowrap">{news-title}</div>
    <div class="sres__btn btn btn-secondary">Смотреть</div>
</a>
[/shortresult]
[/searchcomments]
<style>
    .sres {border: 1px solid var(--ui-bdc); margin-bottom: 10px; font-size: 14px;}
    .sres__title {padding: 10px;}
    .sres__btn {border-radius: 0; font-size: 12px; text-transform: uppercase; padding: 0 15px;}
    @media screen and (min-width: 590px) {
        .sres::before {content: ''; width: 10px; height: 10px; border-radius: 50%; margin-left: 10px; 
        background-color: var(--accent);}
    }
    .sres:hover .sres__title {text-decoration: underline;}
</style>