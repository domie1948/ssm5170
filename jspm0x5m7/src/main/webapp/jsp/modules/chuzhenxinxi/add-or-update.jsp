<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="contentText">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑出诊信息</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>出诊信息管理</span></li>
								<li class="breadcrumb-item active"><span>编辑出诊信息</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">出诊信息信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>医生工号</label>
										<select  class="form-control"  name="yishenggonghao" id="yishenggonghaoSelect" onchange="yishenggonghaoSelect2Change()">
										</select>
									</div>
									<div class="form-group col-md-6">
										<label>医生姓名</label>
										<input id="yishengxingming" name="yishengxingming" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>照片</label>
										<div><img id="zhaopianImg" src="" width="100" height="100">
										<div class="upload">选择文件<input name="file" type="file" id="zhaopianupload" class="form-control-file"></div>
										<input name="zhaopian" id="zhaopian-input" type="hidden"></div>
									</div>
									<div class="form-group col-md-6">
										<label>职称</label>
										<input id="zhicheng" name="zhicheng" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>科室</label>
										<input id="keshi" name="keshi" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>擅长</label>
										<input id="shanzhang" name="shanzhang" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>出诊时间</label>
										<div id="chuzhenshijianDate" class="input-append date form_datetime">
											<input id="chuzhenshijian-input" name="chuzhenshijian" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>可约人数</label>
										<input id="keyuerenshu" name="keyuerenshu" class="form-control" placeholder="可约人数">
									</div>
									<div class="form-group col-md-6">
										<label>挂号费</label>
										<input id="guahaofei" name="guahaofei" class="form-control" placeholder="挂号费">
									</div>
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "chuzhenxinxi";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};


			function yishenggonghaoSelect2(){
				http("option/yisheng/yishenggonghao","GET",{
					tableName: "yisheng",
					columnName: "yishenggonghao"
				},(res)=>{
					if(res.code == 0){
						var options = res.data;
						var option = document.createElement("option");
						$("#yishenggonghaoSelect").append(option)
						for(var i=0;i<options.length;i++){
							var yishenggonghaoOption = document.createElement("option");
							yishenggonghaoOption.setAttribute("value",options[i]);
							yishenggonghaoOption.setAttribute("class","yishenggonghaoOption");
							if(ruleForm.yishenggonghao == options[i]){
								yishenggonghaoOption.setAttribute("selected","selected");
							}
							yishenggonghaoOption.innerHTML = options[i];
							//修改 回显
							if(ruleForm.yishenggonghao != null && ruleForm.yishenggonghao != '' && options[i] == ruleForm.yishenggonghao){
								yishenggonghaoOption.setAttribute("selected","selected");
							}
							$("#yishenggonghaoSelect").append(yishenggonghaoOption);
						}
					}
				});
			}		
			function yishenggonghaoSelect2Change(){
				var options = document.getElementById("yishenggonghaoSelect").options;
				var index = document.getElementById("yishenggonghaoSelect").selectedIndex;
				var colVal = options[index].value;
				http("follow/yisheng/yishenggonghao","GET",{
					tableName: "yisheng",
					columnName: "yishenggonghao",
					columnValue: colVal
				},(res)=>{
					if(res.code == 0){
						if(res.data != null && res.data.yishengxingming != null){
							$("#yishengxingming").val(res.data.yishengxingming);
						}
						if(res.data != null && res.data.zhicheng != null){
							$("#zhicheng").val(res.data.zhicheng);
						}
						if(res.data != null && res.data.keshi != null){
							$("#keshi").val(res.data.keshi);
						}
						if(res.data != null && res.data.shanzhang != null){
							$("#shanzhang").val(res.data.shanzhang);
						}
					}
				});
				
			}			

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "chuzhenxinxi/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
			$('#zhaopianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('zhaopian-input').setAttribute('value',baseUrl+"upload/"+data.result.file);
					if(document.getElementById('zhaopianFileName') != null){
						document.getElementById('zhaopianFileName').innerHTML = "上传成功!";
					}				
					$("#zhaopianImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
		}  

		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("chuzhenxinxi/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
						if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    yishengxingming: {
					},
				    zhaopian: {
					},
				    zhicheng: {
					},
				    keshi: {
					},
				    shanzhang: {
					},
				    chuzhenshijian: {
					required: true,
					},
				    keyuerenshu: {
					required: true,
					},
				    guahaofei: {
					required: true,
					},
				    clicktime: {
					},
				    clicknum: {
					digits: true,
					},
				},
				messages: {
					yishengxingming: {
					},
					zhaopian: {
					},
					zhicheng: {
					},
					keshi: {
					},
					shanzhang: {
					},
					chuzhenshijian: {
						required: "出诊时间不能为空",
					},
					keyuerenshu: {
						required: "可约人数不能为空",
					},
					guahaofei: {
						required: "挂号费不能为空",
					},
					clicktime: {
					},
					clicknum: {
						digits: "请输入整数",
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("chuzhenxinxi/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												yishenggonghaoSelect2();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				yishenggonghaoSelect2();	

		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#chuzhenshijianDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});
			$("#clicktimeDate").datetimepicker({ 
				autoclose: true,
				format:'yyyy-mm-dd hh:ii:ss',
				minuteStep:1,
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
		}		
		function calculationSE(colName){
			//单列求和接口
			http("chuzhenxinxi"+colName,"GET",{
				tableName: "chuzhenxinxi",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
				
						$("#yishengxingming").val(ruleForm.yishengxingming);	
			$("#zhaopian-input").val(ruleForm.zhaopian);
			$("#zhicheng").val(ruleForm.zhicheng);	
			$("#keshi").val(ruleForm.keshi);	
			$("#shanzhang").val(ruleForm.shanzhang);	
			$("#chuzhenshijian-input").val(ruleForm.chuzhenshijian);
			$("#keyuerenshu").val(ruleForm.keyuerenshu);	
			$("#guahaofei").val(ruleForm.guahaofei);	
				
			
		}		
		//图片显示
		function showImg(){
			var zhaopianFileName = "\"" + ruleForm.zhaopian + "\"";
			$("#zhaopianImg").attr("src",ruleForm.zhaopian);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.yishenggonghao != null && res.data.yishenggonghao != ''){


										}
					if(res.data != null && res.data != '' && res.data.yishengxingming != null && res.data.yishengxingming != ''){

					$("#yishengxingming").val(res.data.yishengxingming);
					}
					if(res.data != null && res.data != '' && res.data.zhaopian != null && res.data.zhaopian != ''){

					$("#zhaopianImg").attr("src",res.data.zhaopian);
					$("#zhaopian-input").val(res.data.zhaopian);
					}
					if(res.data != null && res.data != '' && res.data.zhicheng != null && res.data.zhicheng != ''){

					$("#zhicheng").val(res.data.zhicheng);
					}
					if(res.data != null && res.data != '' && res.data.keshi != null && res.data.keshi != ''){

					$("#keshi").val(res.data.keshi);
					}
					if(res.data != null && res.data != '' && res.data.shanzhang != null && res.data.shanzhang != ''){

					$("#shanzhang").val(res.data.shanzhang);
					}
					if(res.data != null && res.data != '' && res.data.chuzhenshijian != null && res.data.chuzhenshijian != ''){

					$("#chuzhenshijian-input").val(res.data.chuzhenshijian);
					$('#chuzhenshijianFileName').val(res.data.chuzhenshijian)
					}
					if(res.data != null && res.data != '' && res.data.keyuerenshu != null && res.data.keyuerenshu != ''){

					$("#keyuerenshu").val(res.data.keyuerenshu);
					}
					if(res.data != null && res.data != '' && res.data.guahaofei != null && res.data.guahaofei != ''){

					$("#guahaofei").val(res.data.guahaofei);
					}
					if(res.data != null && res.data != '' && res.data.clicktime != null && res.data.clicktime != ''){


										}
					if(res.data != null && res.data != '' && res.data.clicknum != null && res.data.clicknum != ''){


										}
				}
			});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			readonly();
		});		

		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
