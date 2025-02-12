<div class="comm js-comm[commentsgroup=1] comm--admin[/commentsgroup][online] comm--online[/online]">
	[available=lastcomments]<div class="comm__title">{news_title}</div>[/available]
	<div class="comm__header d-flex ai-center">
		<div class="comm__img img-fixed-size js-comm-avatar">
			<img src="{foto}" alt="{login}" loading="lazy">
		</div>
		<div class="comm__meta flex-grow-1">
			<div class="comm__author ws-nowrap js-comm-author">[not-group=5]{author}[/not-group][group=5]{login}[/group]</div>
			<div class="comm__date ws-nowrap">{date}</div>
		</div>
		[rating-type-4]<div class="comm__rating d-flex ai-center ws-nowrap" data-text="Согласны?">
			[rating-plus]<span class="far fa-thumbs-up"></span>{likes}[/rating-plus]
			[rating-minus]<span class="far fa-thumbs-down"></span>{dislikes}[/rating-minus]
		</div>[/rating-type-4]
	</div>
	<div class="comm__bd">
		<div class="comm__main full-text clearfix">{comment}</div>
		[not-available=lastcomments]<div class="comm__footer d-flex ai-center">
			<ul class="comm__action d-flex ai-center">
				<li class="comm__action-reply far fa-chevron-down fa-pull-right">[reply]Ответить[/reply]</li>
				<li class="comm__action-quote far fa-redo-alt">[fast]Цитировать[/fast]</li>
			</ul>
			[not-group=5]<ul class="comm__ctrl flex-grow-1 d-flex jc-flex-end ai-center">
				[group=1]<li>{ip}</li>[/group]
				<li>[com-edit]<span class="far fa-bars"></span>[/com-edit]</li>
				<li>[complaint]<span class="far fa-info-circle"></span>[/complaint]</li>
				<li>[com-del]<span class="far fa-times"></span>[/com-del]</li>
				<li class="has-checkbox">{mass-action}</li>
			</ul>[/not-group]
		</div>[/not-available]
	</div>
</div>