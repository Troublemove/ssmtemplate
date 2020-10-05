var lightyear = function(){
	
	/**
	 * 页面loading
	 */
	var pageLoader = function($mode) {
		var $loadingEl = jQuery('#loader-wrapper');
		    $mode      = $mode || 'show';
		if ($mode === 'show') {
			if ($loadingEl.length) {
				$loadingEl.fadeIn(250);
			} else {
				jQuery('body').prepend('<div id="loader-wrapper"><div id="loader"></div><div class="loader-section section-left"></div><div class="loader-section section-right"></div><div id="load_title">loading...</div></div>');
			}
		} else if ($mode === 'hide') {
			if ($loadingEl.length) {
				$loadingEl.fadeOut(250);
			}
		}
		return false;
	};
	
    /**
     * 页面小提示
     * @param $msg 提示信息
     * @param $type 提示类型:'info', 'success', 'warning', 'danger'
     * @param $delay 毫秒数，例如：1000
     * @param $icon 图标，例如：'fa fa-user' 或 'glyphicon glyphicon-warning-sign'
     * @param $from 'top' 或 'bottom'
     * @param $align 'left', 'right', 'center'
     */
    var tips = function ($msg, $type, $typeIn, $typeOut, $delay, $from, $align) {
        $type  = $type || 'info';
        $delay = $delay || 1000;
        $from  = $from || 'top';
        $align = $align || 'right';

        $.notify({
        	icon: 'glyphicon glyphicon-warning-sign',
        	//title: 'Bootstrap notify',
            message: $msg,
            target: '_blank'
        },
        {
            element: 'body',
            position: null,
            type: $type,
            allow_dismiss: true,
            newest_on_top: true,// 往上顶动画
            showProgressbar: false,//消失进度条
            placement: {
                from: $from,
                align: $align
            },
            offset: 10,
            spacing: 10,
            z_index: 10800,
            delay: $delay,
            timer: 1000,
            mouse_over: null,
            animate: {
                enter: $typeIn,
                exit: $typeOut
            },
            onShow: null,
        	onShown: null,
        	onClose: null,
        	onClosed: null,
        	icon_type: 'class'
        });
    };
	
	return {
        // 页面小提示
        notify  : function ($msg, $type, $typeIn, $typeOut, $delay, $from, $align) {
            tips($msg, $type, $typeIn, $typeOut, $delay, $from, $align);
        },
        // 页面加载动画
		loading : function ($mode) {
		    pageLoader($mode);
		}
    };
}();