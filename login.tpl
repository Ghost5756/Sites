[not-group=5]
<a href="{favorites-link}" class="header__favlink far fa-bookmark"><span>{favorite-count}</span></a>
<div class="header__login p-relative">
	<div class="header__login-img img-fixed-size animated-element js-show-login-panel"><img src="{foto}" title="{login}" alt="{login}" loading="lazy"></div>
	<div class="header__login-panel d-none">
		<div class="header__login-header d-flex ai-center">
			<div class="header__login-avatar img-fixed-size"><img src="{foto}" title="{login}" alt="{login}" ></div>
			<div class="header__login-name">
				{login}
				<div class="header__login-group">{group}</div>
			</div>
		</div>
		<ul class="header__login-menu">
			[admin-link]<li><a href="{admin-link}" class="far fa-lock-alt" target="_blank">Админпанель</a></li>[/admin-link]
			<li><a href="{addnews-link}" class="far fa-plus-circle">Добавить пост</a></li>
            <li class="header__login-menu-border"><a href="{profile-link}" class="far fa-cog">Мой профиль</a></li>
			<li><a href="{pm-link}" class="far fa-envelope">Сообщения: <span>({new-pm})</span></a></li>
			<li><a href="{favorites-link}" class="far fa-heart">Мои закладки <span>({favorite-count})</span></a></li>
			<li class="header__login-menu-border"><a href="{stats-link}" class="far fa-chart-bar">Статистика</a></li>
			<li><a href="{newposts-link}" class="far fa-file-alt">Новое</a></li>
			<li><a href="/?do=lastcomments" class="far fa-comments">Комментарии</a></li>
			<li class="header__login-menu-border"><a href="{logout-link}" class="far fa-sign-out">Выйти</a></li>
		</ul>
	</div>
</div>
[/not-group]
[group=5]
<div class="login login--not-logged serv d-none">
	<div class="login__header">
		<div class="login__title">Авторизация</div>
		<div class="login__caption">Получите дополнительные возможности</div>
		<button class="login__close far fa-times btn-without-bg" aria-label="Закрыть панель авторизации"></button>
	</div>
	<form method="post" class="login__content">
		<div class="login__row far fa-angle-right serv__links">
			<div class="login__row-caption">Ваш логин: <a href="/?do=register">Регистрация</a></div>
			<div class="login__input"><input type="text" name="login_name" id="login_name" placeholder="Ваш логин" autocomplete="on"></div>
		</div>
		<div class="login__row far fa-angle-right serv__links">
			<div class="login__row-caption">Ваш пароль: <a href="{lostpassword-link}">Забыли пароль?</a></div>
			<div class="login__input"><input type="password" name="login_password" id="login_password" placeholder="Ваш пароль" autocomplete="on"></div>
		</div>
		<label class="login__row has-checkbox" for="login_not_save">
			<input type="checkbox" name="login_not_save" id="login_not_save" value="0" checked>
			<span>Запомнить меня</span>
		</label>
		<div class="login__row">
			<button onclick="submit();" type="submit">Войти на сайт</button>
			<input name="login" type="hidden" id="login" value="submit">
		</div>
		<div class="login__social d-flex jc-center">
			<div class="login__social-caption">Или войти через соц. сети</div>
			[vk]<a href="{vk_url}" target="_blank" class="login__social-vk" data-text="Вконтакте"><img loading="lazy" src="{THEME}/images/social/vk.svg" alt=""></a>[/vk]
			[odnoklassniki]<a href="{odnoklassniki_url}" target="_blank" class="login__social-ok" data-text="Одноклассники"><img loading="lazy" src="{THEME}/images/social/ok.svg" alt=""></a>[/odnoklassniki]
			[facebook]<a href="{facebook_url}" target="_blank" class="login__social-fb" data-text="Facebook"><img loading="lazy" src="{THEME}/images/social/fb.svg" alt=""></a>[/facebook]
			[mailru]<a href="{mailru_url}" target="_blank" class="login__social-ml" data-text="MailRu"><img loading="lazy" src="{THEME}/images/social/mail.svg" alt=""></a>[/mailru]
			[google]<a href="{google_url}" target="_blank" class="login__social-gg" data-text="Google"><img loading="lazy" src="{THEME}/images/social/google.svg" alt=""></a>[/google]
			[yandex]<a href="{yandex_url}" target="_blank" class="login__social-ya" data-text="Yandex"><img loading="lazy" src="{THEME}/images/social/yandex.svg" alt=""></a>[/yandex]
		</div>
	</form>
</div>
[/group]