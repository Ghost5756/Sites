<div class="serv stats">
	<h1 class="serv__title">Статистика сайта</h1>
	<ul class="stats__latest serv__section">
		<li>За сутки: <b>{news_day}</b> новостей, <b>{comm_day}</b> комментариев и <b>{user_day}</b> пользователей</li>
		<li>За неделю: <b>{news_week}</b> новостей, <b>{comm_week}</b> комментариев и <b>{user_week}</b> пользователей</li>
		<li>За месяц: <b>{news_month}</b> новостей, <b>{comm_month}</b> комментариев и <b>{user_month}</b> пользователей</li>
		<li>Общий размер базы данных: <b>{datenbank}</b></li>
	</ul>
	<div class="stats__common d-flex ai-flex-start serv__section serv__links" style="gap: 30px 10px;">
		<ul class="stats__list flex-grow-1">
			<li><div class="serv__subtitle">Новости:</div></li>
			<li>Общее кол-во: <b>{news_num}</b></li>
			<li>Опубликовано: <b>{news_allow}</b></li>
			<li>На главной: <b>{news_main}</b></li>
			<li>На модерации: <b>{news_moder}</b></li>
		</ul>
		<ul class="stats__list flex-grow-1">
			<li><div class="serv__subtitle">Пользователи:</div></li>
			<li>Общее кол-во: <b>{user_num}</b></li>
			<li>Из них забанено: <b>{user_banned}</b></li>
		</ul>
		<ul class="stats__list flex-grow-1">
			<li><div class="serv__subtitle">Комментарии:</div></li>
			<li>Общее кол-во: <b>{comm_num}</b></li>
			<li><a href="/?do=lastcomments">Посмотреть последние</a></li>
		</ul>
	</div>
	<div class="serv__table serv__links">
		<div class="serv__subtitle">Список лучших пользователей</div>
		<div class="serv__table-resp"><table>{topusers}</table></div>
	</div>
</div>