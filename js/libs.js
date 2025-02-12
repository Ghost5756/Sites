
$(document).ready(function(){
	
	/* ====================== BUILDING ====================== */
	var append = `
	<div class="overlay"></div>
	<div class="mobile-menu">
		<div class="mobile-menu__header d-flex ai-center">
			<button class="mobile-menu__btn-close btn-without-bg far fa-times" aria-label="Закрыть мобильное меню"></button>
		</div>
		<div class="mobile-menu__content"></div>
	</div>
	<button id="scrolltop" class="scrolltop far fa-arrow-up" aria-label="Наверх"></button>
	`;
	$('body').append(append);
	
	/* ====================== EVENTS ====================== */

	
	$(".theme-toggle").click(function(){
		if (localStorage.getItem('theme') === 'dark') {
			localStorage.removeItem('theme');
		} else {
			localStorage.setItem('theme','dark');
		};
		switchLight();
	});
	
	$('.search-block__input').blur(function(){
		$('body').removeClass('search-is-active');
	});
	$(document).on('click','.js-show-login',function(){
		$('.overlay, .login').fadeIn(200);
		$('body').addClass('modal-is-opened');
		return false;
	})
	.on('click','.js-show-login-panel',function(){
		$('.header__login-panel').fadeToggle(209);
	})
	.on('click','.js-show-search',function(){ 
		var scrWidth = window.innerWidth - document.body.offsetWidth;
		$('body').css({'--scrWidth':scrWidth+'px'});
		$('body').toggleClass('search-is-active');
		$('.search-block__input').focus();
		var searchWidth = $('.search-block__input').outerWidth();
		$('body').css({'--searchWidth':searchWidth+'px'});
	})
	.on('click','.mobile-menu__content .header__menu-has-submenu > a',function(){
		$(this).parent().toggleClass('is-active');
		$(this).parent().siblings().removeClass('is-active');
		return false;
	});	
	
	$(document).on('click','.js-show-trailer',function(){
		let iUrl = $(this).data('trg');
		$.ajax({
			url: iUrl,
			beforeSend: function() {ShowLoading('');},			 
			success: function(data) {
			   $('body').append('<div class="trl d-none" id="trl"><div class="trl__inner"><div class="trl__video video-inside video-responsive"></div><div class="trl__content"></div></div><button class="trl__close btn-without-bg far fa-times"></button></div>');
			   let trl = $('#trl');
			   $('body').addClass('trl-is-opened').removeClass('sinfo-is-opened');
			   trl.find('.trl__video').append($('#trailer-block iframe', data));
			   trl.find('.trl__content').append($('.scard__header h1', data));
			   trl.find('.trl__content').append($('.page__text', data));
			   trl.find('.trl__content').append('<a href="'+iUrl+'" class="trl__btn btn far fa-play">Смотреть онлайн</a>');
			   trl.fadeIn(200);
			   $('#sinfo, .overlay').fadeOut(200,function(){ $('#sinfo').remove(); });
			   trl.find('[data-src]').each(function(){
				   var trg = $(this).data('src');
				   $(this).attr('src',trg).removeAttr('data-src');
			   });
				HideLoading('');
			},
			  error: function() {HideLoading(''); alert('что-то пошло не так'); }
		});
	})
	.on('click','.trl__close',function(){
		$('.trl').fadeOut(200,function(){ $(this).remove(); });
		$('body').removeClass('trl-is-opened');
	});

	$('.tabs-block').each(function(){
		$(this).find('.tabs-block__select button:first').addClass('is-active');
		$(this).find('.tabs-block__content:first').removeClass('d-none');
	});
	$('.tabs-block__select').on('click', 'button:not(.is-active)', function() {
		$(this).addClass('is-active').siblings().removeClass('is-active')
		.parents('.tabs-block').find('.tabs-block__content').hide().eq($(this).index()).fadeIn(0);
		$('.tabs-block').find('[data-src]').each(function(){
			var trg = $(this).data('src');
			$(this).attr('src',trg).removeAttr('data-src');
		});
	});	
	
	$(".js-scroll-to").click(function(){
		$('html, body').animate({scrollTop:$('.page__player').offset().top - 0}, 800);
	});
	
	$(document).on('click','.pagination__btn-loader a',function(){
		var urlNext = $(this).attr('href'), scrollNext = $(this).offset().top;
		$.ajax({
			url: urlNext,
			beforeSend: function() { ShowLoading('<p class="bolder">Загрузка</p>Пожалуйста, подождите...','right','top'); },			 
			success: function(data) {
				$('#pagination').remove(); $('#dle-content').append($('#dle-content', data).html());
				window.history.pushState("", "", urlNext);
				$('html, body').animate({scrollTop:scrollNext}, 800);	
				$('.pagination__btn-loader span').text('Больше нет новостей');
				HideLoading('');
			},
			error: function() { HideLoading(''); alert('что-то пошло не так'); }
		});
		return false;
	});

	$(".js-show-mobile-menu").click(function(){
		if ($('.mobile-menu--is-generated').length === 0) {
			$('.header__logo').clone().addClass('flex-grow-1').prependTo('.mobile-menu__header');
			$('.js-this-in-mobile-menu').each(function() {
				$(this).clone().appendTo('.mobile-menu__content');
			});	
		};
		$('.overlay').fadeIn(200);
		$('.mobile-menu').addClass('is-active mobile-menu--is-generated');
		$('body').addClass('mobile-menu-is-opened');
	});
	$(document).on('click','.overlay, .login__close, .mobile-menu__btn-close',function(){
		$('.overlay, .login, .sinfo').fadeOut(200,function(){ $('#sinfo').remove(); });
		$('.mobile-menu').removeClass('is-active');
		$('body').removeClass('modal-is-opened mobile-menu-is-opened trl-is-opened sinfo-is-opened');
	});
	
	/* ====================== DLE SCRIPTS ====================== */

	$(document).on('click','.ac-form__editor textarea, .fr-wrapper, .ac-form',function(){
		$('.ac-form').addClass('is-active').find('.message-info').show();
		$('.ac-toggle').removeClass('ac-toggle');
	})
	.on('click','.login__social a, .serv__social a',function(){
	   	var href = $(this).attr('href'), width  = 820, height = 420, 
	   		left   = (screen.width  - width)/2, top   = (screen.height - height)/2-100;   
		auth_window = window.open(href, 'auth_window', "width="+width+",height="+height+",top="+top+",left="+left+"menubar=no,resizable=no,scrollbars=no,status=no,toolbar=no");
       	return false;
	}); 
	$('.js-comm-author').each(function(){
        var a = $(this), b = a.closest('.js-comm'), c = a.text().substr(0,1), 
            f = b.find('.js-comm-avatar'), e = f.children('img').attr('src'),
			d = ["#c57c3b","#753bc5","#79c53b","#eb3b5a","#45aaf2","#2bcbba","#778ca3"], rand = Math.floor(Math.random() * d.length);
		if (e == '/templates/'+dle_skin+'/dleimages/noavatar.png') {
            f.html('<div class="comm__letter d-flex jc-center ai-center" style="background-color:'+d[rand]+'">'+c+'</div>');
		};
    });	
	var gotop = $('#scrolltop'); 
	$(window).scroll (function () {
		if ( $(this).scrollTop () > 300 ) { gotop.addClass('is-active'); } 
		else { gotop.removeClass('is-active'); }
	});	
	gotop.click(function(){
		$('html, body').animate({ scrollTop : 0 }, 'slow');
	});
});

/* END */