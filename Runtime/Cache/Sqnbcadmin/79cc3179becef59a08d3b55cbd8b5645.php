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
			<?php echo isset($info['id'])?'编辑':'新增';?>公司
		</div>
		<div class="tw-list-wrap tw-edit-wrap">
			<form action="/Sqnbcadmin/Company/edit" method="post" class="form-horizontal ajaxForm">
		        <div class="form-item">
		            <label class="item-label">公司名称<span class="check-tips"><b>*</b>（请输入公司名称）</span></label>
		            <div class="controls">
		                <input type="text" class="text input-large" name="name" value="<?php echo ((isset($info["name"]) && ($info["name"] !== ""))?($info["name"]):''); ?>">
		            </div>
		        </div>
		        <div class="form-item">
		            <label class="item-label">公司所在省市县（区）<span class="check-tips"><b>*</b></span></label>
		            <div class="controls">
		            	<select name="province_id" style="width:120px;" id="province" ></select>
                        <select name="city_id" style="width:120px;" id="city"></select>
						<select name="country_id" style="width:120px;" id="country"></select>
		            </div>
		        </div>
                <div class="form-item">
                    <label class="item-label">公司地址<span class="check-tips"><b>*</b>（用于展示公司的具体地址）</span></label>
                    <div class="controls">
                        <input type="text" id="address" class="text input-large" name="address" value="<?php echo ((isset($info["address"]) && ($info["address"] !== ""))?($info["address"]):''); ?>" placeholder="请输入地址">
                    </div>
                </div>
				<div class="form-item">
					<label class="item-label">联系方式<span class="check-tips"><b>*</b>（输入联系方式）</span></label>
					<div class="controls">
						<input type="text" class="text input-large" name="tel" value="<?php echo ($info["tel"]); ?>">
					</div>
				</div>
				<div class="form-item">
					<label class="item-label">官方QQ<span class="check-tips"><b>*</b>（输入官方QQ）</span></label>
					<div class="controls">
						<input type="text" class="text input-large" name="qq" value="<?php echo ($info["qq"]); ?>">
					</div>
				</div>
				<div class="form-item">
					<label class="item-label">邮箱<span class="check-tips"><b>*</b>（输入邮箱）</span></label>
					<div class="controls">
						<input type="text" class="text input-large" name="email" value="<?php echo ($info["email"]); ?>">
					</div>
				</div>
				<div class="form-item">
					<label class="item-label">公司介绍<span class="check-tips"><b>*</b>（输入公司介绍）</span></label>
					<div class="controls">
						<textarea name="content" id="UE"><?php echo (htmlspecialchars_decode($info["content"])); ?></textarea><br/>
					</div>
				</div>
	            <div class="tw-tool-bar-bot">
	            	<input type="hidden" name="id" value="<?php echo ($info["id"]); ?>">
	                <button type="submit" class="tw-act-btn-confirm">提交</button>
	                <button type="button" onclick="goback();" class="tw-act-btn-cancel">返回</button>
	            </div>
		    </form>
		</div>
	</div>
<input type="hidden" id="data-url" data-url="<?php echo U('Core/Region/getDataByParentId');?>">

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
    
	<script type="text/javascript" src="/Application/Sqnbcadmin/Static/js/selectcity.js"></script>
	<script type="text/javascript" charset="utf-8" src="/Public/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="/Public/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript">

		_TARGET_URL="<?php echo U('Admin/Company/index');?>";
		UE.getEditor('UE',{
			autoHeightEnabled: false,
			initialFrameWidth: '700',
			initialFrameHeight: 350
		});
    	//下面定义的操作是为了编辑页面中，及时显示省市县的操作，要配合select.js文件
	    var isPCCEdit=<?php echo isset($info['id'])?1:0;?>;
	    var province="<?php echo ($info["province_id"]); ?>";
	    var city="<?php echo ($info["city_id"]); ?>";
	    var country="<?php echo ($info["country_id"]); ?>";
    </script>

</body>
</html>