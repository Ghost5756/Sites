<div class="us us--page serv">
	<div class="us__one">
		<h1 class="us__name"><span>Пользователь:</span> {usertitle}</h1>
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
		<div class="us__btn d-flex flex-grow-1 jc-flex-end" style="gap: 10px;">[not-group=5]{pm}[/not-group]{email}</div>
	</div>
	<div class="us__three">
		<ul class="us__list serv__links">
			[not-group=5]
			[fullname]<li><span>Полное имя:</span> {fullname}</li>[/fullname]
			[land]<li><span>Место жительства:</span> {land}</li>[/land]
			[signature]<li><span>Подпись:</span> {signature}</li>[/signature]
			[/not-group]
			<li><span>Регистрация:</span> {registration}</li>
			<li><span>Заходил(а):</span> {lastdate}</li>
			<li><span>Группа:</span> {status} [time_limit]&nbsp;В группе до: {time_limit}[/time_limit]</li>
			[news-num]<li class="d-flex" style="gap: 0px 10px;"><span>Публикаций:</span><span>{news-num}</span>{news}</li>[/news-num]
			[comm-num]<li class="d-flex" style="gap: 0px 10px;"><span>Комментариев:</span><span>{comm-num}</span>{comments}</li>[/comm-num]
			[not-group=5]<li><span>О себе:</span> {info}</li>[/not-group]
		</ul>
		[not-logged]<a href="javascript:ShowOrHide('options')" class="btn" style="margin-top: 20px; height: 30px; width: 200px;">редактировать</a>[/not-logged]
	</div>
</div>
[not-logged]
<div id="options" style="margin: 40px 0; display: none;"><div class="serv">
	<h2 class="serv__title">Редактирование профиля:</h2>

	<div class="form serv__section">
		<div class="form__row">
			<label>Ваше Имя:</label>
			<input type="text" name="fullname" value="{fullname}" placeholder="Ваше Имя" />
		</div>
		<div class="form__row">
			<label>Ваш E-Mail:</label>
			<input type="text" name="email" value="{editmail}" placeholder="Ваш E-Mail: {editmail}" />
		</div>
		<div class="form__row">
			<label>Аватар:</label>
			<input type="file" name="image" size="28" />
		</div>
		<div class="form__row serv__links">
			<label class="form__label">Сервис <a href="http://www.gravatar.com/" target="_blank">Gravatar</a>:</label>
			<input type="text" name="gravatar" value="{gravatar}" placeholder="Укажите E-Mail в этом сервисе" />
		</div>
		<div class="form__row has-checkbox-slider">
			<div class="form__caption">Удалить аватар</div>
			<label for="del_foto" class="checkbox"><input type="checkbox" name="del_foto" id="del_foto" value="yes" /> </label>
		</div>
	</div>

	<div class="serv__subtitle">Безопасность</div>
	<div class="form serv__section">
		<div class="form__row">
			<label>Старый пароль:</label>
			<input type="password" name="altpass" placeholder="Старый пароль" />
		</div>
		<div class="form__row">
			<label>Новый пароль:</label>
			<input type="password" name="password1" placeholder="Новый пароль" />
		</div>
		<div class="form__row">
			<label>Повторите пароль:</label>
			<input type="password" name="password2" placeholder="Повторите Новый пароль" />
		</div>
		<div class="form__row has-checkbox-slider">
			<label>Двухфакторная авторизация</label>
			<div class="checkbox">{twofactor-auth}</div>
		</div>
		<div class="form__row form__row--textarea">
			<label class="form__label">Блокировка по IP (Ваш IP: {ip}):</label>
			<div class="form__content">
				<textarea name="allowed_ip" rows="5" class="f_textarea form__textarea--height" >{allowed-ip}</textarea>
				<div style="margin-top: 10px; color: red; font-size: 13px;">
					* Внимание! Будьте бдительны при изменении данной настройки.
					Доступ к Вашему аккаунту будет доступен только с того IP-адреса или подсети, который Вы укажете.
					Вы можете указать несколько IP адресов, по одному адресу на каждую строчку. 
					Пример: 192.48.25.71 или 129.42.*.*
				</div>
			</div>
		</div>
	</div>

	<div class="serv__subtitle">Информация о вас</div>
	<div class="form serv__section">
		<div class="form__row">
			<label>Место жительства:</label>
			<input type="text" name="land" value="{land}" placeholder="Место жительства" />
		</div>
		<div class="form__row">
			<label>Часовой пояс:</label>
			{timezones}
		</div>
		<div class="form__row form__row--textarea">
			<label class="form__label">О себе:</label>
			<textarea name="info" rows="5" style="height: 80px">{editinfo}</textarea>
		</div>
		<div class="form__row form__row--textarea">
			<label class="form__label">Подпись:</label>
			<textarea name="signature" rows="5" style="height: 80px">{editsignature}</textarea>
		</div>
		<div class="form__row form__row--wide">
			<table class="form__table">{xfields}</table>
		</div>
	</div>
	
	<div class="serv__subtitle">Подписки и уведомления</div>
	<div class="form serv__section">
		<div class="form__row">
			<div class="form__caption">Подписки</div>
			<div class="form__content has-checkbox-slider form__row--checkboxes-group">
				<div class="checkbox"><input type="checkbox" id="subscribe" name="subscribe" value="1" /> 
				<label for="subscribe">Отписаться от подписанных новостей</label></div>
				<div class="checkbox">{unsubscribe}</div>
			</div>
		</div>
		<div class="form__row">
			<div class="form__caption">Уведомления</div>
			<div class="form__content has-checkbox-slider form__row--checkboxes-group">
				<div class="checkbox">{news-subscribe}</div>
				<div class="checkbox">{comments-reply-subscribe}</div>
			</div>
		</div>
		<div class="form__row">
			<div class="form__caption">Письма с сайта и ЛС</div>
			<div class="form__content has-checkbox-slider form__row--checkboxes-group">
				<div class="checkbox">{hidemail}</div>
			</div>
		</div>
		<div class="form__row">
			<label>Список игнорируемых пользователей:</label>
			{ignore-list}
		</div>
		<div class="form__row has-checkbox-slider form__row--checkboxes-group">
		</div>
	</div>

	<div class="form__row form__row--submit d-flex">
		<button class="form__btn" name="submit" type="submit">Отправить</button>
		<input name="submit" type="hidden" id="submit" value="submit" />
	</div>

</div></div>
[/not-logged]