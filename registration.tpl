<div class="serv">
	<h1 class="serv__title">[registration]Регистрация[/registration][validation]Обновление профиля[/validation]</h1>
	<div class="message-info serv__links">		
		[registration]
			<b>Здравствуйте, уважаемый посетитель нашего сайта!</b><br />
			Регистрация на нашем сайте позволит Вам быть его полноценным участником.
			Вы сможете добавлять новости на сайт, оставлять свои комментарии, просматривать скрытый текст и многое другое.
			В случае возникновения проблем с регистрацией, обратитесь к <a href="/index.php?do=feedback">администратору</a> сайта.
		[/registration]
		[validation]
			<b>Уважаемый посетитель,</b><br />
			Ваш аккаунт был зарегистрирован на нашем сайте,
			однако информация о Вас является неполной, поэтому заполните дополнительные поля в Вашем профиле.
		[/validation]
	</div>
	[registration]	
	<div class="serv__social d-flex serv__section login__social">
		<div class="serv__subtitle" style="width: 100%; margin-bottom: 10px; text-align: left;">Регистрация через соц. сети</div>
		[vk]<a href="{vk_url}" target="_blank" class="login__social-vk" data-text="Вконтакте"><img loading="lazy" src="{THEME}/images/social/vk.svg" alt=""></a>[/vk]
		[odnoklassniki]<a href="{odnoklassniki_url}" target="_blank" class="login__social-ok" data-text="Одноклассники"><img loading="lazy" src="{THEME}/images/social/ok.svg" alt=""></a>[/odnoklassniki]
		[facebook]<a href="{facebook_url}" target="_blank" class="login__social-fb" data-text="Facebook"><img loading="lazy" src="{THEME}/images/social/fb.svg" alt=""></a>[/facebook]
		[mailru]<a href="{mailru_url}" target="_blank" class="login__social-ml" data-text="MailRu"><img loading="lazy" src="{THEME}/images/social/mail.svg" alt=""></a>[/mailru]
		[google]<a href="{google_url}" target="_blank" class="login__social-gg" data-text="Google"><img loading="lazy" src="{THEME}/images/social/google.svg" alt=""></a>[/google]
		[yandex]<a href="{yandex_url}" target="_blank" class="login__social-ya" data-text="Yandex"><img loading="lazy" src="{THEME}/images/social/yandex.svg" alt=""></a>[/yandex]
	</div>
	<div class="serv__subtitle">Обычная регистрация</div>
	<div class="form">
		<div class="form__row">
			<label class="form__label form__label--important" for="name">Логин:</label>
			<input class="form__input" type="text" name="name" id="name" required />
			<button class="form__find-related" onclick="CheckLogin(); return false;">Проверить имя</button>
			<div id='result-registration'></div>
		</div>
		<div class="form__row">
			<label class="form__label form__label--important" for="email">Ваш E-Mail:</label>
			<input class="form__input" type="text" name="email" id="email" required />
		</div>
		<div class="form__row">
			<label class="form__label form__label--important" for="password1">Пароль:</label>
			<input class="form__input" type="password" name="password1" id="password1" required />
		</div>
		<div class="form__row">
			<label class="form__label form__label--important" for="password2">Повторите пароль:</label>
			<input class="form__input" type="password" name="password2" id="password2" required />
		</div>
		[question]
		<div class="form__row form__row--protect">
			<label class="form__label form__label--important" for="question_answer">{question}</label>
			<input class="form__input" type="text" name="question_answer" id="question_answer" placeholder="Впишите ответ на вопрос" required />
		</div>
		[/question]
		[sec_code]
		<div class="form__row form__row--protect">
			<label class="form__label form__label--important" for="sec_code">Введите код с картинки:</label>
			<div class="form__sec-code d-flex">
				<input class="form__input" type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />
				{reg_code}
			</div>
		</div>
		[/sec_code]
		[recaptcha]
		<div class="form__row form__row--protect">
			<label class="form__label form__label--important" for="">Защита от спама</label>
			{recaptcha}
		</div>
		[/recaptcha]
		[/registration]
		[validation]
		<div class="form__row">
			<label class="form__label" for="fullname">Ваше Имя:</label>
			<input type="text" id="fullname" name="fullname" />
		</div>
		<div class="form__row">
			<label class="form__label" for="land">Место жительства:</label>
			<input type="text" id="land" name="land" />
		</div>
		<div class="form__row">
			<label class="form__label" for="image">Фото:</label>
			<input type="file" id="image" name="image" />
		</div>
		<div class="form__row form__row--textarea">
			<label class="form__label">О себе:</label>
			<textarea class="form__textarea form__textarea--height" id="info" name="info" rows="8" /></textarea>
		</div>
		<div class="form__row form__row--textarea">
			<table class="form__table">{xfields}</table>
		</div>
		[/validation]
		<div class="form__row form__row--submit d-flex">
			<button class="form__btn" name="submit" type="submit">Отправить</button>
		</div>
	</div>
</div>