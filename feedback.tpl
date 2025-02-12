<div class="serv">
	<h1 class="serv__title">Обратная связь</h1>
	<div class="form">
		[not-logged]
		<div class="form__row">
			<label class="form__label form__label--important">Ваше имя:</label>
			<input class="form__input" type="text" maxlength="35" name="name" placeholder="Ваше имя" />
		</div>
		<div class="form__row">
			<label class="form__label form__label--important">Ваш E-Mail:</label>
			<input class="form__input" type="text" maxlength="35" name="email" placeholder="Ваш E-Mail" />
		</div>
		[/not-logged]
		<div class="form__row">
			<label class="form__label form__label--important">Выберите кому:</label>
			{recipient}
		</div>
		<div class="form__row">
			<label class="form__label form__label--important">Тема сообщения:</label>
			<input class="form__input" type="text" maxlength="45" name="subject" placeholder="Тема сообщения" />
		</div>
		<div class="form__row form__row--textarea">
			<label class="form__label form__label--important">Ваше письмо:</label>
			<textarea class="form__textarea form__textarea--height" name="message"></textarea>
		</div>
		[attachments]
		<div class="form__row">
			<label for="">Прикрепить файлы:</label>
			<input name="attachments[]" type="file" multiple>
		</div>
		[/attachments]
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
			<button class="form__btn" name="send_btn" type="submit">Отправить</button>
		</div>
	</div>
</div>
