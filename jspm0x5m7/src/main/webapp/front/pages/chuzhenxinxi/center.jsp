<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>个人中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE;">

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<h2 style="margin-top: 20px;" class="index-title">USER / CENTER</h2>
			<div class="line-container">
				<p class="line" style="background: #EEEEEE;"> 个人中心 </p>
			</div>
			<!-- 标题 -->

			<div class="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div class="right-container">
					<form class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						                        						<div class="layui-form-item">
							<label class="layui-form-label">医生工号</label>
							<div class="layui-input-block">
								<select name="yishenggonghao" id="yishenggonghao">
									<option value="">请选择</option>
									<option v-for="(item,index) in yishenggonghao" v-bind:key="index" :value="item">{{item}}</option>
								</select>
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">医生姓名</label>
							<div class="layui-input-block">
								<input type="text" name="yishengxingming" id="yishengxingming" placeholder="医生姓名" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<div class="layui-input-block">
								<img id="zhaopianImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" src="../../img/avator.png">
								<input type="hidden" id="zhaopian" name="zhaopian" />
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button type="button" class="layui-btn btn-theme" id="zhaopianUpload">
									<i class="layui-icon">&#xe67c;</i>上传图片
								</button>
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">职称</label>
							<div class="layui-input-block">
								<input type="text" name="zhicheng" id="zhicheng" placeholder="职称" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">科室</label>
							<div class="layui-input-block">
								<input type="text" name="keshi" id="keshi" placeholder="科室" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">擅长</label>
							<div class="layui-input-block">
								<input type="text" name="shanzhang" id="shanzhang" placeholder="擅长" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">出诊时间</label>
							<div class="layui-input-block">
								<input type="text" name="chuzhenshijian" id="chuzhenshijian" placeholder="出诊时间" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">可约人数</label>
							<div class="layui-input-block">
								<input type="text" name="keyuerenshu" id="keyuerenshu" placeholder="可约人数" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">挂号费</label>
							<div class="layui-input-block">
								<input type="text" name="guahaofei" id="guahaofei" placeholder="挂号费" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">最近点击时间</label>
							<div class="layui-input-block">
								<input type="text" name="clicktime" id="clicktime" placeholder="最近点击时间" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">点击次数</label>
							<div class="layui-input-block">
								<input type="text" name="clicknum" id="clicknum" placeholder="点击次数" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button @click="logout" class="layui-btn btn-submit">退出登录</button>
							</div>
						</div>
					</form>
				</div>
				<!-- 个人中心 -->
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
															yishenggonghao: [],
																																																																																																																			centerMenu: centerMenu
				},
                updated: function() {
					layui.form.render(null, 'myForm');
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;

				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../recharge/recharge.jsp'
					});
				});

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: "none"
						});
					}
				});

                								http.request(`option/yisheng/yishenggonghao`,'get',{},(res)=>{
					vue.yishenggonghao = res.data
				});
				form.on('select(yishenggonghao)', (data) => {
					console.log(data.value);
					http.request('follow/yisheng/yishenggonghao', 'get', {
						columnValue: data.value
					}, function(res) {
																														jquery("#yishengxingming").val(res.data.yishengxingming)
																																				jquery("#zhicheng").val(res.data.zhicheng)
																								jquery("#keshi").val(res.data.keshi)
																								jquery("#shanzhang").val(res.data.shanzhang)
																																																																													})
				});
																								// 上传图片
				var zhaopianUpload = upload.render({
					//绑定元素
					elem: '#zhaopianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = http.baseurl + 'upload/' + res.file;
							jquery('#zhaopian').val(url);
							jquery('#zhaopianImg').attr('src', url)
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
																																																																												
				// 查询用户信息
				let table = localStorage.getItem("userTable");

				if(!table){
					layer.msg('请先登录', {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}

				
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					form.val("myForm", data.data);
																																			// 图片赋值
					jquery("#zhaopianImg").attr("src", data.data.zhaopian);
																																																																																														});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
