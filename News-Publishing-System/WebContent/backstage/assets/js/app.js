$(function() {

        //注册页面输入框校验
        var username=$("input[name='username']");
        var emint=$("input[name='emint']");
        var pas1=$("input[name='passone']");
        var pas2=$("input[name='passtwo']");
        var tijiaos=$(".tijiao");
        //警告 密码不一致
        $("#doc-ipt-pwd-1").mouseout(function(){

            if(typeof(pas1)=='undefined'&& typeof(pas2)=='undefined'){
             $(".warninfo").hidden();
         }else{
           if(pas1.val()!=pas2.val()){
                    // alert("密码错误");
                    $(".warninfo").show();
                }else{
                    $(".warninfo").hide();
                }}
            });
        //移除鼠标 移除警告
        $("#doc-ipt-pwd-1").mouseout(function(){
            if(emint.val()!='' && username.val()!=''){
               $(".warninfo2").hide(); 
           }
       });

        //登录页面输入框验证
        var em222=$("input[name='em222']");
        var pass222=$("input[name='pass222']");
        $(".denglu").click(function(){

           if((em222.val()==''&& pass222.val()=='')||(em222.val()==''|| pass222.val()=='')){

                 //alert("都为空，显示");
                 $(".warninfo2").show();
             }else{
                //alert("不显示警告");
                $(".warninfo2").hide();
            }
            if(em222.val()==''&& pass222.val() == ''){
                $("#formlogin").attr("target","frameFiles");
                $("#formlogin").submit();
            }
        })


         //用户个人信息邮箱验证
         var useremailform=$("input[name='useremailform']");
         useremailform.mouseout(function(){
          if(!useremailform.val().match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)) {
             $(".warninfo3").show();
         } else {
             $(".warninfo3").hide();
         }
     });





         //素材库弹窗
         var $modal = $('#your-modal');
         $modal.siblings('.am-btn').on('click', function(e) {
          var $target = $(e.target);
          if (($target).hasClass('js-modal-open')) {
            $modal.modal();
        } 
    });

         var $modal2 = $('#your-modal2');
         $modal2.siblings('.am-btn').on('click', function(e) {
          var $target = $(e.target);
          if (($target).hasClass('js-modal-open')) {
            $modal2.modal();
        } 
    });


         var $modal3 = $('#your-modal3');
         $modal3.siblings('.am-btn').on('click', function(e) {
          var $target = $(e.target);
          if (($target).hasClass('js-modal-open')) {
            $modal3.modal();
        } 
    });

         var $fullText = $('.admin-fullText');
         $('#admin-fullscreen').on('click', function() {
            $.AMUI.fullscreen.toggle();
        });

         $(document).on($.AMUI.fullscreen.raw.fullscreenchange, function() {
            $fullText.text($.AMUI.fullscreen.isFullscreen ? '退出全屏' : '开启全屏');
        });


         var dataType = $('body').attr('data-type');
         for (key in pageData) {
            if (key == dataType) {
                pageData[key]();
            }
        }

        $('.tpl-switch').find('.tpl-switch-btn-view').on('click', function() {
            $(this).prev('.tpl-switch-btn').prop("checked", function() {
                if ($(this).is(':checked')) {
                    return false
                } else {
                    return true
                }
            })
                // console.log('123123123')

            })
    })
    // ==========================
    // 侧边导航下拉列表
    // ==========================

    $('.tpl-left-nav-link-list').on('click', function() {
        $(this).siblings('.tpl-left-nav-sub-menu').slideToggle(80)
        .end()
        .find('.tpl-left-nav-more-ico').toggleClass('tpl-left-nav-more-ico-rotate');
    })
    // ==========================
    // 头部导航隐藏菜单
    // ==========================

    $('.tpl-header-nav-hover-ico').on('click', function() {
        $('.tpl-left-nav').toggle();
        $('.tpl-content-wrapper').toggleClass('tpl-content-wrapper-hover');
    })


// 页面数据
var pageData = {
    // ===============================================
    // 首页
    // ===============================================
    'index': function indexData() {


        var myScroll = new IScroll('#wrapper', {
            scrollbars: true,
            mouseWheel: true,
            interactiveScrollbars: true,
            shrinkScrollbars: 'scale',
            preventDefault: false,
            fadeScrollbars: true
        });

        var myScrollA = new IScroll('#wrapperA', {
            scrollbars: true,
            mouseWheel: true,
            interactiveScrollbars: true,
            shrinkScrollbars: 'scale',
            preventDefault: false,
            fadeScrollbars: true
        });

        var myScrollB = new IScroll('#wrapperB', {
            scrollbars: true,
            mouseWheel: true,
            interactiveScrollbars: true,
            shrinkScrollbars: 'scale',
            preventDefault: false,
            fadeScrollbars: true
        });



        // document.addEventListener('touchmove', function(e) { e.preventDefault(); }, false);

        // ==========================
        // 百度图表A http://echarts.baidu.com/
        // ==========================

        var echartsA = echarts.init(document.getElementById('tpl-echarts-A'));
        option = {

            tooltip: {
                trigger: 'axis',
            },
            legend: {
                data: ['邮件', '媒体', '资源']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [{
                type: 'category',
                boundaryGap: true,
                data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
            }],

            yAxis: [{
                type: 'value'
            }],
            series: [{
                name: '邮件',
                type: 'line',
                stack: '总量',
                areaStyle: { normal: {} },
                data: [120, 132, 101, 134, 90, 230, 210],
                itemStyle: {
                    normal: {
                        color: '#59aea2'
                    },
                    emphasis: {

                    }
                }
            },
            {
                name: '媒体',
                type: 'line',
                stack: '总量',
                areaStyle: { normal: {} },
                data: [220, 182, 191, 234, 290, 330, 310],
                itemStyle: {
                    normal: {
                        color: '#e7505a'
                    }
                }
            },
            {
                name: '资源',
                type: 'line',
                stack: '总量',
                areaStyle: { normal: {} },
                data: [150, 232, 201, 154, 190, 330, 410],
                itemStyle: {
                    normal: {
                        color: '#32c5d2'
                    }
                }
            }
            ]
        };
        echartsA.setOption(option);
    },
    // ===============================================
    // 图表页
    // ===============================================
    'chart': function chartData() {
        // ==========================
        // 百度图表A http://echarts.baidu.com/
        // ==========================

        var echartsC = echarts.init(document.getElementById('tpl-echarts-C'));


        optionC = {
            tooltip: {
                trigger: 'axis'
            },
            toolbox: {
                top: '0',
                feature: {
                    dataView: { show: true, readOnly: false },
                    magicType: { show: true, type: ['line', 'bar'] },
                    restore: { show: true },
                    saveAsImage: { show: true }
                }
            },
            legend: {
                data: ['蒸发量', '降水量', '平均温度']
            },
            xAxis: [{
                type: 'category',
                data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
            }],
            yAxis: [{
                type: 'value',
                name: '水量',
                min: 0,
                max: 250,
                interval: 50,
                axisLabel: {
                    formatter: '{value} ml'
                }
            },
            {
                type: 'value',
                name: '温度',
                min: 0,
                max: 25,
                interval: 5,
                axisLabel: {
                    formatter: '{value} °C'
                }
            }
            ],
            series: [{
                name: '蒸发量',
                type: 'bar',
                data: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3]
            },
            {
                name: '降水量',
                type: 'bar',
                data: [2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
            },
            {
                name: '平均温度',
                type: 'line',
                yAxisIndex: 1,
                data: [2.0, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4, 23.0, 16.5, 12.0, 6.2]
            }
            ]
        };

        echartsC.setOption(optionC);

        var echartsB = echarts.init(document.getElementById('tpl-echarts-B'));
        optionB = {
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                x: 'center',
                data: ['某软件', '某主食手机', '某水果手机', '降水量', '蒸发量']
            },
            radar: [{
                indicator: [
                { text: '品牌', max: 100 },
                { text: '内容', max: 100 },
                { text: '可用性', max: 100 },
                { text: '功能', max: 100 }
                ],
                center: ['25%', '40%'],
                radius: 80
            },
            {
                indicator: [
                { text: '外观', max: 100 },
                { text: '拍照', max: 100 },
                { text: '系统', max: 100 },
                { text: '性能', max: 100 },
                { text: '屏幕', max: 100 }
                ],
                radius: 80,
                center: ['50%', '60%'],
            },
            {
                indicator: (function() {
                    var res = [];
                    for (var i = 1; i <= 12; i++) {
                        res.push({ text: i + '月', max: 100 });
                    }
                    return res;
                })(),
                center: ['75%', '40%'],
                radius: 80
            }
            ],
            series: [{
                type: 'radar',
                tooltip: {
                    trigger: 'item'
                },
                itemStyle: { normal: { areaStyle: { type: 'default' } } },
                data: [{
                    value: [60, 73, 85, 40],
                    name: '某软件'
                }]
            },
            {
                type: 'radar',
                radarIndex: 1,
                data: [{
                    value: [85, 90, 90, 95, 95],
                    name: '某主食手机'
                },
                {
                    value: [95, 80, 95, 90, 93],
                    name: '某水果手机'
                }
                ]
            },
            {
                type: 'radar',
                radarIndex: 2,
                itemStyle: { normal: { areaStyle: { type: 'default' } } },
                data: [{
                    name: '降水量',
                    value: [2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 75.6, 82.2, 48.7, 18.8, 6.0, 2.3],
                },
                {
                    name: '蒸发量',
                    value: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 35.6, 62.2, 32.6, 20.0, 6.4, 3.3]
                }
                ]
            }
            ]
        };
        echartsB.setOption(optionB);
        var echartsA = echarts.init(document.getElementById('tpl-echarts-A'));
        option = {

            tooltip: {
                trigger: 'axis',
            },
            legend: {
                data: ['邮件', '媒体', '资源']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [{
                type: 'category',
                boundaryGap: true,
                data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
            }],

            yAxis: [{
                type: 'value'
            }],
            series: [{
                name: '邮件',
                type: 'line',
                stack: '总量',
                areaStyle: { normal: {} },
                data: [120, 132, 101, 134, 90, 230, 210],
                itemStyle: {
                    normal: {
                        color: '#59aea2'
                    },
                    emphasis: {

                    }
                }
            },
            {
                name: '媒体',
                type: 'line',
                stack: '总量',
                areaStyle: { normal: {} },
                data: [220, 182, 191, 234, 290, 330, 310],
                itemStyle: {
                    normal: {
                        color: '#e7505a'
                    }
                }
            },
            {
                name: '资源',
                type: 'line',
                stack: '总量',
                areaStyle: { normal: {} },
                data: [150, 232, 201, 154, 190, 330, 410],
                itemStyle: {
                    normal: {
                        color: '#32c5d2'
                    }
                }
            }
            ]
        };
        echartsA.setOption(option);
    }
}