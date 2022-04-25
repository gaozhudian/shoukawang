<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>首页 - 8ye.net 八爷源码 </title>
    <link rel="stylesheet" href="/Application/Home/Static/css/base.css">
    <link rel="stylesheet" href="/Application/Home/Static/css/login.css">
</head>
<body>
   
    <div class="bkdrop">
        <div class="form-box">
            <div class="title">账号登录</div>
            <div class="inp-group">
                <div class="inp-row">
                    <input type="text" name="" id="phone" placeholder="请输入手机号">
                </div>
                <div class="inp-row">
                    <input type="password" name="" id="password" placeholder="请输入密码">
                </div>

                <!--<i   class="lg-linki chbox" id="chbox" >✔</i><span class="fl lg-link chbox">下次自动登录</span> -->
                <span class="fr lg-link lg_link">忘记密码</span>
                <button class="btn" id="login">登录</button>
            </div>
            <div class="other-way">
                <div class="link-list cf">
                    <a class="fl"  href="https://graph.qq.com/oauth2.0/authorize?client_id=101578620&amp;response_type=token&amp;scope=all&amp;redirect_uri=http://www.shoukb.com/Home/Login/qq" target="_blank">
                        <img src="/Application/Home/Static/images/otherway.png" alt="">
                    </a>
                    <a class="fl" href="https://open.weixin.qq.com/connect/qrconnect?appid=wxa4bded57179bd4dd&redirect_uri=http://www.shoukb.com/Home/Index/webchatLogin&response_type=code&scope=snsapi_login&state=#wechat_redirect" title="微信登录"  target="_blank">
                        <img src="/Application/Home/Static/images/otherway2.png" alt="">
                    </a>
                </div>
                <a href="#" class="reg">没有账号?免费注册></a>
            </div>
        </div>
    </div>
</body>
<script src="/Application/Home/Static/js/jquery-3.1.1.min.js"></script>
<script>
    $('#login').click(function () {
        phone = $('#phone').val();
        password = $('#password').val();
        var is_auto_login = $("#chbox").attr('type');
        url = "<?php echo U('Home/Public/login_ajax');?>";
        $.ajax({
            type:'post',
            url:url,
            data:{'phone':phone,'password':password,'is_auto_login':is_auto_login},
            success:function (data) {
                console.log(data);
                if(data.status==0){
                    alert(data.info);
                    return false;
                }else {
                    parent.location.reload(); // 父页面刷新
                    var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
                    parent.layer.close(index);
                }
            }
        })
    })

   // 点击下次自动登录执行的事件
    $(".chbox").click(function(){
        if($('#chbox').hasClass('on1')){
            $('#chbox').attr('type',0);//取消自动登录，用type=0代替
            $('#chbox').removeClass('on1');
        }else {
            $('#chbox').attr('type',1);//加上自动登录，用type=1代替
            $('#chbox').addClass('on1');
        }
    })

    $('.reg').on('click', function(){
        var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
        parent.layer.open({
            type: 2,
            title: false,
            area: ['680px', '450px'],
            shade: 0.8,
            shadeClose: true, //close
            content: ['<?php echo U("Home/Public/register?type=2");?>', 'no'],
        });
        parent.layer.close(index);
    });


    $('.lg_link').on('click', function(){
        var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
        parent.layer.open({
            type: 2,
            title: false,
            area: ['680px', '500px'],
            shade: 0.8,
            shadeClose: true, //close
            content: ['<?php echo U("Home/Public/findPassword");?>', 'no'],
        });
        parent.layer.close(index);
    });



</script>


</html>