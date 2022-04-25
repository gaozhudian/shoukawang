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
			<?php echo isset($info['id'])?'编辑':'新增';?>用户
		</div>
		<form action="<?php echo U();?>" method="post" class="ajaxForm">
			<div class="tw-list-wrap tw-edit-wrap">
	            <table class="wf-form-table">
	                <colgroup>
	                    <col width="15%">
	                    <col width="35%">
	                    <col width="15%">
	                    <col width="35%">
	                </colgroup>
	                <tbody>
	        			<tr>
	                        <th><em>*</em>用户名:</th>
	                        <td>
	                            <input type="text" class="text input-5x" name="user_name" value="<?php echo ($info['user_name']); ?>" placeholder="4-20位字母或数字, 首字符必须为字母" id="user_name"
		                            <?php if($info["id"] > 0): ?>disabled="disabled" readonly="true"<?php endif; ?>
		                        >
	                        </td>
	                        <th><em>*</em>昵称:</th>
	                        <td>
	                            <input type="text" class="text input-5x" name="nick_name" value="<?php echo ($info['nick_name']); ?>" placeholder="用户昵称">
	                        </td>
	                    </tr>
	                    <tr>
	                        <th><em>*</em>手机号:</th>
	                        <td>
	                            <input type="text" class="text input-5x" name="phone" value="<?php echo ($info['phone']); ?>" placeholder="11位手机号码, 可用于登录">
	                        </td>
	                        <th>电子邮箱:</th>
	                        <td>
	                            <input type="text" class="text input-5x" name="email" value="<?php echo ($info['email']); ?>" placeholder="用户电子邮箱">
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>
	                        	<?php if($info['id'] <= 0): ?><em>*</em><?php endif; ?>登录密码:
	                        </th>
	                        <td>
	                            <input type="password" class="text input-5x" name="password" value=""
	                            	placeholder = "<?php if($info["id"] <= 0): ?>用户登录密码, 4位及以上<?php else: ?>如果不修改, 请留空(6位以上字符)<?php endif; ?>">
	                        </td>
	                        <th>
	                        	<?php if($info['id'] <= 0): ?><em>*</em><?php endif; ?>确认登录密码:
	                        </th>
	                        <td>
	                            <input type="password" class="text input-5x" name="re_password" value="" placeholder="再次输入登录密码">
	                        </td>
	                    </tr>


	                    <tr>
	                    	<th>所属用户组:</th>
	                    	<td>

								<select name="auth_group">

	                    		<?php if(is_array($roleList)): $i = 0; $__LIST__ = array_slice($roleList,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php echo ($tem_group_id == $vo['id'] ? 'selected':''); ?> ><?php echo ($vo["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
								</select>
	                    	</td>


		        			<th>是否启用:</th>
	                        <td>
	                        	<label class="wf-form-label-rc">
	                            	<input type="radio" value="0" name='status' checked="checked" id="disabledTrue"> 启用
	                            </label>
	                            <label class="wf-form-label-rc">
		                            <input type="radio" value="1" name='status' id="disbledFalse"> 禁用
	                            </label>
	                            <?php if($info['disabled'] == 1): ?><script>
	                            		$('#disbledFalse').attr('checked', 'checked');
	                            	</script><?php endif; ?>
	                            <?php if($info['username'] == 'admin'): ?><script>
	                            		$('#disabledTrue,#disbledFalse').attr('disabled', 'disabled');
	                            	</script><?php endif; ?>
	                        </td>

	                     </tr>
						<tr>
							<th>负责的卡类:</th>
							<td>

								<select name="card_type">

									<?php if(is_array($cardList)): $i = 0; $__LIST__ = $cardList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php echo ($info['card_type'] == $vo['id'] ? 'selected':''); ?> ><?php echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
								</select>
							</td>


						</tr>

	                    <tr>

	                </tbody>
	            </table>
	        </div>
	        <div class="tw-tool-bar-bot">
				<input type="hidden" name="id" value="<?php echo ($info['id']); ?>" >
                <button type="submit" class="tw-act-btn-confirm"  >提交</button>
                <button type="button" onclick="history.back()" class="tw-act-btn-cancel">返回</button>
            </div>
        </form>
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
    <script type="text/javascript" src="/Public/assets/js/hex_sha1.js"></script>
	<script>


        function validate(){
        	var password = $('input[name="password"]');
        	var re_password = $('input[name="re_password"]');

        	if ($.trim(password.val()) != '' || $.trim(re_password.val()) != '') {
	        	if (password.val().length < 4 || password.val().length > 40) {
	                toastr.error('密码长度4-20位');
	                password.focus();
	                return false;
	            }
	            if (password.val() != re_password.val()) {
	            	toastr.error('两次登录密码不相同');
	            	password.focus();
	            	return false;
	            }

        	}

        }


    </script>

</body>
</html>