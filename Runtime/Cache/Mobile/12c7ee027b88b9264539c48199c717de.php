<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta charset="UTF-8">
<title><?php echo C('WEB_SITE_TITLE');?> - 8ye.net 八爷源码 </title>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="stylesheet" type="text/css" href="/Application/Mobile/Static/css/mui.min.css" />
<script src="/Application/Mobile/Static/js/mui.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/Application/Mobile/Static/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/Application/Mobile/Static/js/initial.js" type="text/javascript" charset="utf-8"></script>




    
    <link rel="stylesheet" type="text/css" href="/Application/Mobile/Static/css/login.css" />

    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?263bc29aa533e5290710fe5d1e9c83e2";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>
<body>

    <header class="mui-bar mui-bar-nav">
        <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"  href="javascript:history.back(-1)"></a>
        <a class="fr r-text" href="<?php echo U('Mobile/User/login');?>">登录</a>
    </header>
    <div class="mui-content">
        <h3>账号注册</h3>
        <div class="inp-group mui-input-group form" >
            <div class="inp-row mui-input-row phone">
                <input type="text" placeholder="请输入手机号" class="mui-input-clear" name="phone" id="mobile" >
            </div>
            <div class="inp-row cf mui-input-row">
                <input class="code fl" type="number" placeholder="请输入验证码"  class="mui-input-clear " size="8"  id="mobile_code" name="card">
                <div class="getcode fr zphone"  id="zphone"  >获取验证码</div>
            </div>
            <div class="inp-row mui-input-row">
                <input type="password" placeholder="请输入密码" class="mui-input-password form-password" name="password">
            </div>
            <div class="inp-row mui-input-row">
                <input type="password" placeholder="请再次输入密码" class="mui-input-password form-password" name="re_password">
            </div>
            <button class="btn reg-btn" id="submit">注册</button>
        </div>
        <div class="other-way">
            <div class="inbox cf">
                <a href="https://graph.qq.com/oauth2.0/authorize?client_id=101483760&amp;response_type=token&amp;scope=all&amp;redirect_uri=http://www.shoukb.com/" class="way-item fl">
                    <img src="/Application/Mobile/Static/images/qq.png" alt="">
                    <span>QQ登录</span>
                </a>
                <a href="https://open.weixin.qq.com/connect/qrconnect?appid=wxa4bded57179bd4dd&redirect_uri=http://www.shoukb.com/Home/Index/webchatLogin&response_type=code&scope=snsapi_login&state=#wechat_redirect" class="way-item fl">
                    <img src="/Application/Mobile/Static/images/wx.png" alt="">
                    <span>微信登录</span>
                </a>
            </div>
        </div>
    </div>



	<script type="text/javascript">
        $(function () {
            $('#mobile').change(function () {
                var tel =  $('#mobile').val();
                if(!checkMobile(tel)){
                    mui.toast('请输入正确的手机号!');
                    $('#mobile').val('');
                    return false;
                }/*else{
                    //验证该手机号是否已经注册过
                    $.ajax({
                        type:'post',
                        url: "<?php echo U('Mobile/User/checkPhoneUnique');?>",
                        data:{"tel":tel},
                        success:function(data){
                            if(data.status == -1){
                                mui.toast(data.info);
                                return false;
                            }
                        }
                    })
                }*/
            });

            $('#submit').click(function () {
                $('#nav-user').addClass('mui-active');
                var phone = $('input[name="phone"]').val();
                var mobile_code = $('#mobile_code').val();
                if(phone == ''){
                    mui.toast("请输入手机号！");
                    return false;
                }else if(!checkMobile(phone)){
                    mui.toast("手机号输入不正确！");
                    $('input[name="phone"]').val('');
                    return false;
                }
                //if(mobile_code == ''){
                //    mui.toast("请输入验证码！");
                //    return false;
                //}
                var password = $('input[name="password"]').val().trim();
                var re_password = $('input[name="re_password"]').val().trim();

                if(password == '' || re_password == '' ){
                    mui.toast('请输入最少6位长度的密码');
                    return false;
                }else if(password.length < 6 || re_password.length < 6){
                    mui.toast('请输入最少6位长度的密码');
                    return false;
                }
                if(re_password != password){
                    mui.toast('两次密码不一致');
                    return false;
                }
                var url = "<?php echo U('Mobile/User/register');?>";
                $.post(url, { phone: phone, password: password, mobile_code:mobile_code}, function (info) {
                    if(info.status != 1){
                        mui.toast(info.info);
                        return false;
                    }else{
                        mui.toast(info.info);
                        window.location.href="<?php echo U('Mobile/User/login');?>";
                    }
                });
            });
        });
        $('.zphone').on('tap',function(event){
           
            $('.zphone').removeClass('zphone');
             var mobile = $('#mobile').val();
            if(mobile == ''){
                mui.toast("请输入手机号！");
                return false;
            }else{
                if(!checkMobile(mobile)){
                    mui.toast('请输入正确的手机号!');
                    $('#mobile').val('');
                    return false;
                }else{
                  
                    var url = "<?php echo U('Public/getCode');?>";
                    console.log(url);
                    $.ajax({
                        type:'post',
                        url:url,
                        data:{"username":mobile},
                        success:function(data){
                            console.log(data);
                            if(data.status != 1){
                                mui.toast(data.info);
                                 $('#zphone').addClass('zphone');
                                return false;

                            }else{
                                mui.toast(data.info);
                                $('#zphone').addClass('zphone');
                                RemainTime();
                                return false;

                            }
                        }
                    })
                      
                }
            }

        });

        function send_code() {
            var mobile = $('#mobile').val();
            if(mobile == ''){
                mui.toast("请输入手机号！");
                return false;
            }else{
                if(!checkMobile(mobile)){
                    mui.toast('请输入正确的手机号!');
                    $('#mobile').val('');
                    return false;
                }else{
                  
                    var url = "<?php echo U('Home/Public/getCode');?>";
                    console.log(url);
                    $.ajax({
                        type:'post',
                        url:url,
                        data:{"username":mobile},
                        success:function(data){
                            console.log(data);
                            if(data.status != 1){
                                mui.toast(data.info);
                                 $('#zphone').addClass('zphone');
                                return false;

                            }else{
                                mui.toast(data.info);
                                $('#zphone').addClass('zphone');
                                RemainTime();
                                return false;

                            }
                        }
                    })
                      
                }
            }
        }


	</script>

</body>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?e872adf68a156ce6ab4768ea9ae6bb55";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</html>