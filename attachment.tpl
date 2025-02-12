[allow-download]
<a href="{link}" class="fdl-btn ignore-select">
	<div class="fdl-btn-title">{name}</div>
	<div class="fdl-btn-size fx-col fx-center">Размер: {size}</div>
	<div class="fdl-btn-footer fx-row fx-middle">
		<div class="fdl-btn-caption fx-1 ws-nowrap">Название файла: {name}</div>
		[count]<div class="fdl-btn-dl">Скачали {count}</div>[/count]
	</div>
	<div class="fdl-btn-icon"><span class="fal fa-arrow-to-bottom"></span></div>
</a>
[/allow-download]
[allow-online]<br />Посмотреть онлайн файл: <a href="{online-view-link}" target="_blank">{name}</a>[/allow-online]
[not-allow-download]<div class="attach clr">У вас нет доступа к скачиванию файлов с нашего сервера</div>[/not-allow-download]