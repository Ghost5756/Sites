<div class="serv pmessages">
	<h1 class="serv__title">Персональные сообщения</h1>
	<ul class="pmessages__links d-flex serv__gap serv__section">
		<li class="flex-grow-1">[inbox]Входящие[/inbox]</li>
		<li class="flex-grow-1">[outbox]Отправленные[/outbox]</li>
		<li class="flex-grow-1">[new_pm]Создать новое[/new_pm]</li>
	</ul>
	<style>.pmessages__links a {display: flex;}</style>
	<div class="pmessages__status serv__section">
		<div class="serv__subtitle">Папки персональных сообщений заполнены на:</div>
		{pm-progress-bar}
		{proc-pm-limit}% от лимита ({pm-limit} сообщений)
	</div>
	[pmlist]
	<h2 class="serv__subtitle">Список сообщений</h2> 
	<div class="serv__table serv__table-resp serv__links">{pmlist}</div>
	[/pmlist]
	[readpm]
	<h2 class="serv__title">Ваши сообщения</h2>	
	<div class="pmessages-item d-flex">
		<div class="pmessages-item__img img-fixed-size"><img src="{foto}" alt="{login}"/></div>
		<div class="pmessages-item__desc flex-grow-1">
			<div class="pmessages-item__meta d-flex serv__gap">
				<span>{author}</span><span>{group-name}</span><span>{date}</span>
			</div>
			<div class="pmessages-item__text full-text clearfix">{text}</div>
			<div class="pmessages-item__meta d-flex serv__links serv__gap">
				<span>[reply]Ответить[/reply]</span><span>[ignore]Игнор[/ignore]</span><span>[complaint]Пожаловаться[/complaint]</span><span>[del]Удалить[/del]</span>
			</div>
		</div>
	</div>
	[/readpm]
	[newpm]
	<h2 class="serv__subtitle">Новое сообщение</h2>
	<div class="form__row">
		<label class="form__label form__label--important">Кому:</label>
		<input class="form__input" type="text" name="name" placeholder="Кому" value="{author}" required />
	</div>
	<div class="form__row">
		<label class="form__label">Тема:</label>
		<input class="form__input" type="text" name="subj" placeholder="Тема" value="{subj}" />
	</div>
	<div class="form__row form__row--textarea">
		<label class="form__label form__label--important">Ваше письмо:</label>
		{editor}
	</div>
	<div class="form__row form__row--wide has-checkbox-slider">
		<label for="outboxcopy" class="checkbox">
			<input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" checked /> 
			Сохранить сообщение в папке "Отправленные"
		</label>
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
		<div class="form__sec-code">
			<input class="form__input" type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />
			{sec_code}
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
		<button class="flex-grow-1" type="submit" name="add">Отправить</button>
		<button class="flex-grow-1 btn-secondary" type="button" onclick="dlepmPreview()">Просмотр</button>
	</div>
	[/newpm]
</div>	
	