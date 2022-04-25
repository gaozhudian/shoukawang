<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />
	<title>百分百收卡网_礼品卡兑换_一家专注二手礼品卡回收的网站 - 8ye.net 八爷源码 </title>
	<meta name="keywords" content="<?php echo C('KEYWORDS');?>">
	<meta name="description" content="<?php echo C('DESCRIPTION');?>">
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/base.css" />
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/style2.css" />
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/base2.css" />
	<script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?1d59f51ca1e06504857c1dbf0b8ba09c";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
	</script>
</head>
<body>
<!-- 顶部导航栏 -->
<header>
	<div class="head_z"></div>
	<div class="head_f">
		<div class="layout clear">
			<div class="logo fl">
				<a href="/">
				<img src="/Application/Home/Static/images/logo2.png" alt="">
				</a>
			</div>
			<ul class="head_list fl">
				<li class="">
					<a href="/">
						首页
					</a>
				</li>
				<li>
					<a href="<?php echo U('card/sellcard');?>">
						寄售中心
					</a>
				</li>
				<li><a href="<?php echo U('Card/recycle');?>">企业回收</a></li>
			</ul>
			<?php if(is_login()): ?><div class="user-right fr cf">
					<div class="user-right-name fl cf" >
						<a href="<?php echo U('User/index');?>"><img class="user-avatar fl" src="/Application/Home/Static/images/default.png">
							<span class="user-font fl"><?php echo ($userInfo['username']); ?></span>
							<img class="user-jiantou fl" src="/Application/Home/Static/images/xiangx@2x.png">
						</a>
						<div class="login-drop">
							<img class="dropDown-top" src="/Application/Home/Static/images/top.png" >
							<div class="dropDown-content">
								<a href="<?php echo U('User/index');?>">
									<div class="dropDown-floor cf">
										<!--<img class=" fl" src="/Application/Home/Static/images/subicon1.png" >-->
										<span class="fl" style="margin-left: 47px; ">账户中心</span>
									</div>
								</a>
								<!--<div class="line"></div>-->
								<!--<a href="<?php echo U('User/sellCardRecord');?>" target="_top">-->
								<!--<div class="dropDown-floor cf">-->
								<!--<img class=" fl" src="/Application/Home/Static/images/subicon3.png" >-->
								<!--<span class="fl">卖卡记录</span>-->
								<!--</div>-->
								<!--</a>-->
								<div class="line"></div>
								<!--<a href="<?php echo U('Home/Public/logout');?>">-->
								<div class="dropDown-floor">
									<!--<img class=" fl" src="/Application/Home/Static/images/subicon2.png" >-->
									<span class="fl loginout" style="margin-left: 47px; ">退出登录</span>
								</div>
								<!--</a>-->
							</div>
							<img class="dropDown-bto" src="/Application/Home/Static/images/bot.png" >
						</div>
					</div>

					<!--<div class=" content-right-box fr cf">-->
					<!--<img class="help-pic fl" src="/Application/Home/Static/images/bangz@2x.png">-->
					<!--<span class="user-help-font fr">帮助中心</span>-->
					<!--</div>-->
					<div class="user-right-help fr cf">
						<img class="help-pic fl" src="/Application/Home/Static/images/bangz@2x.png">
						<span class="user-help-font fr" style="cursor: pointer">帮助中心</span>

						<div class="dropDown-help help-login">
							<img class="dropDown-top" src="/Application/Home/Static/images/top.png" >
							<div class="help-content">
								<div class="help-title cf">
									<a href="<?php echo U('Help/Index');?>"> <span class="fl ">帮助中心</span></a>
									<div class="help-line fl"></div>
									<a href="<?php echo U('Help/Index',array('id'=>13));?>">  <span class="fr">卖卡流程</span></a>
								</div>
								<div class="line"></div>
								<div class="help-box">
									<div class="help-box-serve">或直接拨打客服热线</div>
									<div class="help-box-num">8373185</div>
									<div class="help-box-date">周一至周日 8:00-24:00</div>
								</div>
								<div class="line"></div>
								<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('QQ');?>&amp;site=qq&amp;menu=yes"><div class="help-box-bot">联系在线客服</div></a>
							</div>
							<img class="dropDown-bto" src="/Application/Home/Static/images/bot.png" >
						</div>
					</div>

				</div>
				<?php else: ?>
				<div class="fr login_box">
					<button class="btn_login loginbox">登录
						<div class="login_way shadow" style="display:none" >
							<ul>
								<li>
									<a href="">
										<img  src="/Application/Home/Static/images/shoujihao.png" >
										<span>账号密码</span>
									</a>
								</li>
								<li>  <a  href="https://graph.qq.com/oauth2.0/authorize?client_id=101578620&amp;response_type=token&amp;scope=all&amp;redirect_uri=http://www.shoukb.com/Home/Login/qq">
									<img src="/Application/Home/Static/images/qq.png" >
									<span>qq登录</span>
								</a>
								</li>
								<li>
									<a href="https://open.weixin.qq.com/connect/qrconnect?appid=wx6353058509cb4eda&redirect_uri=http://www.shoukb.com/Home/Index/webchatLogin&response_type=code&scope=snsapi_login&state=#wechat_redirect">
										<img  src="/Application/Home/Static/images/weixin.png" >
										<span>微信登录</span>
									</a>
								</li>
							</ul>
						</div>
					</button>
					<a href="" class="singup">
						<button class="btn_login" id="register">注册</button>
					</a>
				</div><?php endif; ?>
		</div>
	</div>
</header>

<!-- 侧边导航栏 -->
<div class="user-nav">
	<div class="user-sub-nav">
		<div class="user-sub-nav-floor nav-select cf" data-src="<?php echo U('User/user');?>">
			<div class="nav-box fl">
				<i class="icon-yonghzl1 icon-svg"></i>
			</div>
			<span class="user-nav-font fl">用户总览</span>
			<i class="icon-me_more_h icon-svg fr"></i>
		</div>
		<div class="user-sub-nav-floor cf" data-src="<?php echo U('User/meApply');?>">
			<div class="nav-box fl">
				<i class="icon-wytx icon-svg"></i>
			</div>
			<span class="user-nav-font fl">我要提现</span>
			<i class="icon-me_more_h icon-svg fr"></i>
		</div>
		<div class="user-sub-nav-floor floor-record cf" data-src="<?php echo U('User/record');?>">
			<div class="nav-box fl">
				<i class="icon-tixjl icon-svg"></i>
			</div>
			<span class="user-nav-font fl">提现记录</span>
			<i class="icon-me_more_h icon-svg fr"></i>
		</div>
		<p class="nav-br"></p>
		<div class="user-sub-nav-floor cf" data-src = "<?php echo U('User/sellCard');?>">
			<div class="nav-box fl">
				<i class="icon-woymk icon-svg"></i>
			</div>
			<span class="user-nav-font fl">我要卖卡</span>
			<i class="icon-me_more_h icon-svg fr"></i>
		</div>
		<div class="user-sub-nav-floor floor-sell-record cf" data-src = "<?php echo U('User/sellCardRecord');?>">
			<div class="nav-box fl">
				<i class="icon-maikjl icon-svg"></i>
			</div>
			<span class="user-nav-font fl">卖卡记录</span>
			<i class="icon-me_more_h icon-svg fr"></i>
		</div>
		<!--<div class="user-sub-nav-floor cf" data-src = "<?php echo U('User/statistics');?>">-->
			<!--<div class="nav-box fl">-->
				<!--<i class="icon-tongjjl icon-svg"></i>-->
			<!--</div>-->
			<!--<span class="user-nav-font fl">统计记录</span>-->
			<!--<i class="icon-me_more_h icon-svg fr"></i>-->
		<!--</div>-->
		<p class="nav-br"></p>
		<div class="user-sub-nav-floor  floor-phone cf" data-src = "<?php echo U('User/data');?>">
			<div class="nav-box fl">
				<i class="icon-zilgl icon-svg"></i>
			</div>
			<span class="user-nav-font fl">资料管理</span>
			<i class="icon-me_more_h icon-svg fr"></i>
		</div>
		<div class="user-sub-nav-floor cf" data-src = "<?php echo U('User/log');?>">
			<div class="nav-box fl">
				<i class="icon-caozrz icon-svg"></i>
			</div>
			<span class="user-nav-font fl">操作日志</span>
			<i class="icon-me_more_h icon-svg fr"></i>
		</div>
	</div>
	<div class="nav-serve cf">
		<img class="serve-img fl" src="/Application/Home/Static/images/kefu@2x.png">
		<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('QQ');?>&amp;site=qq&amp;menu=yes"><div class="serve-font fl">在线客服咨询</div></a>
	</div>
	<div class="serve-text">客服电话</div>
	<div class="serve-phone">400-863-3376</div>
	<div class="serve-date">(09：00-01:00)</div>
</div>

<!-- 导航栏右侧内容展示区 -->
<div class="user-content">
	<iframe id="iframe-page-content" name="right-content" src="<?php echo U('User/user');?>" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
</div>


<!-- 设置用户名弹出层 -->
<div class="pop-ups-name aletr-model"  data-type="name">
	<div class="pop-ups-name-title cf">
		<span class="fl">设置用户名</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<div class="pop-ups-name-content">
		<span>用户名：</span>
		<input type="text" value="" placeholder="请填写用户名" id="login_account"/>
	</div>
	<div class="pop-ups-name-point">
		用户名可用来登录，支持字母、数字的组合，6-20个字符，不支持中文
	</div>
	<div class="pop-ups-name-btn name_sub">提交</div>
</div>

<!-- 设置QQ弹出层 -->
<div class="pop-ups-name aletr-model"  data-type="qq">
	<div class="pop-ups-name-title cf">
		<span class="fl">设置QQ</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<div class="pop-ups-name-content">
		<span>QQ号码：</span>
		<input type="text" value="" placeholder="请填写QQ号码" id="qq"/>
	</div>
	<div class="pop-ups-name-point">
		<!--用户名可用来登录，支持字母、数字、“-”“_”的组合，6-20个字符，不支持中文-->
	</div>
	<div class="pop-ups-name-btn qq_sub">提交</div>
</div>

<!-- 绑定手机弹出层 -->
<div class="pop-ups-phone aletr-model"  data-type="bindPhone">
	<div class="pop-ups-name-title cf">
		<span class="fl">绑定手机号</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入手机号" />
	<div class="pop-ups-phone-input cf">
		<input class="pop-ups-phone-code fl" type="text" value="" placeholder="请输入验证码" />
		<span class="getcode fr">获取验证码</span>

	</div>
	<div class="phone-footer">
		<div class="pop-ups-phone-btn cf">
			<div class="phone-button leftColor fl phone_sub">确认</div>
			<div class="phone-button rightColor fr close">取消</div>
		</div>
	</div>
</div>
<!-- 绑定邮箱弹出层 -->
<div class="pop-ups-phone aletr-model"  data-type="bindEmail">
	<div class="pop-ups-name-title cf">
		<span class="fl">绑定邮箱</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入邮箱地址"/>
	<div class="pop-ups-phone-input cf">
		<input class="pop-ups-phone-code fl" type="text" value="" placeholder="请输入验证码" />
		<span class="getcode fr">获取验证码</span>
	</div>
	<div class="phone-footer">
		<div class="pop-ups-phone-btn cf">
			<div class="phone-button leftColor fl">确认</div>
			<div class="phone-button rightColor fr">取消</div>
		</div>
	</div>
</div>

<!-- 更改绑定手机弹出层 -->
<div class="pop-ups-phone aletr-model" data-type="setPhone">
	<div class="pop-ups-name-title cf">
		<span class="fl">更改绑定手机号</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入手机号" id="phone_tc"/>
	<div class="pop-ups-phone-input cf">
		<input class="pop-ups-phone-code fl" type="text" value="" placeholder="请输入验证码" id="code_tc"/>
		<!--<span class="getcode fr">获取验证码</span>-->
		<input type="button" value="获取验证码"  class="phone-msg sjgetcode ddgetcode getcode fr" id="sjgetcode_tc" />
	</div>
	<div class="phone-footer">
		<div class="pop-ups-phone-btn cf">
			<div class="phone-button leftColor fl phone_sub">确认</div>
			<div class="phone-button rightColor fr close_parent">取消</div>
		</div>
	</div>
</div>
<!-- 更改绑定邮箱弹出层 -->
<div data-type="setEmail" class="pop-ups-phone aletr-model">
	<div class="pop-ups-name-title cf">
		<span class="fl">更改绑定邮箱</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入邮箱地址" id="email_tc"/>
	<div class="pop-ups-phone-input cf">
		<input class="pop-ups-phone-code fl" type="text" value="" placeholder="请输入验证码" id="emailcode_tc"/>
		<input type="button" value="获取验证码"  class="phone-msg sjgetcode ddgetcode getcode fr" id="sjgetemailcode_tc" />
	</div>
	<div class="phone-footer">
		<div class="pop-ups-phone-btn cf">
			<div class="phone-button leftColor fl email_sub">确认</div>
			<div class="phone-button rightColor fr close_parent">取消</div>
		</div>
	</div>
</div>
<!-- 未提交有效卡卷弹出层 -->
<div data-type="card1" class="pop-ups-card aletr-model">
	<div class="pop-ups-name-title cf">
		<span class="fl">系统提示</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<img src="/Application/Home/Static/images/wu.png" class="card1-img" >
	<div class="card1-font">没有提交有效的卡券！</div>
	<div class="pop-ups-phone-btn card1-footer cf">
		<div class="phone-button leftColor fl close">确认</div>
		<div class="phone-button rightColor fr close">取消</div>
	</div>
</div>
<!-- 问题卡卷弹窗 -->
<div data-type="card2" class="pop-ups-card aletr-model">
	<div class="pop-ups-name-title cf">
		<span class="fl">系统提示</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<img src="/Application/Home/Static/images/tixing.png" class="card2-img" >
	<div class="card2-font" id="card2-font">共1张，发现1张问题卡券</div>
	<div class="card2-text ">【确定】强制提交</div>
	<div class="card2-text ">【取消】返回修改</div>
	<div class="pop-ups-phone-btn card2-footer cf">
		<div class="phone-button leftColor fl recoverycards">确认</div>
		<div class="phone-button rightColor fr close">取消</div>
	</div>
</div>

<!-- 设置支付宝弹出层 -->
<div class="pop-ups-name aletr-model"  data-type="alipay">
	<div class="pop-ups-name-title cf">
		<span class="fl">添加支付宝账户</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入支付宝账号" id="alipay"/>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="支付宝预留真实姓名" id="alipay_name"/>
	<div class="pop-ups-name-btn editalipay">提交</div>
</div>
<!-- 设置银行卡弹出层 -->
<div class="pop-ups-name aletr-model"  data-type="wechat" style="height:503px">
	<div class="pop-ups-name-title cf">
		<span class="fl">添加银行卡</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入银行卡号"  id="tjbankcardnum"/>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入开户行"  id="bankname"/>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入姓名" id="bkusername"/>
	<input class="pop-ups-phone-content" type="text" value="" placeholder="请输入预留手机" id="bankphone"/>
	<div class="pop-ups-name-btn editbankcardnum" data-id="2">提交</div>
</div>

<!-- 未实名认证弹出层 -->
<div data-type="no-permission" class="pop-ups-card aletr-model">
	<div class="pop-ups-name-title cf">
		<span class="fl">系统提示</span>
		<img class="fr close" src="/Application/Home/Static/images/close.png" >
	</div>
	<img src="/Application/Home/Static/images/wu.png" class="card1-img" >
	<div class="card1-font">请先实名认证！</div>
	<div class="pop-ups-phone-btn card1-footer cf">
		<div class="phone-button leftColor fl close">确认</div>
		<div class="phone-button rightColor fr close">取消</div>
	</div>
</div>
<div id="fullbg"></div>




</body>
<script src="/Application/Home/Static/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="/Application/Home/Static/js/user.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="/Public/layer/layer.js"></script>
<script type="text/javascript">
    $(".loginout").click(function(){
        layer.confirm("您确定要退出登录吗?", {btn: ['确定', '取消'], title: "提示"}, function (){
            window.location.href="<?php echo U('Home/Public/logout');?>";
        });
    });
    function topTo(){
        document.getElementById('iframe-page-content').scrollIntoView();
    }
	var is_login="<?php echo ($is_login); ?>";
	if(is_login!='' && is_login==3){
        layer.open({
            type: 2,
            title: false,
            area: ['680px', '470px'],

            shade: 0.8,
            shadeClose: true, //close
            content: ['<?php echo U("Home/Public/loginbox?type=2");?>', 'no'],

        });
	}
    /*手机跳转*/
    var goback = '';
    $('#iframe-page-content')[0].onload = function() {
        if (typeof goback === 'function') {
            goback();
            goback = '';
        }
    }
    function goPhone() {
        goback = function() {
            $('#iframe-page-content')[0].contentWindow.$('.data-nav-font').eq(3).click();
        }
        var p_address ="<?php echo U('User/data');?>";
        $('.user-sub-nav-floor').removeClass("nav-select");
        $('.floor-phone').addClass("nav-select");
        $("#iframe-page-content").attr("src", p_address);
    }






</script>
<script type="text/javascript">
    $('.content-right-box,.user-right-help').on('mouseover',function(){
        $('.dropDown-help').show();
    });

    $('.content-right-box,.user-right-help').on('mouseout',function(){

        $('.dropDown-help').hide()
    });
    var timeIframe;
    // 		window.onload = function() {
    // 			timeIframe = setTimeout(GetIframeStatus, 10);
    // 		}

    $(document).ready(function() {
        timeIframe = setTimeout(GetIframeStatus, 10);
    });

    function GetIframeStatus() {
        var iframe = document.getElementById("iframe-page-content");
        var iframeWindow = iframe.contentWindow;
        //内容是否加载完
        if (iframeWindow.document.readyState == "complete") {
            var iframeWidth, iframeHeight;
            //获取Iframe的内容实际宽度
            iframeWidth = iframeWindow.document.body.scrollWidth;
            //获取Iframe的内容实际高度
            iframeHeight = iframeWindow.document.body.scrollHeight;

			var minHeight = $('.user-content')[0].offsetHeight - 30;

			iframeHeight = minHeight>=iframeHeight?minHeight:iframeHeight+400;

            //设置Iframe的宽度
            // iframe.width = iframeWidth;
            //设置Iframe的高度
            iframe.height = iframeHeight;
        } else {
            timeIframe = setTimeout(GetIframeStatus, 10);
        }
    }
    $(document).ready(function(){
        $('.user-right-name').hover(function(){
            $('.login-drop').show();
        },function(){
            $('.login-drop').hide();
        })
    })
	//获取iframe的可视高度
	function getHeightWidth(){
       var height= $("#iframe-page-content").height();
       var width= $("#iframe-page-content").width();
	}
</script>

</html>