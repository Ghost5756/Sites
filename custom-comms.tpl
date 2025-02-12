<div class="lcomm p-relative js-comm">
    <div class="lcomm__meta d-flex ai-center gap-10">
        <div class="lcomm__img img-fixed-size js-comm-avatar"><img src="{foto}" alt="{login}" loading="lazy"></div>
		<div class="lcomm__author js-comm-author">{login}</div>
		<div class="lcomm__date">{date=d.m.y}</div>
	</div>
	<div class="lcomm__text">
        <div class="line-clamp">{comment limit="80"}</div>
	</div>
	<a class="lcomm__link d-flex ai-center gap-10 far fa-arrow-circle-right" href="{news-link}">
        <div class="flex-grow-1">{news-title}</div>
    </a>
</div>