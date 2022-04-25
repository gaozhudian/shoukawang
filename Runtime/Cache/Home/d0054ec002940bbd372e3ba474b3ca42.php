<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    
	<title>百分百收卡网_礼品卡兑换_一家专注二手礼品卡回收的网站 - 8ye.net 八爷源码 </title>

    <meta name="keywords" content="<?php echo C('KEYWORDS');?>">
    <meta name="description" content="<?php echo C('DESCRIPTION');?>">
    <!--<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/base.css"/>-->
    
	<title>百分百收卡网_礼品卡兑换_一家专注二手礼品卡回收的网站 - 8ye.net 八爷源码 </title>
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/MeApply.css"/>
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/style.css"/>
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/base1.css"/>
	<style type="text/css">
		.apply-card{display:none}
	</style>

</head>
<body>
    
		<!-- 未实名认证 -->
	<?php if(($user_info['is_permission'] == 0) || ($user_info['is_permission'] == 2)): ?><div id="apply-active" style="display: block">
			<div class="me-apply">
				<div class="me-apply-title">我要提现</div>
				<div class="apply-way">
					<div class="apply-way-top cf">
						<div class="apply-way-top-title fl">提现方式：</div>
						<div class="apply-zfb apply-bg fl">
							<span class="apply-box">
								<i class="icon-zfb_c icon-svg"></i>
							</span>
							<span class="apply-zfb-font">提现至支付宝</span>
						</div>
						<div class="apply-zfb fl">
							<span class="apply-box">
								<i class="icon-yhk_h icon-svg"></i>
							</span>
							<span class="apply-zfb-font">提现至银行卡</span>
						</div>
					</div>
					<div class="apply-way-under">推荐支付宝提现，免手续费，实时到账</div>
				</div>
				<div class="apply-name cf">
					<div class="apply-way-top-title fl">收款姓名：</div>
					<div class="apply-name-font fl">未知，<a href="<?php echo U('User/data',array('type'=>2));?>" target="_self"><span class="certification">马上去实名认证</span></a></div>
				</div>
				<div class="apply-card cf" style="display: block">
					<div class="apply-card-top-title fl">支付宝账号：</div>
					<div class="apply-card-right fl">
						<span class="card-font-color show_alert_model" data-type="no-permission">+添加支付宝账号</span>
						<span class="apply-card-none">|</span>
						<a href="<?php echo U('User/data',array('type'=>6,'bank_type'=>1));?>" target="_self"><span class="card-font-color">管理</span></a>
					</div>
				</div>
				<div class="apply-card cf " >
					<div class="apply-card-top-title fl">银行卡账号：</div>
					<div class="apply-card-right fl">
						<span class="card-font-color show_alert_model" data-type="no-permission">+添加银行卡</span>
						<span class="apply-card-none">|</span>
						<a href="<?php echo U('User/data',array('type'=>6,'bank_type'=>2));?>" target="_self"><span class="card-font-color">管理</span></a>
					</div>
				</div>
				<div class="apply-money">
					<div class="apply-money-top">
						<div class="apply-money-top-title">
							<span class="apply-point">*</span>提现金额：
							<input type="text" name="" value="" />
							<span>元</span>
							<span class="apply-card-none">|</span>
							<span>可提现金额：</span>
							<span>0.00</span>元
						</div>
					</div>
					<div class="apply-money-under">单笔提现不能超过50000元</div>
				</div>
				<div class="apply-footer">
					<input type="button" name="" value="实名认证后才可提现" class="apply-footer-btn"/>
					<a href="<?php echo U('User/data',array('type'=>2));?>" target="_self"><span>去实名认证&gt;</span></a>
				</div>
			</div>
		</div>
<?php else: ?>
		<!-- 已实名认证 -->
		<div id="apply-no-active" style="display: block">
			<div class="me-apply">
				<div class="me-apply-title">我要提现</div>
				<div class="apply-way">
					<div class="apply-way-top cf">
						<div class="apply-way-top-title fl">提现方式：</div>
						<div class="apply-zfb apply-bg fl" data-id="1">
							<span class="apply-box">
								<i class="icon-zfb_c icon-svg"></i>
							</span>
							<span class="apply-zfb-font">提现至支付宝</span>
						</div>
						<div class="apply-zfb fl" data-id="2">
							<span class="apply-box">
								<i class="icon-yhk_h icon-svg"></i>
							</span>
							<span class="apply-zfb-font">提现至银行卡</span>
						</div>
					</div>
					<div class="apply-way-under">推荐支付宝提现，免手续费，实时到账</div>
				</div>
				<div class="apply-name cf">
					<div class="apply-way-top-title fl">收款姓名：</div>
					<div class="apply-name-font fl cf">
						<span class="apply-userName fl"><?php echo ($user_info['name']); ?></span>
						<div class="apply-name-attest fl cf">
							<img class="apply-name-attest-img fl" src="/Application/Home/Static/images/renz.png" >
							<span class="apply-name-attest-font fl">已认证</span>
						</div>
					</div>
				</div>
				<div class="apply-card cf " style="display: block">
					<div class="apply-card-top-title fl">支付宝账号：</div>
					<div class="apply-card-right fl cf">
						<div class="apply-card-input fl">
							<img class="apply-card-input-img" src="/Application/Home/Static/images/zfb_c.png" >
							<input type="text" value="<?php echo ($account_alipay['cardnum']); ?>" disabled/>
							<input type="hidden" value="<?php echo ($account_alipay['id']); ?>" id="alipay"/>
						</div>
						<span class="card-font-color fl show_alert_model" data-type="alipay">+添加支付宝账号</span>
						<span class="apply-card-none fl">|</span>
						<a href="<?php echo U('User/data',array('type'=>6,'bank_type'=>1,'from_action'=>2));?>" target="_self"><span class="card-font-color fl">管理</span></a>
					</div>
				</div>
				<div class="apply-card cf " >
					<div class="apply-card-top-title fl">银行卡账号：</div>
					<div class="apply-card-right fl cf">
						<div class="apply-card-input fl">
							<img class="apply-card-input-img" src="/Application/Home/Static/images/yhk_c.png" >
							<input type="text" value="<?php echo ($account_wechat['cardnum']); ?>" />
							<input type="hidden" value="<?php echo ($account_wechat['id']); ?>" id="bankcardnum"/>
						</div>
						<span class="card-font-color fl show_alert_model" data-type="wechat">+添加银行卡</span>
						<span class="apply-card-none fl">|</span>
						<a href="<?php echo U('User/data',array('type'=>6,'bank_type'=>2,'from_action'=>2));?>" target="_self"><span class="card-font-color fl">管理</span></a>
					</div>
				</div>

				<div class="apply-money withdraw-account" >
					<div class="apply-money-top">
						<div class="apply-money-top-title">
							<span class="apply-point">*</span>提现金额：
							<input type="text" name="" value="" id="money"/>
							<span>元</span>
							<span class="apply-card-none">|</span>
							<span>可提现金额：</span>
							<span><?php echo ($user_info['balance']); ?></span>元
						</div>
				</div>
				<div class="apply-money-under">单笔提现不能超过50000元</div>
			</div>
			<div class="apply-footer">
				<input type="hidden" value="1" id="type"/>
				<div class="apply-footer-btn alipaybtn">确认提现</div>
				<div class="apply-footer-font">提现成功后请在支付宝账单中查看明细</div>
			</div>
		</div>
		</div><?php endif; ?>

    <script src="/Application/Home/Static/js/jquery.js"></script>
    <script src="/Public//layer/layer.js"></script>

	<script src="/Application/Home/Static/js/jquery.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">

        var type=$(".apply-zfb ").attr('data-id');
        bank_type="<?php echo ($bank_type); ?>";
        if(bank_type){
            if(bank_type==2){
                $(".apply-zfb").removeClass("apply-bg");
                $(".apply-zfb").eq(1).addClass("apply-bg");
                $('.apply-card').css('display','none');
                $('.apply-card').eq(1).css('display','block');
                types= $('.apply-card').eq(1).attr('data-id');
                $("#type").val(types);
                type=$("#type").attr('data-id');
            }
		}

		$(function() {
			$(".apply-zfb ").on("click", function() {
				$(this).addClass("apply-bg").siblings().removeClass("apply-bg");
                var index =$('.apply-zfb').index(this);
                $('.apply-card').css('display','none');
                $('.apply-card').eq(index).css('display','block');
                 types=$(this).attr('data-id');
                $("#type").val(types);
                type=$("#type").attr('data-id');
			});
		});
        $('.show_alert_model').on('click', function() {
            window.parent.showModel($(this).data('type'));
        })

		$(".apply-footer-btn").click(function(){
            type=$(".apply-bg ").attr('data-id');
			if(type==1){
                alipaybtn();
			}else{
                bank();
			}
		});


        //支付宝提现申请
       // $(".alipaybtn").click(function () {
            function alipaybtn(){
                console.log('sdfsda');
               // $(".alipaybtn").attr('disabled',"true");
                var hasmoney = "<?php echo ($user_info['balance']); ?>";
                money = $('#money').val();
                alipay = $('#alipay').val();
                if(money == ''){
                    alert("提现金额不能为空");
                    return false;
                }
                if(alipay == ''){alert("提现账户不正确");return false;}
                if(money < 0){alert("提现金额不正确");return false;}
                if (!/^\d+(.\d+)?$/.test(money.replace(/,/g, ''))) {
                    alert("请输入正确的金额");  return false;
				}
                if(money == 0){
                    alert("提现金额不能为0");
                    return false;}
                if(money>50000){
                    alert("提现金额不能超过50000");
                    return false;
                }
                // if(paypassword == ''){alert("提现密码不能为空");return false;}
                if(money*1 > hasmoney*1){ alert("提现金额不能大于账户余额");return false;}
                if(money != '' && alipay != ''){
                    console.log('35345634563');
                    $.ajax({
                        type: 'post',
                        data: {'money': money,'account_id':alipay,'paytype':1},
                        url: "<?php echo U('Home/User/withcash_apply');?>",
                        success: function (data) {
                            console.log(data);
                            if(data.status==1){
                                console.log('11111111111');
                                $(".bkdrop").hide();

                                console.log(data);
                                alert('申请成功');
                                //parent.location.reload();
                                window.location.href = "<?php echo U('/Home/User/record');?>";
                            }else{
                                console.log('22222222222222');
                                console.log(data);
                                alert(data.info);
                                $(".alipaybtn").removeAttr("disabled");
                            }
                        }
                    });
                }
            }


           // $(".alipaybtn").attr('disabled',"true");






        //银行卡提现申请
		function bank(){
            $(".alipaybtn").attr('disabled',"true");
            var hasmoney = <?php echo ($user_info['balance']); ?>;
            money = $('#money').val();
            alipay = $('#bankcardnum').val();

            paytype = 2;
            if(money == ''){
                alert("提现金额不能为空");
                return false;
            }
            if(alipay == ''){alert("提现账户不正确");return false;}
            if(money < 0){alert("提现金额不正确");return false;}
            if (!/^\d+(.\d+)?$/.test(money.replace(/,/g, ''))) {
                alert("请输入正确的金额");  return false;
            }
            if(money == 0){
                alert("提现金额不能为0");
                return false;
            }
            if(money>50000){
                alert("提现金额不能超过50000");
                return false;
			}

            if(money > hasmoney){ alert("提现金额不能大于账户余额");return false;}
            if(money != '' && alipay != ''){
                $.ajax({
                    type: 'post',
                    data: {'money': money,'account_id':alipay,'paytype':2},
                    url: "<?php echo U('Home/User/withcash_apply');?>",
                    success: function (data) {
                        if(data.status==1){
                            $(".bkdrop").hide();
                            console.log(data);
                            alert('申请成功');
                            //parent.location.reload();
                            window.location.href = "<?php echo U('/Home/User/record');?>";
                        }else{
                            console.log(data);
                            alert(data.info);
                            $(".alipaybtn").removeAttr("disabled");
                        }
                    }
                });
            }
		}
        // parent.$('.user-sub-nav-floor').removeClass("nav-select");
        // parent.$('.floor-phone').addClass("nav-select");
        // parent.$("#iframe-page-content").attr("src", p_address);

        var parent_obj= parent.parent;
        /*支付宝*/
        parent_obj.$("body .editalipay").on('click', function(){
            alipay = parent_obj.$('#alipay').val();
            alipay_name = parent_obj.$('#alipay_name').val();
            if(alipay == ''){
                console.log(bankcardnum);
                alert('支付宝账号不能为空');
                return false;
            }
            if(alipay_name == ''){
                alert('真实姓名不能为空');
                return false;
            }
            if(!alipay || !alipay_name){
                alert('请正确填写支付宝信息');
                return false;
            }else {
                $.ajax({
                    type: 'post',
                    data: {'cardnum':alipay,'name':alipay_name,type:1},
                    url: "<?php echo U('Home/User/addAccountNumber');?>",
                    success: function (data) {
                        if(data.status==1){
                            alert('添加成功');
                            parent_obj.$(".editalipay").parent().hide();
                            parent_obj.$('#fullbg').hide();
                            parent_obj.$('#alipay').val('');
                            parent_obj.$('#alipay_name').val('');
                            parent.parent.$("body .editalipay").unbind();
                            window.location.href = "<?php echo U('/Home/User/meapply',array('bank_type'=>1));?>";
                        }else{
                            console.log(data);
                            alert(data.info);
                        }
                    }
                });
            }
        })
        /*银行卡*/
        parent_obj.$(".editbankcardnum").on('click', function() {
            bankname = parent_obj.$('#bankname').val();
            bankcardnum = parent_obj.$('#tjbankcardnum').val();
            bankphone = parent_obj.$('#bankphone').val();
            username = parent_obj.$('#bkusername').val();
            if(bankcardnum == ''){
                console.log(bankcardnum);
                alert('银行卡卡号不能为空');
                return false;
            }
            if(bankphone == ''){
                alert('银行预留手机号不能为空');
                return false;
            }
            if(!bankname || !username){
                alert('请正确填写银行卡信息');
                return false;
            }else {
                $.ajax({
                    type: 'post',
                    data: {'phone': bankphone,'cardnum':bankcardnum,'opening_bank':bankname,'name':username,type:2},
                    url: "<?php echo U('Home/User/addAccountNumber');?>",
                    success: function (data) {
                        if(data.status==1){
                            alert('添加成功');
                            parent_obj.$(".editbankcardnum").parent().hide();
                            parent_obj.$('#fullbg').hide();
                            parent_obj.$('#bankname').val('');
                            parent_obj.$('#tjbankcardnum').val('');
                            parent_obj.$('#bankphone').val('');
                            parent_obj.$('#bkusername').val('');
                            parent.parent.$("body .editbankcardnum").unbind();
                            window.location.href = "<?php echo U('/Home/User/meapply',array('bank_type'=>2));?>";
                        }else{
                            console.log(data);
                            alert(data.info);
                        }
                    }
                });
            }
        })
	</script>

</body>
</html>