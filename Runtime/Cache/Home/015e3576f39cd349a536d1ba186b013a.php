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
        <div class="form-box reg1">
            <div class="title">账号注册</div>
            <div class="inp-group">
                <div class="inp-row">
                    <input type="text" name="phone" id="phone" placeholder="请输入手机号">
                </div>
                <div class="inp-row">
                    <input class="paswd" type="password" name="password" id="password" placeholder="请输入密码">
                    <img class="eye" src="/Application/Home/Static/images/eye.png" alt="">
                </div>
                <div class="inp-row">
                    <input class="paswd" type="password" name="" id="fmpassword" placeholder="请输入确认密码">
                </div>
                <button class="btn next" id="next">下一步</button>
            </div>
            <div class="other-way">
                <div class="link-list cf">
                    <a class="fl" href="#">
                        <img src="/Application/Home/Static/images/otherway.png" alt="">
                    </a>
                    <a class="fl" href="#">
                        <img src="/Application/Home/Static/images/otherway2.png" alt="">
                    </a>
                </div>
                <a href="#" class="reg">已有账号?马上登录></a>
            </div>
        </div>
        <div class="form-box reg2">
            <div class="title">账号注册</div>
            <div class="inp-group">
                <p>你的手机号：<span id="showphone">184****6213</span></p>
                <p>为了安全，我们会给你发送短信验证码</p>
                <div class="inp-row cf">
                    <input type="text" class="code fl" id="code" placeholder="输入验证码">
                    <!--<span class="fl" id="getcode">等待60秒重发</span>-->
                    <input type="button" value="获取验证码"  class="code fl" id="getcode" data-get-code-url="<?php echo U('Home/Public/getCode');?>" />
                </div>
                <button class="btn next" id="register">完成</button>
            </div>
            <div class="other-way">
                <a href="#" class="reg" id="reg">已有账号?马上登录></a>
            </div>
        </div>
    </div>
</body>
<script src="/Application/Home/Static/js/jquery-3.1.1.min.js"></script>
<script>
url = "<?php echo U('Home/Public/getCode');?>";
    $("#next").click(function () {
        username = $('#phone').val();
        password = $('#password').val();
        fmpassword = $('#fmpassword').val();

        if(username == ''){
            alert('请输入手机号');
            return false;
        }
        if(!(username.match(/^1[345789]\d{9}$/))){
            alert('请输入合法的手机号码');
            return false;
        }
        if($.trim(password)==''){
            alert('请输入密码');
            return false;
        }
        if($.trim(password).length <= 5){
            alert('请输入6位及以上的密码');
            return false;
        }
        if(password != fmpassword){
            alert('两次密码输入不一致');
            return false;
        }
        $('#showphone').html(username);

        username = $('#phone').val();
        $("#next").attr("disabled", true);
        $.ajax({
            type:'post',
            url:url,
            data:{'username':username},
            success:function (data) {
                if(data.status==0){
                    alert(data.info);
                    $("#next").attr("disabled", false);
                    return false;
                }
                $(".reg1").hide();
                $(".reg2").show();

            }
        })
        $(".reg1").hide();
        $(".reg2").show();
        //这里是倒计时的地方
        var count = 60;
        var countdown = setInterval(CountDown, 1000);
        function CountDown() {
            $("#getcode").attr("disabled", true);
            $("#getcode").val("等待" + count + "秒重发");
            if (count == 0) {
                $("#getcode").val("获取验证码").removeAttr("disabled");
                clearInterval(countdown);
            }
            count--;
        }



    })

    $('#getcode').click(function () {
        sendcode();
    });

    function sendcode() {
        username = $('#phone').val();

        $.ajax({
            type:'post',
            url:url,
            data:{'username':username},
            success:function (data) {
                if(data.status==0){
                    alert(data.info);
                    return false;
                }
                console.log(data);

            }
        })

        //这里是倒计时的地方
        var count = 60;
        var countdown = setInterval(CountDown, 1000);
        function CountDown() {
            $("#getcode").attr("disabled", true);
            $("#getcode").val("等待" + count + "秒重发");
            if (count == 0) {
                $("#getcode").val("获取验证码").removeAttr("disabled");
                clearInterval(countdown);
            }
            count--;
        }


    }


    $(".eye").click(function () {
        if( $(".paswd").hasClass("on")){
            $(".paswd").attr("type","password");
            $(".paswd").removeClass("on")
        }else {
            $(".paswd").attr("type","text")
            $(".paswd").addClass("on")
        }

    })

    $("#register").click(
            function () {
                url = "<?php echo U('Home/Public/register_ajax');?>";
                phone = $('#phone').val();
                password = $('#password').val();
                mobile_code = $('#code').val();
                $.ajax({
                    type:'post',
                    url:url,
                    data:{'phone':phone,'password':password,'mobile_code':mobile_code},
                    success:function (data) {
                        if(data.status==1){
                            alert(data.info);
                            parent.location.reload(); // 父页面刷新
                            var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
                            parent.layer.close(index);
                        }else{
                            alert(data.info);
                        }

                    }
                })

            }
    )


$('.reg').on('click', function(){
    var index = parent.layer.getFrameIndex(window.name); //获取窗口索引



    parent.layer.open({
        type: 2,
        title: false,
        area: ['680px', '450px'],

        shade: 0.8,
        shadeClose: true, //close
        content: ['<?php echo U("Home/Public/loginbox?type=2");?>', 'no'],

    });

    parent.layer.close(index);


});
</script>
</html>