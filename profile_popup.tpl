<div class="us us--card serv">
	<div class="us__one">
		<div class="us__status d-flex ai-center[online] on[/online]">[offline]Не в сети[/offline][online]Онлайн[/online]</div>
		<div class="us__img img-fixed-size"><img src="{foto}" alt=""/></div>
	</div>
	<div class="us__two d-flex ai-center">
		<div class="us__info">
			<span class="us__info-desc">{news-num}</span>
			<span class="us__info-caption">Публикаций</span>
		</div>
		<div class="us__info">
			<span class="us__info-desc">{comm-num}</span>
			<span class="us__info-caption">Комментариев</span>
		</div>
	</div>
	<div class="us__three">
		<ul class="us__list serv__links">
			<li><span>Регистрация:</span> {registration}</li>
			<li><span>Заходил(а):</span> {lastdate}</li>
			<li><span>Группа:</span> {status}</li>
			[news-num]<li class="d-flex" style="gap: 0px 10px;"><span>Публикаций:</span><span>{news-num}</span>{news}</li>[/news-num]
			[comm-num]<li class="d-flex" style="gap: 0px 10px;"><span>Комментариев:</span><span>{comm-num}</span>{comments}</li>[/comm-num]
		</ul>
	</div>
</div>