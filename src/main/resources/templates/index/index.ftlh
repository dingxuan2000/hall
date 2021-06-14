<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 管理系统大布局 - Layui</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <link rel="stylesheet" href="./css/nav.css">

</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header layui-bg-red">

        <ul class="layui-nav">
            <div class="layui-logo layui-hide-xs" style="width: 500px; font-size: 20px; color: white">
                相城高新区【元和街道】安置小区喜宴厅预定管理平台
            </div>

            <li class="layui-nav-item layui-hide layui-show-md-inline-block layui-layout-right">
                <a href="javascript:;">
                    <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-nav-img">
                    用户名
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">修改密码</a></dd>
                    <dd><a href="">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-gray" style="width: 250px; border-right:1px ridge red;">
        <div class="layui-side-scroll" style="width: 250px">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree layui-bg-gray" lay-filter="test" style="width: 250px">
                <li class="layui-nav-item nav_parent" style="border-bottom:1px ridge red; border-spacing: 10px">
                    <a class="" href="javascript:;" style="color: red; font-size: 20px; text-align: center">
                        <i class="layui-icon layui-icon-unlink" style="font-size: large;"></i>&nbsp;社区登记</a>
                    <dl class="layui-nav-child nav_child">
                        <dd class="nav_child"><a href="javascript:;">
                                预约信息</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" style="border-bottom:1px ridge red;border-spacing: 10px">
                    <a href="javascript:;" style="color: red; font-size: 20px; text-align: center">物业登记</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">预约信息</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" style="border-bottom:1px ridge red; border-spacing: 10px">
                    <a href="javascript:;" style="color: red; font-size: 20px; text-align: center">基础数据</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">喜宴厅管理</a></dd>
                        <dd><a href="javascript:;">喜宴厅信息</a></dd>
                        <dd><a href="javascript:;">水电气表</a></dd>
                        <dd><a href="javascript:;">预定注意事项</a></dd>

                    </dl>
                </li>
                <li class="layui-nav-item" style="border-bottom:1px ridge red; border-spacing: 10px">
                    <a href="javascript:;" style="color: red; font-size: 20px; text-align: center">统计报表</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">租金统计</a></dd>
                        <dd><a href="javascript:;">费用统计</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" style="border-bottom:1px ridge red; border-spacing: 10px">
                    <a href="javascript:;" style="color: red; font-size: 20px; text-align: center">系统设置</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">社区管理</a></dd>
                        <dd><a href="javascript:;">小区管理</a></dd>
                        <dd><a href="javascript:;">账户设置</a></dd>
                        <dd><a href="javascript:;">收费类型</a></dd>
                        <dd><a href="javascript:;">预留时间标准</a></dd>
                    </dl>
                </li>

            </ul>
        </div>
    </div>

    <div class="layui-body" style="left: 250px">
        <!-- 内容主体区域 -->
        <div class="layui-tab" >
            <ul class="layui-tab-title">
                <li class="layui-icon layui-icon-prev"></li>
                <li class="layui-this">
                    <div class="layui-icon layui-icon-home"></div>
                </li>
            </ul>

            <div class="layui-tab-content layui-show" style="height: 1000px;">

            </div>

        </div>
    </div>

    <div class="layui-footer layui-bg-red" style="left: 250px;">
        Copyright&#169;  2021 苏州市相城元惠物业管理有限公司 版权所有

    </div>
</div>
<script src="./layui/layui.js"></script>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function(){
        var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function(othis){
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            ,menuRight: function(){
                layer.open({
                    type: 1
                    ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    ,area: ['260px', '100%']
                    ,offset: 'rt' //右上角
                    ,anim: 5
                    ,shadeClose: true
                });
            }
        });

    });
</script>
</body>
</html>