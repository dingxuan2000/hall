<#include "index.ftlh" >
<@masterTemplate />

<div class="layui-body" style="left: 250px; top: 20px;">
    <!-- 内容主体区域 -->
    <div class="layui-tab">
        <ul class="layui-tab-title">
            <li class="layui-icon layui-icon-prev"></li>
            <li class="layui-this">
                <div class="layui-icon layui-icon-home"></div>
            </li>
        </ul>

        <div class="layui-tab-content layui-show" style="height: 1000px;">
            <!--子页面区域-->

            <table class="layui-hide" id="demo2" lay-filter="test"></table>
        </div>

    </div>
</div>

    <#--添加button-->
    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button class="layui-btn" id="add_row" lay-event="add" style="background-color: rgb(183,36,36)">
                新增社区</button>
        </div>
    </script>

    <#--编辑&删除button-->
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-xs" lay-event="del">删除 </a>
    </script>

    <#--新增的弹出窗口-->
    <form class="layui-form" action="" id="edit_form" lay-filter="editForm" style="display: none">
<#--        <input type="hidden" name="user_id"/>-->
        <br /><br />
        <div class="layui-form-item">
            <label class="layui-form-label">社区名称</label>
            <div class="layui-input-block">
                <input type="text" name="comm_name" id="comm_name" required lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>

<#--        <button id="submit_btn" class="layui-button" lay-filter="house_verify">确认</button>-->


<#--                <div class="layui-form-item">-->
<#--            <div class="layui-input-block">-->
<#--                <button id="submit_comm" class="layui-btn" lay-submit lay-filter="submit_verify">确定</button>-->
<#--                <button type="reset" class="layui-btn layui-btn-primary">重置</button>-->
<#--            </div>-->
<#--        </div>-->
    </form>


<script>

    //加载模块
    layui.use(function () { //亦可加载特定模块：layui.use(['layer', 'laydate', function(){
        //得到各种内置组件
        let table = layui.table //表格
        ,form = layui.form
        ,element = layui.element
        ,$= layui.$;


        //监听Tab切换
        // element.on('tab(demo2)', function (data) {
        //     layer.tips('切换了 ' + data.index + '：' + this.innerHTML, this, {
        //         tips: 1
        //     });
        // });


        //执行一个 table 实例
        table.render({
            elem: '#demo2'
            , url: '/getCommManager'
            , height: 1000
            , width: 800
            , title: '用户表'
            , page: true //开启分页
            , toolbar: '#toolbarDemo' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            // , totalRow: true //开启合计行
            , cols: [[ //表头

                {field: 'comm_id', title: '序号', width: 80, sort: true, fixed: 'left'}
                , {field: 'comm_name', title: '社区名称', width: 400}
                ,{field: 'modified', title:'操作', width: 200, toolbar:'#barDemo'}


            ]]
        });


        //监听头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'add':
                    //BUG: 暂时还是没法把layui-hide改成layui-show.
                    // $('#comm_name').show();
                    // $('#comm_name').addClass("layui-show");

                    //实现打开iframe窗口
                    layer.open({
                        type: 1,
                        title: '新增社区',
                        area: ['550px', '200px'],
                        shade: 0.8, // 遮罩层透明度
                        //id: 'LAY_layuipro', //设定一个id，防止重复弹出
                        id: (new Date()).valueOf(),
                        resize: false, //是否允许拉伸
                        //btn: ['确认', '关闭'],
                        moveType: 1, //拖拽模式，0或者1
                        offset: 'auto', //默认垂直水平居中
                        content: $('#edit_form'),
                        btn:['确定'],
                        yes:function (index, layero){

                            //抓住用户输入的input
                            let commName = document.getElementById("comm_name").value;
                            if(commName == ''){
                                alert("请输入名称");
                            }else {

                                const add = document.getElementById("submit_btn");
                                let xhr = new XMLHttpRequest();
                                xhr.open("POST", "http://localhost:8080/addCommManager", true);
                                xhr.setRequestHeader("Content-Type", "application/json");
                                let data1 = JSON.stringify({
                                    "comm_name": commName
                                });
                                xhr.send(data1);
                            }



                        }

                        // yes: function(index, layero) {  // 确认按钮回调方法,两个参数分别为当前层索引、当前层DOM对象
                        //     var submitID = 'LAY-back-submit'; // 1.提交按钮ID
                        //     var submitFilterID = 'LAY-front-submit'; // 2.提交按钮lay-filter
                        //
                        //     var submit = layero.find('iframe').contents().find('#' + submitID); // 3.获取子页面按钮
                        //     var iframeWindow = layero.find('iframe')[0].contentWindow; // 4.获取子页面iframe对象
                        // }


                    });




                // layer.open({
                //     type : 2,
                //     title : "信息編輯",
                //     area : [ '45%', '35%' ],
                //     shade : 0,
                //     shadeClose : false,
                //     content : "/userAdd?username="+data.username,
                //     btn:['提交'],
                //     yes:function(index,layero){
                //         var body = top.layer.getChildFrame('body',index);
                //         var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                //         console.log(body.find('#rew').val());
                //         $.ajax({
                //             url:"/admin/user/updateClassInfo",
                //             type:'post',
                //             data:{
                //                 'rew':body.find('#rew').val()
                //             },
                //             dataType:'json',
                //             success:function(data){
                //                 if (data.code == 0) {
                //                     layer.msg(data.msg,{
                //                         icon:1,
                //                         time:1000
                //                     },function(){
                //                         parent.layer.close(index)
                //                     });
                //                 } else if (data.code == 500) {
                //                     layer.msg(data.msg,{
                //                         icon:2,
                //                         time:1000
                //                     },function(){});
                //                 }
                //             }
                //         });
                //     },
                //     closeBtn : 1,
                //     btnAlign:'c',
                //     success : function(layero, index) {
                //
                //     },
                //     cancel : function() {
                //         layer.open({
                //             type: 1
                //             ,title: false //不显示标题栏
                //             ,closeBtn: false
                //             ,area: '300px;'
                //             ,shade: 0.8
                //             ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                //             ,btn: ['是的关闭它', '我再考虑一下']
                //             ,yes:function(){
                //                 layer.closeAll();
                //             }
                //             ,btnAlign: 'c'
                //             ,moveType: 1 //拖拽模式，0或者1
                //             ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;text-align:center;font-size:20px;">确定关闭吗~!</div>'
                //
                //         });
                //
                //         return false;
                //     },
                //     end : function() {
                //         layer.closeAll();
                //         location.reload();
                //     }
                // });


                //break;
                // case 'update':
                //     if (data.length === 0) {
                //         layer.msg('请选择一行');
                //     } else if (data.length > 1) {
                //         layer.msg('只能同时编辑一个');
                //     } else {
                //         layer.alert('编辑 [id]：' + checkStatus.data[0].id);
                //     }
                //     break;
                // case 'delete':
                //     if (data.length === 0) {
                //         layer.msg('请选择一行');
                //     } else {
                //         layer.msg('删除');
                //     }
                //     break;
            }
            ;
        });


        // form.on('submit(submit_verify)', function (data) {
        //     //提交成功后关闭弹窗
        //     parent.layer.msg('操作成功', {
        //         icon: 1,
        //         time: 2000
        //     });
        //
        //     layer.closeAll();
        //     //当点击"确认按钮"
        //     var row = {
        //         comm_name: $("#comm_name").val(),
        //         id: editedRowId === -1 ? (new Date()).valueOf() : editedRowId
        //     };
        //
        //     if(editedRowId === -1){
        //
        //     }
        // });

        //监听行工具事件
        // table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
        //     var data = obj.data //获得当前行数据
        //         , layEvent = obj.event; //获得 lay-event 对应的值
        //     if (layEvent === 'detail') {
        //         layer.msg('查看操作');
        //     } else if (layEvent === 'more') {
        //         //下拉菜单
        //         dropdown.render({
        //             elem: this //触发事件的 DOM 对象
        //             , show: true //外部事件触发即显示
        //             , data: [{
        //                 title: '编辑'
        //                 , id: 'edit'
        //             }, {
        //                 title: '删除'
        //                 , id: 'del'
        //             }]
        //             , click: function (menudata) {
        //                 if (menudata.id === 'del') {
        //                     layer.confirm('真的删除行么', function (index) {
        //                         obj.del(); //删除对应行（tr）的DOM结构
        //                         layer.close(index);
        //                         //向服务端发送删除指令
        //                     });
        //                 } else if (menudata.id === 'edit') {
        //                     layer.msg('编辑操作，当前行 ID:' + data.id);
        //                 }
        //             }
        //             , align: 'right' //右对齐弹出（v2.6.8 新增）
        //             , style: 'box-shadow: 1px 1px 10px rgb(0 0 0 / 12%);' //设置额外样式
        //         })
        //     }
        // });
    })
</script>
