<#macro masterTemplate>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>layout 管理系统大布局 - Layui</title>
        <link rel="stylesheet" href="./layui/css/layui.css">
        <link rel="stylesheet" href="./css/nav.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    </head>

    <body>

    <div class="layui-layout layui-layout-admin">
        <div class="layui-header " style="background-color:rgb(183,36,36) ;">

            <ul class="layui-nav">
                <div class="layui-logo layui-hide-xs" style="width: 500px; font-size: 20px; color: white; ">
                    相城高新区【元和街道】安置小区喜宴厅预定管理平台
                </div>

                <li class="layui-nav-item layui-hide layui-show-md-inline-block layui-layout-right">
                    <a href="javascript:;">
                        <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg"
                             class="layui-nav-img">
                        用户名
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="">修改密码</a></dd>
                        <dd><a href="">退出</a></dd>
                    </dl>
                </li>
            </ul>
        </div>

        <div class="layui-side layui-bg-gray" style="width: 250px; border-right:1px ridge rgb(204,103,103);">
            <div class="layui-side-scroll" style="width: 250px">
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree layui-bg-gray my_nav" lay-filter="test" style="width: 250px;">
                    <li class="layui-nav-item show_one"
                        style="border-bottom:1px ridge rgb(204,103,103); border-spacing: 10px; ">
                        <a id="demo" class="nav_parent" href="javascript:;" onclick="changeColor('change_icon1','change_text1','#list1');
                        " style="color: rgb(183,60,78);">
                            <i id="change_icon1" class="layui-icon layui-icon-service icon_li"></i>&nbsp;
                            <span id="change_text1" class="text_color">社区登记</span>

                        </a>
                        <dl id="list1" class="layui-nav-child nav_child">
                            <dd class="nav_child2"><a id="list1_font"
                                                      href="/test.html">
                                    预约信息</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item border_bottom show_one">
                        <a class="nav_parent" href="javascript:;"
                           onclick="changeColor('change_icon2','change_text2','#list2');"
                           style="color: rgb(183,60,78);">
                            <i id="change_icon2" class="layui-icon layui-icon-star-fill icon_li"></i>&nbsp;
                            <span id="change_text2" class="text_color">物业登记</span></a>
                        <dl id="list2" class="layui-nav-child nav_child">
                            <dd class="nav_child2"><a id="list2_font"
                                                      href="javascript:;">预约信息</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item border_bottom">
                        <a class="nav_parent" href="javascript:;"
                           onclick="changeColor('change_icon3','change_text3','#list3');"
                           style="color: rgb(183,60,78);">
                            <i id="change_icon3" class="layui-icon layui-icon-form icon_li"></i>&nbsp;
                            <span id="change_text3" class="text_color">基础数据</span></a>
                        <dl id="list3" class="layui-nav-child nav_child list3_select">
                            <dd id="list3_1" class="nav_child2 list3_one"><a
                                        id="list3_font1" href="javascript:;">喜宴厅管理</a></dd>
                            <dd id="list3_2" class="nav_child2 list3_one"><a
                                        id="list3_font2" href="javascript:;">喜宴厅信息</a></dd>
                            <dd id="list3_3" class="nav_child2 list3_one"><a
                                        id="list3_font3" href="javascript:;">水电气表</a></dd>
                            <dd id="list3_4" class="nav_child2 list3_one"><a
                                        id="list3_font4" href="javascript:;">预定注意事项</a></dd>

                        </dl>
                    </li>
                    <li class="layui-nav-item border_bottom">
                        <a class="nav_parent" href="javascript:;"
                           onclick="changeColor('change_icon4','change_text4','#list4');"
                           style="color: rgb(183,60,78);">
                            <i id="change_icon4" class="layui-icon layui-icon-chart-screen icon_li"></i>&nbsp;
                            <span id="change_text4" class="text_color">统计报表</span></a>
                        <dl id="list4" class="layui-nav-child nav_child">
                            <dd class="nav_child2"><a id="list4_font1"
                                                      href="javascript:;">租金统计</a></dd>
                            <dd class="nav_child2"><a id="list4_font2"
                                                      href="javascript:;">费用统计</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item border_bottom arrow_color">
                        <a class="nav_parent" href="javascript:;"
                           onclick="changeColor('change_icon5','change_text5','#list5');"
                           style="color: rgb(183,60,78);">
                            <i id="change_icon5" class="layui-icon layui-icon-set-fill icon_li"></i>&nbsp;
                            <span id="change_text5" class="text_color">系统设置</span></a>
                        <dl id="list5" class="layui-nav-child nav_child">
                            <dd class="nav_child2"><a id="list5_font1"
                                                      href="/commManager">社区管理</a></dd>
                            <dd class="nav_child2"><a id="list5_font2"
                                                      href="/houseManager">小区管理</a></dd>
                            <dd class="nav_child2"><a id="list5_font3"
                                                      href="javascript:;">账户设置</a></dd>
                            <dd class="nav_child2"><a id="list5_font4"
                                                      href="/charge">收费类型</a></dd>
                            <dd class="nav_child2"><a id="list5_font5"
                                                      href="javascript:;">预留时间标准</a></dd>
                        </dl>
                    </li>

                </ul>
            </div>
        </div>


        <div class="layui-footer "
             style="left: 250px;background-color: white; box-shadow: 0 1px 2px 0 rgb(0 0 0 / 10%);">
            Copyright&#169; 2021 苏州市相城元惠物业管理有限公司 版权所有

        </div>
    </div>

    <script src="./layui/layui.js"></script>
    <script src="./js/index.js"></script>
    </body>

    </html>
</#macro>
<@masterTemplate />


