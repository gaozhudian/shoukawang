<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo ($meta_title); ?> - 8ye.net 八爷源码 </title>
    <link rel="shortcut icon" type="image/x-icon" href="/Application/Sqnbcadmin/Static/images/favicon.ico" media="screen" />
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/base.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/common.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/module.css">
    <link rel="stylesheet" type="text/css" href="/Public/assets/css/style.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Application/Sqnbcadmin/Static/css/default_color.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Public/toastr/toastr.css" media="all">
    <link rel="stylesheet" type="text/css" href="/Public/dropdownlist/dropdownlist.css" media="all">
    <!--[if lt IE 9]-->
    <script type="text/javascript" src="/Application/Sqnbcadmin/Static/js/jquery-1.10.2.min.js"></script>
    <!--[endif]-->
    <script type="text/javascript" src="/Application/Sqnbcadmin/Static/js/jquery-2.0.3.min.js"></script>
    
</head>
<body>
    <!-- 内容区 -->
    <div id="content">
        
    <div class="tw-layout">
    	<div class="tw-list-hd">
            <?php echo isset($info['id'])?'编辑':'新增';?>信息
        </div>

	    <div class="tw-list-wrap tw-edit-wrap">
            <form action="/Sqnbcadmin/User/edit/id/90" method="post" class="form-horizontal ajaxForm">

                <div class="form-item">
                    <label class="item-label">姓名：</label>
                    <div class="controls">
                        <input type="text" class="text input-large" name="name" value="<?php echo ($info["name"]); ?>" />
                    </div>
                </div>
                <div class="form-item">
                    <label class="item-label">联系方式：</label>
                    <div class="controls">
                        <p type="text" class="text input-large" name="phone" ><?php echo ($info["phone"]); ?></p>
                    </div>
                </div>
                <div class="form-item">
                    <label class="item-label">QQ账号：</label>
                    <div class="controls">
                        <p type="text" class="text input-large" name="qq" ><?php echo ($info["qq"]); ?></p>
                    </div>
                </div>
              <!--  <div class="form-item">
                    <label class="item-label">密码：</label>
                    <div class="controls">
                        <p type="text" class="text input-large" name="password" ><?php echo ($info["password"]); ?></p>
                    </div>
                </div>-->
                <div class="form-item">
                    <label class="item-label">是否是实名：<span class="check-tips"></span></label>
                    <div class="controls">
                        <?php if($info["is_permission"] == 1): ?><label class="radio"><input type="radio" value="0" name="is_permission" >否</label>
                            <label class="radio"><input type="radio" value="1" name="is_permission" checked="checked" >是</label>
                            <?php else: ?>
                            <label class="radio"><input type="radio" value="0" name="is_permission" checked="checked" >否</label>
                            <label class="radio"><input type="radio" value="1" name="is_permission" >是</label><?php endif; ?>
                    </div>
                </div>
                <div class="form-item">
                    <label class="item-label">注册时间：<span class="check-tips"></span></label>
                    <div class="controls">
                        <input type="text" id="add_time" class="text input-3x laydate-icon" name="add_time"  onclick="laydate({format: 'YYYY-MM-DD', istime:false, festival: true})" value="<?php echo (time_format($info["add_time"],'Y-m-d')); ?>" placeholder="请选择注册时间">
                          </div>
                </div>

               <!-- <?php if($info["is_member"] == 1): ?><div class="form-item">
                        <label class="item-label">是否授权：<span class="check-tips"></span></label>
                        <div class="controls">
                            <?php if($info["is_permission"] == 1): ?><label class="radio"><input type="radio" value="0" name="is_permission" >未授权</label>
                                <label class="radio"><input type="radio" value="1" name="is_permission" checked="checked" >已授权</label>
                                <?php else: ?>
                                <label class="radio"><input type="radio" value="0" name="is_permission" checked="checked" >未授权</label>
                                <label class="radio"><input type="radio" value="1" name="is_permission" >已授权</label><?php endif; ?>
                        </div>
                    </div><?php endif; ?>-->
                 <div class="tw-tool-bar-bot">
                    <button type="submit" class="tw-act-btn-confirm">提交</button>

                    <button type="button" onclick="goback()" class="tw-act-btn-cancel">返回</button>
                </div>
                    <input type="hidden" name="id" value="<?php echo ((isset($info["id"]) && ($info["id"] !== ""))?($info["id"]):''); ?>"/>
                </form>
	    </div>
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
    <script type="text/javascript" src="/Public/dropdownlist/dropdownlist.js"></script>
    <script type="text/javascript" src="/Application/Sqnbcadmin/Static/js/common.js"></script>
    <script>
        // 定义全局变量
        RECYCLE_URL = "<?php echo U('recycle');?>"; // 默认逻辑删除操作执行的地址
        RESTORE_URL = "<?php echo U('restore');?>"; // 默认逻辑删除恢复执行的地址
        DELETE_URL = "<?php echo U('del');?>"; // 默认删除操作执行的地址
        UPLOAD_IMG_URL = "<?php echo U('uploadImg');?>"; // 默认上传图片地址
        DELETE_FILE_URL = "<?php echo U('delFile');?>"; // 默认删除图片执行的地址
        CHANGE_STAUTS_URL = "<?php echo U('changeDisabled');?>"; // 修改数据的启用状态
        UPLOAD_FIELD_URL = "<?php echo U('uploadField');?>"; // 默认上传图片地址
    </script>
    
    <script>
        _TARGET_URL="<?php echo U('Sqnbcadmin/User/index');?>";
        // function validate(){
        //     //时间插件，结束时间要大于开始时间
        //     var start_time = $('#start_time').val();
        //     var end_time = $('#end_time').val();
        //
        //     var d1 = new Date(start_time.replace(/\-/g, "\/"));
        //     var d2 = new Date(end_time.replace(/\-/g, "\/"));
        //     if(start_time = ''){
        //         toastr.error('开始时间不能为空！');
        //         return false;
        //     }
        //     if(end_time = ''){
        //         toastr.error('结束时间不能为空！');
        //         return false;
        //     }
        //
        //     if(start_time!=""&&end_time!=""&&d1 >d2){
        //         toastr.error('开始时间不能大于结束时间！');
        //         return false;
        //     }
        // }

        // 时间插件
        var start = {
            elem: '#add_time',
            format: 'YYYY/MM/DD',
            max: '2099-06-16', //最大日期
            istime: true,
            istoday: false,

        };
        // var end = {
        //     elem: '#end_time',
        //     format: 'YYYY/MM/DD',
        //
        //     max: '2099-06-16',
        //     istime: true,
        //     istoday: false,
        //
        // };
        laydate(start);
        // laydate(end);
    </script>

</body>
</html>