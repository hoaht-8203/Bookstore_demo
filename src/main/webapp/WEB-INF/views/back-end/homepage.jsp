<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hoaht
  Date: 12/3/2023
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Dashboard</title>
    <jsp:include page="css-js/import-css.jsp"/>
</head>
<body>
<main class="main" id="top">
    <jsp:include page="layout/navigation.jsp"/>

    <jsp:include page="layout/header-nav.jsp"/>

    <div class="content">
        <div class="pb-5">
            <div class="row g-4">
                <div class="col-12 col-xxl-12">
                    <div class="mb-8">
                        <h2 class="mb-2">Dashboard</h2>
                    </div>
                    <div class="row align-items-center g-4">
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow position-relative">
                                    <span class="fas fa-book text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">20 new books</h5>
                                        <p class="text-800 fs--1 mb-0">Total book: 200</p>
                                    </div>
                                    <span class="fa-solid fa-circle text-warning ms-1 new-page-indicator notification-span position-absolute"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow position-lg-relative">
                                    <span class="fas fa-glasses text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">12 new authors</h5>
                                        <p class="text-800 fs--1 mb-0">Total author: 50</p>
                                    </div>
                                    <span class="fa-solid fa-circle text-warning ms-1 new-page-indicator notification-span position-absolute"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                    <span class="fas fa-receipt text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">0 new formats</h5>
                                        <p class="text-800 fs--1 mb-0">Total format: 10</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow position-relative">
                                    <span class="fas fa-dolly text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">2 new publishers</h5>
                                        <p class="text-800 fs--1 mb-0">Total publisher: 34</p>
                                    </div>
                                    <span class="fa-solid fa-circle text-warning ms-1 new-page-indicator notification-span position-absolute"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow position-relative">
                                    <span class="fas fa-truck-loading text-primary fs-3"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">5 sold out books</h5>
                                        <p class="text-800 fs--1 mb-0">Out of stock: 34</p>
                                    </div>
                                    <span class="fa-solid fa-circle text-warning ms-1 new-page-indicator notification-span position-absolute"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                    <span class="fas fa-user-friends text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">0 new accounts</h5>
                                        <p class="text-800 fs--1 mb-0">Total account: 67</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow position-relative">
                                    <span class="fas fa-shopping-bag text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">57 new orders</h5>
                                        <p class="text-800 fs--1 mb-0">Total order: 345</p>
                                    </div>
                                    <span class="fa-solid fa-circle text-warning ms-1 new-page-indicator notification-span position-absolute"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow position-relative">
                                    <span class="fas fa-list-ol text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">0 new categories</h5>
                                        <p class="text-800 fs--1 mb-0">Total category: 24</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow position-relative">
                                    <span class="far fa-comment-dots text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">21 new reviews</h5>
                                        <p class="text-800 fs--1 mb-0">Total review: 242</p>
                                    </div>
                                    <span class="fa-solid fa-circle text-warning ms-1 new-page-indicator notification-span position-absolute"></span>
                                </div>
                            </a>
                        </div>
                        <div class="col-12 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                            <a class="text-decoration-none" href="">
                                <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow position-relative">
                                    <span class="far fa-envelope text-primary fs-4"></span>
                                    <div class="ms-3">
                                        <h5 class="mb-0">12 new feedbacks</h5>
                                        <p class="text-800 fs--1 mb-0">Total feedback: 78</p>
                                    </div>
                                    <span class="fa-solid fa-circle text-warning ms-1 new-page-indicator notification-span position-absolute"></span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white pt-6 pb-9 border-top border-300">
            <div class="row g-6">
                <div class="col-12 col-xl-12">
                    <div class="me-xl-4">
                        <div>
                            <h3>Revenue</h3>
                        </div>
                        <div id="echart-revenue" style="height:500px; width:100%" data-echart-responsive="data-echart-responsive"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white pt-6 pb-9 border-top border-300">
            <div class="row g-6">
                <div class="col-12 col-xl-12">
                    <div class="me-xl-4">
                        <div>
                            <h3>Revenue - Cost - Profit</h3>
                        </div>
                        <div id="echart-finance" style="height:500px; width:100%" data-echart-responsive="data-echart-responsive"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white pt-6 pb-9 border-top border-300">
            <div class="row g-6">
                <div class="col-12 col-xl-12">
                    <div class="me-xl-4">
                        <div>
                            <h3>Order</h3>
                        </div>
                        <div id="echart-order" style="height:500px; width:100%" data-echart-responsive="data-echart-responsive"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="css-js/import-js.jsp"/>
<script>
    let dashboard_tag = document.getElementById('dashboard-tag')
    dashboard_tag.classList.add('active')
</script>

<script>
    let echart_revenue = document.getElementById('echart-revenue');
    let echart_order = document.getElementById('echart-order');
    let echart_finance = document.getElementById('echart-finance');

    let echart_revenue_init = echarts.init(echart_revenue, 'macarons', {
        renderer: 'canvas',
        useDirtyRect: false
    });
    let echart_order_init = echarts.init(echart_order, 'macarons', {
        renderer: 'canvas',
        useDirtyRect: false
    })
    let echart_finance_init = echarts.init(echart_finance, 'macarons', {
        renderer: 'canvas',
        useDirtyRect: false
    })

    let option_echart_revenue;
    let option_echart_order;
    let option_echart_finance;

    option_echart_revenue = {
        tooltip: {
            trigger: 'item',
            axisPointer: { type: 'link' }
        },
        xAxis: {
            type: 'category',
            data: [
                '1/12', '2/12', '3/12', '4/12', '5/12', '6/12', '7/12', '8/12', '9/12', '10/12',
                '11/12', '12/12', '13/12', '14/12', '15/12', '16/12', '17/12', '18/12', '19/12', '20/12'
            ],
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                itemStyle: {normal: {color: '#dd4b39'}},
                name: "Price",
                data: [
                    22000000, 52000000, 23000000, 12000000, 15500000, 17500000, 10500000, 11700000, 2000000, 24350000,
                    22000000, 52000000, 23000000, 12000000, 15500000, 17500000, 10500000, 11700000, 2000000, 24350000
                ],
                type: 'bar',
                barWidth: "50%",
                smooth: false
            }
        ]
    };

    option_echart_order = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {},
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                data: ['01/12', '02/12', '03/12', '04/12', '05/12', '06/12', '07/12']
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: 'Processing',
                type: 'bar',
                itemStyle: {
                    color: 'rgb(229, 120, 11)'
                },
                emphasis: {
                    focus: 'series'
                },
                data: [320, 332, 301, 334, 390, 330, 320],
                barWidth: "12%",
            },
            {
                name: 'Packing',
                type: 'bar',
                itemStyle: {
                    color: 'rgb(0, 151, 235)'
                },
                emphasis: {
                    focus: 'series'
                },
                data: [120, 132, 101, 134, 90, 230, 210],
                barWidth: "12%",
            },
            {
                name: 'Shipped',
                type: 'bar',
                itemStyle: {
                    color: 'rgb(49, 55, 74)'
                },
                emphasis: {
                    focus: 'series'
                },
                data: [220, 182, 191, 234, 290, 330, 310],
                barWidth: "12%",
            },
            {
                name: 'Refund',
                type: 'bar',
                itemStyle: {
                    color: 'rgb(237, 32, 0)'
                },
                emphasis: {
                    focus: 'series'
                },
                data: [150, 232, 201, 154, 190, 330, 410],
                barWidth: "12%",
            },
            {
                name: 'Cancle',
                type: 'bar',
                itemStyle: {
                    color: '#d54049'
                },
                emphasis: {
                    focus: 'series'
                },
                data: [150, 232, 201, 154, 190, 330, 410],
                barWidth: "12%",
            },
            {
                name: 'Completed',
                type: 'bar',
                itemStyle: {
                    color: 'rgb(37, 176, 3)'
                },
                data: [862, 1018, 964, 1026, 1679, 1600, 1570],
                emphasis: {
                    focus: 'series'
                },
                markLine: {
                    lineStyle: {
                        type: 'dashed'
                    },
                    data: [[{ type: 'min' }, { type: 'max' }]]
                },
                barWidth: "12%",
            },
        ]
    };

    let revenue = [22000000, 30000000, 18000000, 32000000, 50000000, 10000000, 46000000];
    let cost = [10000000, 22000000, 10000000, 19000000, 45000000, 15000000, 28000000];
    let profit = [];
    for(let i = 0; i < cost.length; i++){
        profit.push(revenue[i] - cost[i])
    }
    option_echart_finance = {
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['Revenue', 'Cost', 'Profit']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['01/12', '02/12', '03/12', '04/12', '05/12', '06/12', '07/12']
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name: 'Revenue',
                type: 'line',
                data: revenue,
                smooth: true,
                itemStyle: {
                    color: 'rgb(229, 120, 11)'
                },
            },
            {
                name: 'Cost',
                type: 'line',
                data: cost,
                smooth: true,
                itemStyle: {
                    color: '#d54049'
                },
            },
            {
                name: 'Profit',
                type: 'line',
                data: profit,
                smooth: true,
                itemStyle: {
                    color: 'rgb(37, 176, 3)'
                },
            }
        ]
    };

    echart_revenue_init.setOption(option_echart_revenue);
    echart_order_init.setOption(option_echart_order)
    echart_finance_init.setOption(option_echart_finance)

    window.addEventListener('resize', echart_revenue_init.resize);
    window.addEventListener('resize', echart_order_init.resize);
    window.addEventListener('resize', echart_finance_init.resize);
</script>
</body>
</html>
