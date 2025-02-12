<!DOCTYPE html>
<html lang="en">
<head>
    {headers}
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#111">
    <link rel="preload" href="{THEME}/css/common.css?v={cache-id}" as="style">
    <link rel="preload" href="{THEME}/css/styles.css?v={cache-id}" as="style">
    <link rel="preload" href="{THEME}/css/engine.css?v={cache-id}" as="style">
    <link rel="preload" href="{THEME}/css/fontawesome.css?v={cache-id}" as="style">
    <link rel="preload" href="{theme}/webfonts/nunito-400.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{theme}/webfonts/nunito-600.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{theme}/webfonts/nunito-700.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{theme}/webfonts/nunito-800.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{theme}/webfonts/fa-regular-400.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{theme}/webfonts/fa-solid-900.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="shortcut icon" href="{THEME}/images/favicon.png" type="image/png">
    <link href="{THEME}/css/common.css?v={cache-id}" type="text/css" rel="stylesheet">
    <link href="{THEME}/css/styles.css?v={cache-id}" type="text/css" rel="stylesheet">
    <link href="{THEME}/css/engine.css?v={cache-id}" type="text/css" rel="stylesheet">
    <link href="{THEME}/css/fontawesome.css?v={cache-id}" type="text/css" rel="stylesheet">
</head>

<body class="has-branding1 dt-is-active">
    <script src="playerjs.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        document.querySelectorAll(".custom-player").forEach(function(playerDiv) {
            let videoSrc = playerDiv.getAttribute("data-video");
            let player = new Playerjs({id: playerDiv, file: videoSrc});
        });
    });
</script>
    <script>
        function switchLight() {
            if (localStorage.getItem('theme') === 'dark') {
                document.querySelector('body').classList.remove('dt-is-active');
            } else {
                document.querySelector('body').classList.add('dt-is-active');
            };
        };
        switchLight();
    </script>

    <div class="wrapper">

        <div class="wrapper__container wrapper__container--main">

            <header class="header d-flex ai-center">
                <a href="/" class="header__logo ws-nowrap">Jemessonik.<span>film</span></a>
                <ul class="header__menu d-flex flex-grow-1 js-this-in-mobile-menu">
                    <li><a href="#">Фильмы</a></li>
                    <li><a href="#">Сериалы</a></li>
                    <li><a href="#">Мультфильмы</a></li>
                    <li><a href="#">Аниме</a></li>
                    <li><a href="#">Анонсы</a></li>
                    <li><a href="#">Подборки</a></li>
                </ul>
                <div class="header__search search-block flex-grow-1 d-none">
                    <form id="quicksearch" method="post">
                        <input type="hidden" name="do" value="search">
                        <input type="hidden" name="subaction" value="search">
                        <input class="search-block__input" id="story" name="story" placeholder="Поиск по сайту..." type="text" autocomplete="off">
                        <button class="search-block__btn far fa-search btn-without-bg" aria-label="Искать" type="submit"></button>
                    </form>
                </div>
                <button class="theme-toggle btn-without-bg far fa-sun" title="Сменить цвет сайта" aria-label="Сменить цвет сайта"></button>
                <button class="header__btn-search btn-without-bg far fa-search js-show-search" title="Открыть поиск" aria-label="Открыть поиск"></button>
                [group=5]<button class="header__btn-login js-show-login"><span>Войти</span></button>[/group]
                [not-group=5]{login}[/not-group]
                <button class="header__btn-menu far fa-bars d-none js-show-mobile-menu" aria-label="Открыть мобильное меню"></button>
            </header>

            <!-- END HEADER -->

            [available=main|cat]
            <div class="carousel">
                <div id="main-carousel" class="carousel__content">
                    {custom category="1-10" limit="16" order="date" template="custom-slide"}
                </div>
            </div>
            [/available]

            <div class="content">

                <div class="content__cols">

                    <main class="content__col-main">
                        {info}
                        [not-available=main|cat]<div class="speedbar ws-nowrap far fa-home">{speedbar}</div>[/not-available]
                        [available=main]<h1 class="content__title far fa-compact-disc">Смотреть фильмы онлайн в хорошем качестве</h1>[/available]
                        [available=cat]<h1 class="content__title far fa-compact-disc">{category-title}</h1>[/available]
                        <div class="sect sect--bg">
                            <div id='dle-content'>{content}</div>

                            {include file="main-seo.tpl"}
                        </div>
                    </main>

                    <aside class="content__col-side">
                        <div class="sb js-this-in-mobile-menu">
                            <div class="sb__title">Выбрать жанр</div>
                            <ul class="sb__content sb__nav">
                                <li><a href="/"><span>Главная</span></a></li>
                                <li><a href="#"><span>Вестерны</span></a></li>
                                <li><a href="#"><span>Криминал</span></a></li>
                                <li><a href="#"><span>Фантастика</span></a></li>
                                <li><a href="#"><span>Ужасы</span></a></li>
                                <li><a href="#"><span>Семейные</span></a></li>
                                <li><a href="#"><span>Боевики</span></a></li>
                                <li><a href="#"><span>Приключения</span></a></li>
                                <li><a href="#"><span>Комедии</span></a></li>
                                <li><a href="#"><span>Мюзиклы</span></a></li>
                                <li><a href="#"><span>Аниме</span></a></li>
                                <li><a href="#"><span>Фэнтези</span></a></li>
                                <li><a href="#"><span>Военные</span></a></li>
                                <li><a href="#"><span>Драмы</span></a></li>
                                <li><a href="#"><span>Мелодрамы</span></a></li>
                                <li><a href="#"><span>Исторические</span></a></li>
                                <li><a href="#"><span>Биографические</span></a></li>
                                <li><a href="#"><span>Детективы</span></a></li>
                                <li><a href="#"><span>Спортивные</span></a></li>
                                <li><a href="#"><span>Триллеры</span></a></li>
                                <li><a href="#"><span>Документальные</span></a></li>
                                <li><a href="#"><span>Мультфильмы</span></a></li>
                                <li><a href="#"><span>Сериалы</span></a></li>
                            </ul>
                        </div>
                        <div class="sb">
                            <div class="sb__title">Популярное</div>
                            <div class="sb__content d-flex gap-10">
                                {custom limit="10" category="1-10" template="custom-popular" cache="yes"}
                            </div>
                        </div>
                        <div class="sb">
                            <div class="sb__title">Комментарии</div>
                            <div class="sb__content d-flex gap-10">
                                {customcomments template="custom-comms" limit="5" cache="no"}
                            </div>
                        </div>
                    </aside>

                </div>

            </div>

            <!-- END CONTENT -->

            <footer class="footer d-flex ai-center jc-center">
                <div class="footer__text flex-grow-1">
                    Copyright © 2025 - JEMESSONIK. Все права защищены. <a href="https://datae/pravoobladateliam.html">Правообладателям</a>
                </div>
                <div class="footer__counter">
                    <img src="{theme}/images/counter.gif" loading="lazy" alt="">
                </div>
            </footer>

            <!-- END FOOTER -->

        </div>

        <!-- END WRAPPER-MAIN -->

    </div>

    <!-- END WRAPPER -->

    
    [group=5]{login}[/group]

    {jsfiles}
    <script src="{THEME}/js/libs.js?v={cache-id}"></script>
    <script src="{THEME}/js/owl-carousel.js?v={cache-id}"></script>
    {AJAX}
     <script src="{THEME}/js/playerjs.js"></script>
</html>