
    document.addEventListener("DOMContentLoaded", function () {
        var config1 = {
            id: "player1",
            file: "https://www.youtube.com/embed/cU6JjGfTvr0",
            poster: "poster1.jpg" // Можеш замінити на своє прев’ю
        };
        var config2 = {
            id: "player2",
            file: "https://www.youtube.com/embed/cU6JjGfTvr0",
            poster: "poster2.jpg"
        };

        var player1 = new Playerjs(config1);
        var player2 = new Playerjs(config2);
    });
