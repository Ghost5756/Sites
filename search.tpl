<div class="search-page serv">
	<h1 class="serv__subtitle">Поиск по сайту</h1>
	<div class="searchtable" id="searchtable" name="searchtable">
		[simple-search]
		<div class="search-page__simple-form d-flex ai-center">
			<div class="flex-grow-1">{searchfield}</div>
			<input type="button" name="dosearch" id="dosearch" value="Найти" onclick="javascript:list_submit(-1); return false;">
			<input class="search-page__btn-ext btn-secondary" type="button" name="dofullsearch" id="dofullsearch" value="Расширенный поиск" onclick="javascript:full_submit(1); return false;">
		</div>
		[/simple-search]
		[extended-search]
		<div class="search-page__ext-form">
			<div class="search-page__ext-form-row">
				<div class="search-page__ext-form-label">Слова для поиска</div>
				<div class="search-page__ext-form-content">{searchfield}</div>
				<div class="has-checkbox">{word-option}</div>
			</div>
			<div class="search-page__ext-form-row">
				<div class="search-page__ext-form-label">Имя пользователя</div>
				<div class="search-page__ext-form-content">{userfield}</div>
				<label class="has-checkbox">{user-option}Точное совпадение</label>
			</div>
			<div class="search-page__ext-form-row search-page__ext-form-row--category">
				<div class="search-page__ext-form-label">Поиск по разделам</div>
				<div class="search-page__ext-form-content">{category-option}</div>
			</div>
			<div class="search-page__ext-form-row">
				<div class="search-page__ext-form-label">Область поиска</div>
				<div class="search-page__ext-form-content">{search-area}</div>
			</div>
			<div class="search-page__ext-form-row">
				<div class="search-page__ext-form-label">Временной период</div>
				<div class="search-page__ext-form-content d-flex ai-center">
					<div class="flex-grow-1">{date-option}</div>
					<div class="flex-grow-1">{date-beforeafter}</div>
				</div>
			</div>
			<div class="search-page__ext-form-row">
				<div class="search-page__ext-form-label">Искать статьи с</div>
				<div class="search-page__ext-form-content d-flex ai-center">
					<div class="flex-grow-1">{news-option}</div>
					<div class="search-page__ext-form-input d-flex ai-center">{comments-num} комментариями</div>
				</div>
			</div>
			<div class="search-page__ext-form-row">
				<div class="search-page__ext-form-label">Показывать результаты как</div>
				<div class="search-page__ext-form-content has-radiobox d-flex ai-center" style="height: 40px; gap: 20px;">{view-option}</div>
			</div>
			<div class="search-page__ext-form-row search-page__ext-form-row--wide">
				<div class="search-page__ext-form-label">Сортировка результатов</div>
				<div class="search-page__ext-form-content d-flex ai-center">
					<div class="flex-grow-1" style="min-width: 280px;">{sort-option}</div>
					<div class="flex-grow-1" style="min-width: 280px;">{order-option}</div>
				</div>
			</div>
			<div class="search-page__ext-form-row search-page__ext-form-row--wide search-page__ext-form-row--btns serv__gap d-flex">
				<input class="search-page__btn-search flex-grow-1" type="button" name="dosearch" id="dosearch" value="Искать" onclick="javascript:list_submit(-1); return false;">
				<input class="search-page__btn-clear btn-secondary flex-grow-1" type="button" name="doclear" id="doclear" value="Сбросить" onclick="javascript:clearform('fullsearch'); return false;">
				<input class="search-page__btn-reset btn-secondary flex-grow-1" type="reset" name="doreset" id="doreset" value="Вернуть">
			</div>
		</div>
		[/extended-search]
	</div>
	[searchmsg]<div class="message-info">{searchmsg}</div>[/searchmsg]
</div>