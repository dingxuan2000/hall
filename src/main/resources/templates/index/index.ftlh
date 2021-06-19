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
                        <dd class="nav_child2" ><a id="list1_font"
                                                   href="/test.html" >
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
                        <dd class="nav_child2" ><a id="list2_font"
                                                   href="javascript:;" >预约信息</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item border_bottom">
                    <a class="nav_parent" href="javascript:;"
                       onclick="changeColor('change_icon3','change_text3','#list3');"
                       style="color: rgb(183,60,78);">
                        <i id="change_icon3" class="layui-icon layui-icon-form icon_li"></i>&nbsp;
                        <span id="change_text3" class="text_color">基础数据</span></a>
                    <dl id="list3" class="layui-nav-child nav_child list3_select">
                        <dd id="list3_1" class="nav_child2 list3_one" ><a
                                    id="list3_font1" href="javascript:;" >喜宴厅管理</a></dd>
                        <dd id="list3_2" class="nav_child2 list3_one" ><a
                                    id="list3_font2" href="javascript:;" >喜宴厅信息</a></dd>
                        <dd id="list3_3" class="nav_child2 list3_one" ><a
                                    id="list3_font3" href="javascript:;" >水电气表</a></dd>
                        <dd id="list3_4" class="nav_child2 list3_one" ><a
                                    id="list3_font4" href="javascript:;" >预定注意事项</a></dd>

                    </dl>
                </li>
                <li class="layui-nav-item border_bottom">
                    <a class="nav_parent" href="javascript:;"
                       onclick="changeColor('change_icon4','change_text4','#list4');"
                       style="color: rgb(183,60,78);">
                        <i id="change_icon4" class="layui-icon layui-icon-chart-screen icon_li"></i>&nbsp;
                        <span id="change_text4" class="text_color">统计报表</span></a>
                    <dl id="list4" class="layui-nav-child nav_child">
                        <dd class="nav_child2" ><a id="list4_font1"
                                                   href="javascript:;">租金统计</a></dd>
                        <dd class="nav_child2" ><a id="list4_font2"
                                                   href="javascript:;" >费用统计</a></dd>
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
                                                  href="javascript:;" >社区管理</a></dd>
                        <dd class="nav_child2"><a id="list5_font2"
                                                  href="javascript:;" >小区管理</a></dd>
                        <dd class="nav_child2" ><a id="list5_font3"
                                                   href="javascript:;" >账户设置</a></dd>
                        <dd class="nav_child2" ><a id="list5_font4"
                                                   href="javascript:;" >收费类型</a></dd>
                        <dd class="nav_child2" ><a id="list5_font5"
                                                   href="javascript:;">预留时间标准</a></dd>
                    </dl>
                </li>

            </ul>
        </div>
    </div>

    <div class="layui-body" style="left: 250px">
        <!-- 内容主体区域 -->
        <div class="layui-tab">
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

    <div class="layui-footer "
         style="left: 250px;background-color: white; box-shadow: 0 1px 2px 0 rgb(0 0 0/10%);">
        Copyright&#169; 2021 苏州市相城元惠物业管理有限公司 版权所有

    </div>
</div>
<script src="./layui/layui.js"></script>

<script type="text/javascript">
    //Added the background-Color of each dd when the mouse click on it.
    //但是有個BUG: 會有藍綠色片刻出現!
    function changeDdColor(id) {
        //document.getElementById(id).style.backgroundColor = "rgb(215,120,120)";
    }

    //classTag1:
    let dd1 = document.getElementsByClassName('list3_select').childNodes;
    for(child in dd1){
        console.log('child: '+dd1[child]);
    }
    //console.log('dd1: ' + dd1.innerHTML);

    // document.addEventListener('click', function (event) {
    //     if (dd1 !== event.target && !dd1.contains(event.target)) {
    //         console.log('clicking outside the dd');
    //         document.getElementById("list3_1").style.backgroundColor = "#fff";
    //     }
    // });




    //Changed the Font-Color and Icon-Color of each <li> tag in the nav bar to white.
    function changeColor(id1, id2, list) {
        document.getElementById(id1).style.color = "#fff";
        document.getElementById(id2).style.color = "#fff";
        $(list).show();
    }


    /** When click to other positions of the window screen, recover the Font-Color
     * and Icon-Color to red. 分成了多种情况，比较累赘，但目前没其他方法了...
     * **/
        //classTag1:
    let container = document.getElementsByClassName('nav_parent')[0];
    document.addEventListener('click', function (event) {
        if (container !== event.target && !container.contains(event.target)) {
            console.log('clicking outside the div');
            document.getElementById("change_icon1").style.color = "rgb(183,60,78)";
            document.getElementById("change_text1").style.color = "rgb(183,60,78)";

        } else {
            //collapse other <li> tags
            console.log('I am clicking first li');
            //document.getElementById("list2").style.display='none';
            $("#list2").hide();
            $("#list3").hide();
            $("#list4").hide();
            $("#list5").hide();
        }
    });

    //classTag2:
    let container2 = document.getElementsByClassName('nav_parent')[1];
    document.addEventListener('click', function (event) {

        if (container2 !== event.target && !container2.contains(event.target)) {
            console.log('clicking outside the div');

            document.getElementById("change_icon2").style.color = "rgb(183,60,78)";
            document.getElementById("change_text2").style.color = "rgb(183,60,78)";

        } else {
            //collapse other <li> tags
            console.log('I am clicking first li');
            //document.getElementById("list2").style.display='none';
            $("#list1").hide();
            $("#list3").hide();
            $("#list4").hide();
            $("#list5").hide();
        }
    });

    //classTag3:
    let container3 = document.getElementsByClassName('nav_parent')[2];
    document.addEventListener('click', function (event) {
        if (container3 !== event.target && !container3.contains(event.target)) {
            console.log('clicking outside the div');
            document.getElementById("change_icon3").style.color = "rgb(183,60,78)";
            document.getElementById("change_text3").style.color = "rgb(183,60,78)";

        } else {
            //collapse other <li> tags
            console.log('I am clicking first li');
            //document.getElementById("list2").style.display='none';
            $("#list2").hide();
            $("#list1").hide();
            $("#list4").hide();
            $("#list5").hide();
        }
    });

    //classTag4:
    let container4 = document.getElementsByClassName('nav_parent')[3];
    document.addEventListener('click', function (event) {
        if (container4 !== event.target && !container4.contains(event.target)) {
            console.log('clicking outside the div');
            document.getElementById("change_icon4").style.color = "rgb(183,60,78)";
            document.getElementById("change_text4").style.color = "rgb(183,60,78)";

        } else {
            //collapse other <li> tags
            console.log('I am clicking first li');
            //document.getElementById("list2").style.display='none';
            $("#list2").hide();
            $("#list3").hide();
            $("#list1").hide();
            $("#list5").hide();
        }
    });

    //classTag5:
    let container5 = document.getElementsByClassName('nav_parent')[4];
    document.addEventListener('click', function (event) {
        if (container5 !== event.target && !container5.contains(event.target)) {
            console.log('clicking outside the div');
            document.getElementById("change_icon5").style.color = "rgb(183,60,78)";
            document.getElementById("change_text5").style.color = "rgb(183,60,78)";

        } else {
            //collapse other <li> tags
            console.log('I am clicking first li');
            //document.getElementById("list2").style.display='none';
            $("#list2").hide();
            $("#list3").hide();
            $("#list4").hide();
            $("#list1").hide();
        }
    });


    var nav = document.querySelector('.my_nav');
    nav.addEventListener('toggle', function (event) {

        // Only run if the dropdown is open
        if (!event.target.open) return;

        // Get all other open dropdowns and close them
        var dropdowns = nav.querySelectorAll('.show_one[open]');
        Array.prototype.forEach.call(dropdowns, function (dropdown) {
            if (dropdown === event.target) return;
            dropdown.removeAttribute('open');
        });

    }, true);


    // function kkk(obj) {
    //     if (obj != undefined) {
    //         obj.style.color = "white";
    //         obj.backgroundColor = "rgb(183,36,36)";
    //     }
    //     // if(this.oldObj!=undefined){
    //     //     this.oldObj.style.color = "white";
    //     //     this.oldObj.backgroundColor = "rgb(168, 8, 8)";
    //     // }
    //     //this.oldObj = obj;
    //     obj.style.color = "red";
    //     //obj.style.backgroundColor = "white";

    // }

    //         $('.nav_parent').click(function(){
    //         $('.nav_parent').not(this).removeClass('selected');
    //         $(this).toggleClass('selected');
    // });

</script>
<script>
    //JS
    // layui.use(['element', 'layer', 'util'], function(){
    //     var element = layui.element
    //         ,layer = layui.layer
    //         ,util = layui.util
    //         ,$ = layui.$;

    //     //头部事件
    //     util.event('lay-header-event', {
    //         //左侧菜单事件
    //         menuLeft: function(othis){
    //             layer.msg('展开左侧菜单的操作', {icon: 0});
    //         }
    //         ,menuRight: function(){
    //             layer.open({
    //                 type: 1
    //                 ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
    //                 ,area: ['260px', '100%']
    //                 ,offset: 'rt' //右上角
    //                 ,anim: 5
    //                 ,shadeClose: true
    //             });
    //         }
    //     });

    // });
</script>
</body>

</html>