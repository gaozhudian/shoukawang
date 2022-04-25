<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo C('WEB_SITE_TITLE');?>管理系统 - 8ye.net 八爷源码 </title>
    <link href="/Application/Sqnbcadmin/Static/images/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/base.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/common.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/module.css">
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/style.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/default_color.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Public/toastr/toastr.css" media="all">
    <!--[if lt IE 9]-->
    <script type="text/javascript" src="/Application/Sqnbcadmin/Static/js/jquery-1.10.2.min.js"></script>
    <!--[endif]-->
    <script type="text/javascript" src="/Application/Sqnbcadmin/Static/js/jquery-2.0.3.min.js"></script>
    <style type="text/css">
        .header{min-width: 1004px;}
        html { overflow-x: auto; overflow-y: hidden; }
    </style>
    
</head>
<body id="mainbody">
    <!-- 头部 -->
    <div class="header">
        <!-- Logo -->
        <span class="logo">
            <!-- <?php echo C('WEB_SITE_TITLE');?> -->每天收卡管理系统
        </span>
        <!-- /Logo -->

        <!-- 主导航 -->
        <ul class="main-nav" id="menu-nav"></ul>
        <!-- /主导航 -->

        <!-- 用户栏 -->
        <div class="user-bar">
            <a href="javascript:;" class="user-entrance"><i class="icon-user"></i></a>
            <ul class="nav-list user-menu hidden">
                <li class="manager">你好，<em title="<?php echo session('user_auth.user_name');?>"><?php echo session('admin_auth.nick_name');?></em></li>
                <li><a href="<?php echo U('Member/adminSetting');?>" target="mainIframe">个人信息设置</a></li>
                <li><a href="<?php echo U('Public/logout');?>">退出</a></li>
            </ul>
        </div>
    </div>
    <!-- /头部 -->

    <!-- 边栏 -->
    <div class="sidebar" style="overflow-y: scroll;" id="sidebar">
        <!-- 子导航 -->
        <div id="subnav" class="subnav"></div>
        <!-- /子导航 -->
    </div>
    <!-- /边栏 -->

    <!-- 内容区 -->
    <div id="main-content">
        <div id="main" class="main">
            <iframe src="about:blank" name="mainIframe" id="mainIframe" style="height:100%; width:100%; border: 0px;" frameborder="0"></iframe>
        </div>
    </div>
    <!-- /内容区 -->
    <!--[if gte IE 9]><!-->
    <script type="text/javascript" src="/Application/Sqnbcadmin/Static/js/jquery.mousewheel.js"></script>
    <!--<![endif]-->
    <script type="text/javascript" src="/Public/toastr/toastr.js" ></script>
    <script type="text/javascript" src="/Public/assets/js/wf-list.js" ></script>
    <script type="text/javascript" src="/Public/assets/plugins/layer-v2.0/layer/layer.js"></script>
    <script type="text/javascript" src="/Public/assets/plugins/laydate-v1.1/laydate/laydate.js"></script>
    <script type="text/javascript" src="/Public/assets/js/common.js"></script>
    <script type="text/javascript">
    (function(){
        var ThinkPHP = window.Think = {
            "ROOT"   : "", //当前网站地址
            "APP"    : "", //当前项目地址
            "PUBLIC" : "/Public", //项目公共目录地址
            "DEEP"   : "<?php echo C('URL_PATHINFO_DEPR');?>", //PATHINFO分割符
            "MODEL"  : ["<?php echo C('URL_MODEL');?>", "<?php echo C('URL_CASE_INSENSITIVE');?>", "<?php echo C('URL_HTML_SUFFIX');?>"],
            "VAR"    : ["<?php echo C('VAR_MODULE');?>", "<?php echo C('VAR_CONTROLLER');?>", "<?php echo C('VAR_ACTION');?>"]
        }
    })();
    </script>
    <script type="text/javascript" src="/Application/Sqnbcadmin/Static/js/common.js"></script>
    <script type="text/javascript">
        var MENU = <?php echo ($menus); ?>;

        function CreatNav (nav, obj) {
            
            var str = '';
            for (var key in nav) {
                // console.log(key);
                str += '<h3><i class="icon icon-unfold"></i>'+ key +'</h3>';

                var len = nav[key].length;
                str += '<ul class="side-sub-menu">'
                for (var i = 0; i < len; i++) {
                    str += '<li><a href="'+ nav[key][i]['url'] +'"  class="item" target="mainIframe"><span class="ico nav-list"></span>'+ nav[key][i]['title'] +'</a></li>';
                };
                str += '</ul>';

            }

            //填充到导航行栏
            $('#subnav').html(str);

            // 主菜单切换样式
            // console.log(nav['child']);
            $('#menu-nav li a').css('background', 'none');
            $(obj).css('background', 'rgba(48, 165, 255, 0.8)');
            // 子菜单切换样式
            $('#subnav li').click(function(){
                $('#subnav li').css('background', '');
                $(this).css('background', 'rgba(48, 165, 255, 0.8)');
            })
        }

        function CreatMenu () {
            var len = MENU.length;
            for (var i = 0; i < len; i++) {
                //alert(MENU[i][0]);
                //填充到菜单栏 
                $('#menu-nav').append('<li><a href="javascript:void(0)" onclick="javascript:CreatNav(MENU['+ i +'][\'child\'], this)">' + MENU[i]['title'] + '</a></li>');
            };

            //默认点击
            $('#menu-nav li:first-child a').click();
        }

        function ResizeWindow(){
            h = $(window).height();
            w = $(window).width();

            topHeight = $('.header').outerHeight(true);
            
            $('#sidebar, #main, #mainIframe').height(h - topHeight);
            $('#main, #mainIframe').width(w - $('#sidebar').outerWidth(true) );
        }

        $(function(){
            //生成菜单和左侧导航
            CreatMenu();

            //定位
            ResizeWindow();
            $(window).resize(function(){
                ResizeWindow();
            })
        })
		/* 头部管理员菜单 */
        $(".user-bar").mouseenter(function(){
            var userMenu = $(this).children(".user-menu ");
            userMenu.removeClass("hidden");
            clearTimeout(userMenu.data("timeout"));
        }).mouseleave(function(){
            var userMenu = $(this).children(".user-menu");
            userMenu.data("timeout") && clearTimeout(userMenu.data("timeout"));
            userMenu.data("timeout", setTimeout(function(){userMenu.addClass("hidden")}, 100));
        });
    </script>
    

    <!-- 新订单提醒-s -->
    <style type="text/css">
        .fl{ float:left; margin-left:10px; margin-top:4px}
        .fr{ float:right; margin-right:10px; margin-top:3px}
        .orderfoods{ width:200px; border:1px solid #dedede; position:absolute; bottom:50px; z-index:999; right:10px; background-color:#00A65A;opacity:0.8;-webkit-opacity:0.8;filter:alpha(opacity=80);-moz-opacity:0.8;  }
        .dor_head{ border-bottom:1px solid #dedede; height:28px; color:#FFF; font-size:12px}
        .dor_head:after{ content:""; clear:both; display:block}
        .dor_foot{ margin-top:6px; color:#FFF}
        .dor_foot p{ padding:0 12px}
        .te-in{ text-indent:2em;}
        .dor_foot p span{ color:red}
        .te-al-ce{ text-align:center}
    </style>
    <div id="ordfoo" class="orderfoods" style="">
        <div class="dor_head">
            <p class="fl">新订单通知</p>
            <p onClick="closes();" id="close" class="fr" style="cursor:pointer">x</p>
        </div>
        <div class="dor_foot">
            <p class="te-in">您有<span id="orderAmount"><?php echo ($card_amount); ?></span>个订单待处理</p>
            <p class="te-in">有<span id="payAmount"><?php echo ($payment_amount); ?></span>个提现申请待处理</p>
            <p class="te-in">有<span id="realAmount"><?php echo ($realment_amount); ?></span>个实名申请待处理</p>
            <p class="te-al-ce"><a href="<?php echo U('SaleRecord/index');?>" target="mainIframe"><span>点击查看</span></a></p>
        </div>
        <audio id="bgMusic">
            <source src="/Uploads/ddxdd.mp3" type="audio/mp3">

        </audio>
    </div>

    <script type="text/javascript">
        function closes(){
            is_close = 1;
            document.getElementById('ordfoo').style.display = 'none';
        }

    </script>
      <script type="text/javascript">
        var now_ordernum = 0; //现在订单的数量
        var now_paynum = 0; //现在提现的数量
         var now_realnum = 0;
        var is_close=0;
        function ajaxOrderNotice(){
            var url = '<?php echo U("Card/ajaxCardNotice");?>';
           // if(is_close > 0) return;
            $.get(url,function(data){
              /*  var arr = [];
                for(i in response){
                     arr.push(i);
                }*/
        
//有新订单且数量不跟上次相等 弹出提示realment_amount
                
         console.log(data.order_amount);
                console.log(data);
                if(data.payment_amount != now_paynum || data.order_amount != now_ordernum || data.realment_amount != now_realnum){
                    now_ordernum = data.order_amount;
                    now_paynum = data.payment_amount;
                    now_realnum = data.realment_amount;
                    var audio = document.getElementById("bgMusic");
                    audio.play();
                    if(document.getElementById('ordfoo').style.display == 'none'){
                        $('#payAmount').text(data.payment_amount);
                        $('#orderAmount').text(data.order_amount);
                        $('#realAmount').text(data.realment_amount);
                        $('#ordfoo').show();

                    }
                }
            })
        setTimeout('ajaxOrderNotice()',5000);
        }
        setTimeout('ajaxOrderNotice()',5000);
    </script>
</body>
</html>