<div class="serv">
	<h1 class="serv__title">Добавить новость</h1>

	<div class="serv__section form">
		<div class="form__row">
			<label class="form__label form__label--important" for="title">Заголовок:</label>
			<input class="form__input" type="text" id="title" name="title" value="{title}" maxlength="150" placeholder="Введите заголовок" required />
			<button class="form__find-related" onclick="find_relates(); return false;">Найти похожие</button>
			<div id="related_news" class="serv__links"></div>
		</div>
		[urltag]
		<div class="form__row">
			<label class="form__label" for="alt_name">URL статьи:</label>
			<input class="form__input" type="text" name="alt_name" value="{alt-name}" maxlength="150" placeholder="URL новости" />
		</div>
		[/urltag]
		<div class="form__row">
			<label class="form__label">Категория:</label>
			{category}
		</div>
	</div>

	<div class="serv__subtitle">Основное описание</div>
	<div class="serv__section form">
		<div class="form__row form__row--textarea">
			<label class="form__label form__label--important">Вводная часть:</label>
			[not-wysywyg]
			<div class="bb-editor">
				{bbcode}
				<textarea class="form__textarea form__textarea--height" name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="10">{short-story}</textarea>
			</div>
			[/not-wysywyg] 
			{shortarea}
		</div>
		<div class="form__row form__row--textarea">
			<label class="form__label">Подробная часть:</label>
			[not-wysywyg]
			<div class="bb-editor">
				{bbcode}
				<textarea class="form__textarea" name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="20">{full-story}</textarea>
			</div>
			[/not-wysywyg] 
			{fullarea}
		</div>
	</div>

	<div class="serv__subtitle">Дополнительные поля</div>
	<div class="serv__section form">
		<div class="form__row form__row--wide has-checkbox-slider">
			<table class="form__table">{xfields}</table>
		</div>
	</div>

	<div class="serv__subtitle">Опции и отправка новости</div>
	<div class="serv__section form">
		<div class="form__row">
			<label class="form__label" for="tags">Ключевые слова:</label>
			<input class="form__input" type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off" />
		</div>
		<div class="form__row has-checkbox-slider form__row--checkboxes-group">{admintag}</div>
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
		<div class="form__row form__row--submit d-flex serv__gap">
			<button class="flex-grow-1" name="add" type="submit">Отправить</button>
			<button class="flex-grow-1 btn-secondary" name="nview" onclick="preview()" type="submit">Просмотр</button>
			<button class="flex-grow-1 btn-secondary" onclick="$('.form__vote').toggle();return false;">Добавить опрос</button>
		</div>
		<div class="form__vote d-none" style="margin-top: 20px;">
			<div class="form">
				<div class="form__row">
					<label class="form__label">Заголовок:</label>
					<input style="box-shadow: none;" class="form__input" type="text" name="vote_title" value="{votetitle}" maxlength="150" placeholder="Заголовок опроса" />
				</div>
				<div class="form__row">
					<label class="form__label">Сам вопрос:</label>
					<input style="box-shadow: none;" class="form__input" type="text" name="frage" value="{frage}" maxlength="150" placeholder="Сам вопрос" />
				</div>
				<div class="form__row form__row--textarea">
					<label class="form__label">Варианты ответов (Каждая новая строка является новым вариантом ответа):</label>
					<textarea style="box-shadow: none;" class="form__textarea form__textarea--height" name="vote_body" rows="10">{votebody}</textarea>
				</div>
				<div class="form__row form__row--wide has-checkbox">
					<label class="checkbox">
						<input type="checkbox" name="allow_m_vote" value="1" {allowmvote}>
						Разрешить выбор нескольких вариантов
					</label>
				</div>
			</div>
		</div>
	</div>
	
</div>

