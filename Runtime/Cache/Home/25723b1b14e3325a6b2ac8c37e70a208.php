<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    
    <meta name="keywords" content="<?php echo C('KEYWORDS');?>">
    <meta name="description" content="<?php echo C('DESCRIPTION');?>">
    <!--<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/base.css"/>-->
    
	<meta name="keywords" content="京东E卡 京东钢蹦 中国石化加油充值卡 中国石油加油充值卡 移动电信联通话费充值卡亚马逊礼品卡回收
">
	<meta name="description" content="爱卡网是一家提供电商超市、加油、旅游等礼品充值购物卡回收，收购，买卖的交易平台，我们努力做好礼品购物卡买卖的交易服务。">
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/base1.css"/>
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/dataInfo.css"/>

</head>
<body>
    
		<div class="dataInfo">
			<!--<div class="active">-->
				<!--<div class="dataInfo-font">-->
					<!--<span class="dataInfo-user-num">登录账号：</span>-->
					<!--<span>41f56a4566</span>-->
				<!--</div>-->
				<!--<div class="dataInfo-font cf">-->
					<!--<span class="dataInfo-user-num fl">真实姓名：</span>-->
					<!--<div class="apply-name-font fl cf">-->
						<!--<span class="apply-userName fl">陈明达</span>-->
						<!--<div class="apply-name-attest fl cf">-->
							<!--<img class="apply-name-attest-img fl" src="/Application/Home/Static/images/renz.png" >-->
							<!--<span class="apply-name-attest-font fl">已认证</span>-->
						<!--</div>-->
						<!--<span class="dataInfo-br fl">|</span>-->
						<!--<span class="dataInfo-font-color fl">查看</span>-->
					<!--</div>-->
				<!--</div>-->
				<!--<div class="dataInfo-font">-->
					<!--<span class="dataInfo-user-num">联系QQ:</span>-->
					<!--<span>123456789</span>-->
					<!--<span class="dataInfo-br">|</span>-->
					<!--<span class="dataInfo-font-color">修改QQ</span>-->
				<!--</div>-->
				<!--<div class="dataInfo-font">-->
					<!--<span class="dataInfo-user-num">手机绑定：</span>-->
					<!--<span>186*****4587</span>-->
					<!--<span class="dataInfo-br">|</span>-->
					<!--<span class="dataInfo-font-color">更改手机</span>-->
				<!--</div>-->
				<!--<div class="dataInfo-font">-->
					<!--<span class="dataInfo-user-num">邮箱设置：</span>-->
					<!--<span>4567*****@qq.com</span>-->
					<!--<span class="dataInfo-br">|</span>-->
					<!--<span class="dataInfo-font-color">修改邮箱</span>-->
				<!--</div>-->
			<!--</div>-->
			<!-- 未认证状态 -->
			<div class="no-active">
				<div class="dataInfo-font">
					<span class="dataInfo-user-num">登录账号：</span>
					<?php if($user_info['login_account'] == ''): ?><span data-type="name" class="dataInfo-font-color show_alert_model">设置用户名</span>
					<span class="dataInfo-br">|</span>
					<span class="dataInfo-font-text zh-color">用户名可用来登录，支持字母、数字、“-”“_”的组合，6-20个字符，不支持中文</span>
						<?php else: ?>
						<span><?php echo ($user_info['login_account']); ?></span><?php endif; ?>
				</div>
				<div class="dataInfo-font">
					<?php if($user_info['is_permission'] == 0): ?><span class="dataInfo-user-num">真实姓名：</span>
						<a href="<?php echo U('User/data',array('type'=>2));?>" target="_parent"><span class="dataInfo-font-color">马上去实名认证</span></a>
					<span class="dataInfo-br">|</span>
					<span class="dataInfo-font-text name-color">实名认证之后才可以提现哦</span>
						<?php elseif($user_info['is_permission'] == 1): ?>
						<span class="dataInfo-user-num fl">真实姓名：</span>
						<div class="apply-name-font fl cf">
						<span class="apply-userName fl"><?php echo ($user_info['name']); ?></span>
						<div class="apply-name-attest fl cf">
						<img class="apply-name-attest-img fl" src="/Application/Home/Static/images/renz.png" >
						<span class="apply-name-attest-font fl">已认证</span>
						</div>
						<span class="dataInfo-br fl">|</span>
						<a href="<?php echo U('DataInfo/nameAttest');?>">	<span class="dataInfo-font-color fl">查看</span></a>
						</div>
					<?php else: ?>
						<span class="dataInfo-user-num fl">真实姓名：</span>
						<div class="apply-name-font fl cf">
							<span class="apply-userName fl"><?php echo ($user_info['name']); ?></span>
							<div class="apply-name-attest fl cf">
								<img class="apply-name-attest-img fl" src="/Application/Home/Static/images/renz.png" >
								<span class="apply-name-attest-font fl">待审核</span>
							</div>
							<!--<span class="dataInfo-br fl">|</span>-->
							<!--<span class="dataInfo-font-color fl">查看</span>-->
						</div><?php endif; ?>
                    </div>
                    <div class="dataInfo-font">
						<?php if($user_info['qq'] == ''): ?><span class="dataInfo-user-num">联系QQ：</span>
                        <span data-type="qq" class="dataInfo-font-color show_alert_model">设置QQ号</span>
                        <span class="dataInfo-br">|</span>
                        <span class="dataInfo-font-text zh-color">请设置您的QQ号码，方便我们在处理您提交的卡密有问题时能及时联系到您</span>
							<?php else: ?>
							<span class="dataInfo-user-num">联系QQ:</span>
							<span><?php echo ($user_info['qq']); ?></span>
							<span class="dataInfo-br">|</span>
							<span data-type="qq"  class="dataInfo-font-color show_alert_model">修改QQ</span><?php endif; ?>
                    </div>
                    <div class="dataInfo-font">
						<span class="dataInfo-user-num">手机绑定：</span>
						<?php if($user_info['phone'] == ''): ?><a href="<?php echo U('DataInfo/phone');?>" ><span data-type="bindPhone" class="dataInfo-font-color show_alert_model">马上去绑定</span></a>
							<?php else: ?>

						<span><?php echo ($user_info['phone']); ?></span>
						<span class="dataInfo-br">|</span>
							<a href="<?php echo U('DataInfo/phone');?>" ><span class="dataInfo-font-color">更改手机</span></a><?php endif; ?>
                    </div>
                    <div class="dataInfo-font">
						<?php if($user_info['email'] == ''): ?><span class="dataInfo-user-num">邮箱设置：</span>
							<a href="<?php echo U('DataInfo/email');?>" ><span  class="dataInfo-font-color">马上去设置</span></a>
							<?php else: ?>
						<span class="dataInfo-user-num">邮箱设置：</span>
						<span><?php echo ($user_info['email']); ?></span>
						<span class="dataInfo-br">|</span>
						<span class="dataInfo-font-color">修改邮箱</span><?php endif; ?>
                    </div>
                </div>
            </div>
    
    <script src="/Application/Home/Static/js/jquery.js"></script>
    <script src="/Public//layer/layer.js"></script>

        <script src="/Application/Home/Static/js/jquery.js" type="text/javascript" charset="utf-8"></script>
        <script src="/Application/Home/Static/js/dataInfo.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
            var parent_obj= parent.parent;
            var name='';
            /*账号*/
            parent_obj.$("body .name_sub").on('click', function(){
                name = parent_obj.$('#login_account').val();
                reg = /^(\d|[a-zA-Z])+$/;
                if(name == ''){
                    alert('账号不能为空');
                    return false;
                }else if(!reg.test(name)){
                    alert('必须是字母或数字');
                    return false;
                }

                if(name.length<6 || name.length>20){
                    alert('用户名为6-20位');
                    return false;
				}

                $.ajax({
                    type: 'post',
                    data: {'login_account':name},
                    url: "<?php echo U('Home/User/editlogin_account');?>",
                    success: function (data) {
                        if(data.status==1){
                            parent_obj.$(".name_sub").parent().hide();
                            parent_obj.$('#fullbg').hide();
                            window.location.reload();

                        }else{
                            console.log(data);
                            alert(data.info);
                        }
                    }
                });
            })

            parent_obj.$("body .qq_sub").on('click', function(){
                qq = parent_obj.$('#qq').val();
                if(qq == ''){
                    alert('qq不能为空');
                    return false;
                }else {
                    $.ajax({
                        type: 'post',
                        data: {'qq':qq},
                        url: "<?php echo U('Home/User/editqq');?>",
                        success: function (data) {
                            if(data.status==1){
                                parent_obj.$(".qq_sub").parent().hide();
                                parent_obj.$('#fullbg').hide();
                                window.location.reload();

                            }else{
                                console.log(data);
                                alert(data.info);
                            }
                        }
                    });
                }
            })


		</script>

		<script type="text/javascript">
			$(document).ready(function(){
				parent.GetIframeStatus();
			})
		</script>
    
</body>
</html>