<div class="form serv">
	<h1 class="serv__title">Восстановить пароль</h1>
	<div class="form__row">
		<label class="form__label form__label--important" for="lostname">Ваш логин:</label>
		<input type="text" name="lostname" id="lostname" placeholder="Ваш логин или E-Mail на сайте" />
	</div>
	[sec_code]
	<div class="form__row form__row--protect">
		<label class="form__label form__label--important" for="sec_code">Введите код с картинки:</label>
		<div class="form__sec-code d-flex">
			<input class="form__input" type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />
			{code}
		</div>
	</div>
	[/sec_code]
	[recaptcha]
	<div class="form__row form__row--protect">
		<label class="form__label form__label--important" for="">Защита от спама</label>
		{recaptcha}
	</div>
	[/recaptcha]
	<div class="form__row form__row--submit d-flex">
		<button class="form__btn" name="submit" type="submit">Отправить</button>
	</div>
</div>