<article class="page ignore-select">

    <div class="scard">
        <header class="scard__header d-flex ai-center">
            <h1 class="scard__title flex-grow-1">{title}[not-group=5][edit] <span class="far fa-cog"></span>[/edit][/not-group]</h1>
            [rating-type-4]
            <div class="scard__rating-likes d-flex">
                [rating-plus]<span class="far fa-thumbs-up"></span>{likes}[/rating-plus]
                [rating-minus]{dislikes}<span class="far fa-thumbs-down"></span>[/rating-minus]
            </div>
            [/rating-type-4]
        </header>

        <div class="scard__descr">
            <ul class="scard__list">
                <li><span>Жанр:</span> {link-category}, Боевик, Фантастика</li>
                <li><span>Страна:</span> [xfvalue_countr]</li>
                <li><span>В переводе:</span> [xfvalue_audio_do]</li>
                <li><span>Качество:</span> [xfvalue_Video_p]</li>
                <li><span>Время:</span> [xfvalue_time_film]</li>
                <li><span>Режиссер:</span> [xfvalue_reji]</li>
                <li><span>В ролях актеры:</span>
                    <a href="#">Александр Скарсгард</a>, <a href="">Милли Бобби Браун</a>, <a href="">Ребекка Холл</a>,
                    <a href="">Брайан Тайри Генри</a>, <a href="">Сюн Огури</a>, <a href="">Эйса Гонсалес</a>,
                    Джулиан Деннисон, Лэнс Реддик</li>
            </ul>
        </div>
        <div class="scard__footer d-flex ai-center">
            <button class="scard__btn btn js-scroll-to far fa-arrow-circle-down">Смотреть</button>
            <div class="scard__footer-item far fa-clock flex-grow-1 jc-flex-end">{date=d M Y, H:i}</div>
            <div class="scard__footer-item far fa-star">{ratingscorelikes} / 10</div>
            <div class="scard__footer-item far fa-eye">{views}</div>
            <div class="scard__footer-item far fa-comments-alt">{comments-num}</div>
        </div>
        <div class="scard__left p-relative">
            <div class="scard__img img-fixed-size">
                <img src="[xfvalue_thumb_url_poster]" alt="{title}" loading="lazy">
            </div>
            <button class="scard__btn-trailer fas fa-play js-show-trailer" data-trg="{full-link}" data-text="Трейлер" aria-label="Смотреть трейлер {title}"></button>
            <div class="scard__fav">
                [group=5]<a href="#" class="js-show-login far fa-bookmark" title="Добавить в избранное {title}" aria-label="Добавить в избранное {title}"></a>[/group]
                [not-group=5]
                [add-favorites]<span class="far fa-bookmark" title="Добавить в избранное"></span>[/add-favorites]
                [del-favorites]<span class="fas fa-bookmark scard__fav-added" title="Убрать из избранного"></span>[/del-favorites]
                [/not-group]
            </div>
        </div>
    </div>

    <section class="sect sb">
        <h2 class="sect__header sect__title sb__title">Про что фильм "{title}"</h2>
        <div class="sect__content page__text full-text clearfix">
            {full-story}
        </div>
    </section>

    <h2 class="page__subtitle">Смотреть онлайн "{title}" бесплатно</h2>

    <div class="page__player tabs-block">
        <div class="page__player-controls d-flex ai-center">
            <div class="tabs-block__select d-flex flex-grow-1">
                <button class="is-active">Смотреть онлайн</button>
                <button>Запасной плеер</button>
                <button>Трейлер</button>
            </div>
        </div>
     
        <div class="tabs-block__content d-none video-inside video-responsive">
            <iframe data-src="https://www.youtube.com/embed/cU6JjGfTvr0" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="tabs-block__content d-none video-inside video-responsive" id="trailer-block">
            <iframe data-src="https://www.youtube.com/embed/I-5Op8acIN8" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="tabs-block__content d-none video-inside video-responsive" id="trailer-block">
            <iframe data-src="https://www.youtube.com/embed/I-5Op8acIN8" frameborder="0" allowfullscreen></iframe>
        </div>
        {* если у вас свой адаптивный плеер, а не iframe или video, то уберите выше video-responsive
        id="trailer-block" здесь строго должен быть трейлер! *}
        <div class="page__complaint" title="Есть ошибки или проблемы с фильмом? Сообщи нам!">
            [complaint]<span class="far fa-bug"></span>Жалоба[/complaint]
        </div>
    </div>

    [related-news]
    <section class="sect sb page__related">
        <h3 class="sect__header sect__title sb__title">Смотреть ещё фильмы:</h3>
        <div class="sect__content" id="related-carousel">
            {related-news}
        </div>
    </section>
    [/related-news]

    <div class="page__comments sb">
        <div class="sb__title">Комментарии ({comments-num})</div>
        <div class="page__comments-info far fa-exclamation-circle">Минимальная длина комментария - 50 знаков. Комментарии модерируются</div>
        {addcomments}
        <div class="page__comments-list [not-comments]page__comments-list--not-comments[/not-comments]" id="page__comments-list">
            [not-comments]<div class="message-info">Комментариев еще нет. Вы можете стать первым!</div>[/not-comments]
            {comments}{navigation}
        </div>
    </div>
    
</article>