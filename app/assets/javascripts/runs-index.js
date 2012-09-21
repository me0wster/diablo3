$(document).ready(function () {

    var golds_earned = new Array();
    var minutes = new Array();

    $.ajax({
        async:false,
        url:'/runs/all_gold_earned.json',
        dataType:'json',
        success:function (data) {
            for (var i = 0; i < data.length; i++) {
                golds_earned.push(data[i]);
            }
        }
    });
    $.ajax({
        async:false,
        url:'/runs/all_minutes.json',
        dataType:'json',
        success:function (data) {
            for (var i = 0; i < data.length; i++) {
                minutes.push(data[i]);
            }
        }
    })


    var chart1 = new Highcharts.Chart({
        chart:{
            renderTo:'container',
            type:'column',
            zoomType: 'xy'
        },
        title:{
            text:'Runs'
        },
        xAxis: {
            tickInterval: 1
        },
        yAxis:[
            { // Primary yAxis
                title:{
                    text:'Minutes',
                    style:{
                        color:'#89A54E'
                    }
                }
            },
            { // Secondary yAxis
                title:{
                    text:'Gold',
                    style:{
                        color:'#4572A7'
                    }
                },
                opposite:true
            }
        ],
        series:[
            {
                name: 'Gold',
                type: 'column',
                data: golds_earned,
                yAxis: 1
            },
            {
                name: 'Minutes',
                color: '#89A54E',
                type: 'spline',
                data: minutes
            }
        ]
    });
});