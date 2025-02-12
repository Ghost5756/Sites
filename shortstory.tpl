<article class="scard">
    <header class="scard__header">
        <a href="{full-link}" class="scard__link d-block">
            <h3 class="scard__title line-clamp">{title}</h3>
        </a>
        <div class="scard__category ws-nowrap fas fa-dot-circle"><a href="">Фильмы</a></div>
    </header>
    <div class="scard__descr">
        <div class="scard__text line-clamp">{short-story limit="500"}</div>
    </div>
    <footer class="scard__footer d-flex ai-center">
        <div class="scard__footer-item far fa-clock">{date=d M Y, H:i}</div>
        <div class="scard__footer-item far fa-eye">{views}</div>
        <div class="scard__footer-item far fa-comments-alt flex-grow-1">{comments-num}</div>
        <a href="{full-link}" class="scard__btn btn far fa-arrow-circle-right fa-pull-right">Смотреть онлайн</a>
    </footer>
    <div class="scard__left p-relative">
        <a href="{full-link}" class="scard__img img-fixed-size">
            <img data-src="[xfvalue_thumb_url_poster]" alt="{title}" loading="lazy">
        </a>
        <button class="scard__btn-trailer fas fa-play js-show-trailer" data-trg="{full-link}" data-text="Трейлер" aria-label="Смотреть трейлер {title}"></button>
        <div class="scard__fav">
            [group=5]<a href="#" class="js-show-login far fa-bookmark" title="Добавить в избранное {title}" aria-label="Добавить в избранное {title}"></a>[/group]
            [not-group=5]
            [add-favorites]<span class="far fa-bookmark" title="Добавить в избранное"></span>[/add-favorites]
            [del-favorites]<span class="fas fa-bookmark scard__fav-added" title="Убрать из избранного"></span>[/del-favorites]
            [/not-group]
        </div>
    </div>
</article>