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
            <?php echo isset($info['id'])?'编辑':'新增';?>分类
        </div>
	    <div class="tw-list-wrap tw-edit-wrap">
            <form action="/Sqnbcadmin/CardType/edit/id/111" method="post" class="form-horizontal ajaxForm">
                <div class="form-item">
                    <label class="item-label">名称<span class="check-tips"><b>*</b>（输入名称）</span></label>
                    <div class="controls">
                        <input type="text" class="text input-large" name="name" value="<?php echo ($info["name"]); ?>">
                    </div>
                </div>
                <div class="form-item">
                    <label class="item-label">上传图片<span class="check-tips">（用于pc端展示图片 请上传尺寸为296*168的图片）</span></label>
                    <div class="controls">
                        <div>
                            <img src="<?php echo ($info["photo_path"]); ?>" style="height:129px; width:129px;" id="img_1"/>
                        </div>
                        <input type="hidden" value="<?php echo ($info["photo_path"]); ?>" name="photo_path" id="img1" />
                        <input class="btn btn-default btn-xs" type="button" value="上传" id="btnUpload1"/>
                        <input class="btn btn-danger btn-xs" type="button" value="删除" onclick="delFile($('#img1').val(), '')" id="btn_delete_1" />
                        <?php if($info["photo_path"] == ''): ?><script>
                                $("#img_1, #btn_delete_1").hide();
                            </script><?php endif; ?>
                    </div>
                </div>
                <div class="form-item">
                    <label class="item-label">上传图片<span class="check-tips">（用于手机端展示图片 请上传尺寸为120*120的图片）</span></label>
                    <div class="controls">
                        <div>
                            <img src="<?php echo ($info["wapphoto_path"]); ?>" style="height:129px; width:129px;" id="img_0"/>
                        </div>
                        <input type="hidden" value="<?php echo ($info["wapphoto_path"]); ?>" name="wapphoto_path" id="img0" />
                        <input class="btn btn-default btn-xs" type="button" value="上传" id="btnUpload0"/>
                        <input class="btn btn-danger btn-xs" type="button" value="删除" onclick="delFile($('#img0').val(), '')" id="btn_delete_0" />
                        <?php if($info["photo_path"] == ''): ?><script>
                                $("#img_0, #btn_delete_0").hide();
                            </script><?php endif; ?>
                    </div>
                </div>
                  <div class="form-item">
                    <label class="item-label">上传图片<span class="check-tips">（用于手机端下拉框展示图片 请上传尺寸为170*60的图片）</span></label>
                    <div class="controls">
                        <div>
                            <img src="<?php echo ($info["wapdropphoto_path"]); ?>" style="height:40px; width:40px;" id="img_2"/>
                        </div>
                        <input type="hidden" value="<?php echo ($info["wapdropphoto_path"]); ?>" name="wapdropphoto_path" id="img2" />
                        <input class="btn btn-default btn-xs" type="button" value="上传" id="btnUpload2"/>
                        <input class="btn btn-danger btn-xs" type="button" value="删除" onclick="delFile($('#img2').val(), '')" id="btn_delete_2" />
                        <?php if($info["photo_path"] == ''): ?><script>
                                $("#img_2, #btn_delete_2").hide();
                            </script><?php endif; ?>
                    </div>
                </div>
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
    
    <script type="text/javascript" charset="utf-8" src="/Public/ajaxupload.js"></script>
    <script type="text/javascript" charset="utf-8" src="/Application/Common/Static/js/imgupload.js"></script>
    <script type="text/javascript" charset="utf-8" src="/Application/Sqnbcadmin/Static/js/admin.js"></script>
    <script>
        _TARGET_URL="<?php echo U('Sqnbcadmin/CardType/index');?>";
        $(function(){
            ajaxUpload('#btnUpload1', "#img1", 'CardType', '1');
        })
        $(function(){
            ajaxUpload('#btnUpload0', "#img0", 'CardType', '0');
        })
         $(function(){
            ajaxUpload('#btnUpload2', "#img2", 'CardType', '2');
        })
    </script>

</body>
</html>