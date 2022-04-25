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
	<link rel="stylesheet" type="text/css" href="/Application/Home/Static/css/password.css"/>

</head>
<body>
    
		<div class="setPassword">
			<div class="setPassword-floor cf">
				<div class="setPassword-font fl">原密码：</div>
				<input class="setPassword-input" type="password" value="" placeholder="请输入原密码"  id="oldpassword"/>
			</div>
			<div class="setPassword-floor cf">
				<div class="setPassword-font fl">新密码：</div>
				<input class="setPassword-input" type="password" value="" placeholder="请输入新密码" id="newpassword"/>
			</div>
			<div class="setPassword-floor cf">
				<div class="setPassword-font fl">确认密码：</div>
				<input class="setPassword-input" type="password" value="" placeholder="请再次输入新密码" id="newpasswordagain"/>
			</div>
			
			<div class="setPassword-btn" id="editpassword">确定</div>
		</div>

    <script src="/Application/Home/Static/js/jquery.js"></script>
    <script src="/Public//layer/layer.js"></script>

	<script type="text/javascript">
        $('#editpassword').click(function(){
            oldpa = $('#oldpassword').val();
            newpa = $('#newpassword').val();
            newpaag = $('#newpasswordagain').val();
            if(oldpa==''){
                layer.msg('请填写旧密码');
                return false;
			}
            if(newpa == oldpa){
                layer.msg('新密码和原密码一样');
                return false;
            }

            if(newpa != newpaag){
                layer.msg('两次密码输入不一致');
                return false;
            }
            if(newpa.length <= 5){
                layer.msg('请输入6位及以上的密码');
                return false;
            }
            if(!newpa || !newpaag){
                layer.msg('请正确填写密码');
                return false;
            }else {
                $.ajax({
                    type: 'post',
                    data: {'oldpa': oldpa,'newpa':newpa},
                    url: "<?php echo U('Home/User/editpassword');?>",
                    success: function (data) {
                        if(data.status==1){
                            console.log(data);
                            layer.msg('修改成功');
                            top.location.href="<?php echo U('User/index');?>";
                        }else{
                            console.log(data);
                            layer.msg(data.info);
                        }
                    }
                });
            }

        })

        parent.parent.$('.user-sub-nav-floor').removeClass("nav-select");
        parent.parent.$('.floor-phone').addClass("nav-select");
        parent.parent. $("#iframe-page-content").attr("src", p_address);
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			parent.GetIframeStatus();
		})
	</script>

</body>
</html>