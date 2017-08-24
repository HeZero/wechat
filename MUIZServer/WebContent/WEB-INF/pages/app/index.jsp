<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <title>千裙百色</title>

    <!--//////////////////////// 适应移动端 START ////////////////////////////-->

    <!-- 页面字符编码 -->
    <meta charset="utf-8">

    <!-- 避免IE使用兼容模式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- 启用360浏览器的极速模式(webkit) -->
    <meta name="renderer" content="webkit">
    <!-- 微软的老式浏览器 -->
    <meta name="MobileOptimized" content="320">

    <!-- 关键字描述 -->
    <meta name="description" content="">

    <!-- 设置移动端视图 -->
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <!-- 针对手持设备优化，主要是针对一些老的不识别viewport的浏览器，比如黑莓 -->
    <meta name="HandheldFriendly" content="true">

    <!-- 删除苹果默认的工具栏和菜单栏 -->
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <!-- 设置苹果工具栏颜色 -->
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />

    <!-- 忽略页面中的数字识别为电话，忽略email识别 -->
    <meta name="format-detection" content="telphone=no, email=no" />

    <!-- uc强制竖屏 -->
    <meta name="screen-orientation" content="portrait">
    <!-- QQ强制竖屏 -->
    <meta name="x5-orientation" content="portrait">
    <!-- UC强制全屏 -->
    <meta name="full-screen" content="yes">
    <!-- QQ强制全屏 -->
    <meta name="x5-fullscreen" content="true">
    <!-- UC应用模式 -->
    <meta name="browsermode" content="application">
    <!-- QQ应用模式 -->
    <meta name="x5-page-mode" content="app">

    <!-- windows phone 点击无高光 -->
    <meta name="msapplication-tap-highlight" content="no">

    <!--//////////////////////// 适应移动端 END ////////////////////////////-->

    <!-- 添加 favicon icon -->
    <link rel="shortcut icon" type="../../assets/image/ico" href="../../assets/favicon.ico" />

    <!-- Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="../../assets/vender/bootstrap-3.3.5-dist/css/bootstrap.min.css">

    <!-- 网站样式 -->
    <link rel="stylesheet" href="../../assets/css/app.common.min.css">
</head>

<body>

    <!-- ///////////// START 页头  ///////////////-->
    <section class="header-wrap">
        <h1>千裙百色</h1>
        <a class="userCenter" href="javascript:;"><i class="glyphicon glyphicon-shopping-cart"></i></a>
        <a class="classType" data-statu="0" href="javascript:;"><i class="glyphicon glyphicon-align-justify"></i></a>
    </section>
    <!-- ///////////// END 页头  ///////////////-->


    <!-- ///////////// START 广告专区  ///////////////-->
    <section class="bannner-wrap">
        <div class="banner">
            <ul>
                <li><a href="javascript:;"><img src="../../assets/img/slide_01.jpg" style="width: 100%; height: 200px;" /></a></li>
                <li><a href="javascript:;"><img src="../../assets/img/slide_02.jpg" style="width: 100%; height: 200px;" /></a></li>
                <li><a href="javascript:;"><img src="../../assets/img/slide_03.jpg" style="width: 100%; height: 200px;" /></a></li>
                <li><a href="javascript:;"><img src="../../assets/img/slide_04.jpg" style="width: 100%; height: 200px;" /></a></li>
            </ul>
        </div>
    </section>
    <!-- ///////////// END 广告专区  ///////////////-->
    
    <!-- ///////////// START 分类  ///////////////-->
    <section class="class-wrap" style="display: none;">
        <div class="class-box">
            <div class="menu-wrap">
                <p class="mainMenu">折扣专区</p>
                <p class="subMenu">
                    <a href="javascript:;">折扣</a>
                    <a href="javascript:;">团购</a>
                    <a href="javascript:;">秒杀</a>
                    <a href="javascript:;">清仓</a>
                    <a href="javascript:;">预售</a>
                </p>
                
                <p class="mainMenu">红人专区</p>
                <p class="subMenu">
                    <a href="javascript:;">设计师</a>
                    <a href="javascript:;">模特店主</a>
                    <a href="javascript:;">品牌代理人</a>
                    <a href="javascript:;">明星买手</a>
                </p>
                <p class="mainMenu"><a href="../../assets/view/sellList.html">预售专区</a></p>
                <p class="mainMenu"><a href="../../assets/view/sellList.html">在售专区</a></p>
            </div>
        </div>
    </section>
    <!-- ///////////// END 分类  ///////////////-->

    <!-- ///////////// START 折扣专区  ///////////////-->
    <section class="section-wrap discount-wrap">
        
        <h2 class="section-title">折扣专区</h2>
        
        <div class="section-tab">
            <a class="curTab" data-target="discount1" data-loaded="1" href="javascript:;">折扣</a>
            <a data-target="discount2" data-loaded="0" href="javascript:;">团购</a>
            <a data-target="discount3" data-loaded="0" href="javascript:;">秒杀</a>
            <a data-target="discount4" data-loaded="0" href="javascript:;">清仓</a>
            <a data-target="discount5" data-loaded="0" href="javascript:;">预售</a>
        </div>
        
        <!-- START 折扣-->
        <div class="section-content" data-relative="discount1">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_03.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_04.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_05.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_06.jpg" />
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="discount1">加载更多</a>
            </p>
        </div>
        <!-- END 折扣-->
        
        <!--START 团购-->
        <div class="section-content" data-relative="discount2" style="display: none;">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_09.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_10.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_11.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_12.jpg" />
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="discount2">加载更多</a>
            </p>
        </div>
        <!-- END 团购-->
        
        <!--START 秒杀-->
        <div class="section-content" data-relative="discount3" style="display: none;">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_15.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_16.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_01.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_02.jpg" />
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="discount3">加载更多</a>
            </p>
        </div>
        <!-- END 秒杀-->
        
        <!-- START 清仓-->
        <div class="section-content" data-relative="discount4" style="display: none;">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_05.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_06.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_07.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_08.jpg" />
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="discount4">加载更多</a>
            </p>
        </div>
        <!-- END 清仓-->
        
        <!-- START 预售-->
        <div class="section-content" data-relative="discount5" style="display: none;">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_11.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_12.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_13.jpg" />
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_14.jpg" />
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="discount5">加载更多</a>
            </p>
        </div>
        <!-- END 预售-->
        
    </section>
    <!-- ///////////// END 折扣专区  ///////////////-->

    <!-- ///////////// START 红人专区  ///////////////-->
    <section class="section-wrap hot-wrap">
        <h2 class="section-title">红人专区</h2>
        <div class="section-tab">
            <a class="curTab" data-target="dhot1" data-loaded="1" href="javascript:;">设计师</a>
            <a data-target="dhot2" data-loaded="0" href="javascript:;">模特店主</a>
            <a data-target="dhot3" data-loaded="0" href="javascript:;">品牌代理</a>
            <a data-target="dhot4" data-loaded="0" href="javascript:;">明星买手</a>
        </div>

        <!-- START 设计师-->
        <div class="section-content" data-relative="dhot1">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_01.jpg" />
                            <p class="item-title">设计师</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">设计师和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_02.jpg" />
                            <p class="item-title">设计师</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">设计师和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_03.jpg" />
                            <p class="item-title">设计师</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">设计师和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_04.jpg" />
                            <p class="item-title">设计师</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">设计师和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="dhot1">加载更多</a>
            </p>
        </div>
        <!-- END 设计师 -->

        <!-- START 模特店主 -->
        <div class="section-content" data-relative="dhot2" style="display: none;">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_07.jpg" />
                            <p class="item-title">模特店主</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">模特店主和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_08.jpg" />
                            <p class="item-title">模特店主</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">模特店主和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_09.jpg" />
                            <p class="item-title">模特店主</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">模特店主和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_10.jpg" />
                            <p class="item-title">模特店主</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">模特店主和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="dhot2">加载更多</a>
            </p>
        </div>
        <!-- END 模特店主 -->

        <!-- START 品牌代理 -->
        <div class="section-content" data-relative="dhot3" style="display: none;">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_13.jpg" />
                            <p class="item-title">品牌代理</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">品牌代理和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_14.jpg" />
                            <p class="item-title">品牌代理</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">品牌代理和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_15.jpg" />
                            <p class="item-title">品牌代理</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">品牌代理和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_16.jpg" />
                            <p class="item-title">品牌代理</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">品牌代理和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="dhot3">加载更多</a>
            </p>
        </div>

        <!-- START 明星买手 -->
        <div class="section-content" data-relative="dhot4" style="display: none;">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_03.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">明星买手和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_04.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">明星买手和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_05.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">明星买手和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_06.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-statu">已有<strong>256</strong>人评价</p>
                            <p class="item-des">明星买手和模特店主的心情、个性、作品展示</p>
                            <p class="item-btn">
                                <button class="btn btn-default">去看看</button>
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="dhot4">加载更多</a>
            </p>
        </div>
        <!-- END 明星买手 -->

    </section>
    <!-- ///////////// END 红人专区  ///////////////-->

    <!-- ///////////// START 预售专区  ///////////////-->
    <section class="section-wrap preSell-wrap">
        <h2 class="section-title">
            预售款式
            <a href="javascript:;" class="sort glyphicon glyphicon-sort"></a>
            <a href="../../assets/view/sellList.html" class="showAll">查看全部</a>
        </h2>
        <div class="section-content">
            <div class="section-time">
                <a href="javascript:;" class="currTime">
                    <span>10:30</span>
                    <span>抢购中</span>
                </a>
                <a href="javascript:;">
                    <span>12:30</span>
                    <span>即将开始</span>
                </a>
                <a href="javascript:;">
                    <span>15:30</span>
                    <span>即将开始</span>
                </a>
            </div>
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_09.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_10.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_11.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_12.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="preSell">加载更多</a>
            </p>
        </div>
    </section>
    <!-- ///////////// END 预售专区  ///////////////-->

    <!-- ///////////// START 在售专区  ///////////////-->
    <section class="section-wrap selling-wrap">
        <h2 class="section-title">
            在售款式
            <a href="javascript:;" class="sort glyphicon glyphicon-sort"></a>
            <a href="../../assets/view/sellList.html" class="showAll">查看全部</a>
        </h2>
        <div class="section-content">
            <div class="section-list">
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_13.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_14.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_15.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_16.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_01.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a href="javascript:;">
                    <div class="list-item-wrap">
                        <div class="list-item">
                            <img src="../../assets/img/product_02.jpg" />
                            <p class="item-title">明星买手</p>
                            <p class="item-price">
                                <span class="currPrice">￥20.00</span>
                                <span class="actualPrice">￥69.00</span>
                                <span class="disc">2折</span>
                            </p>
                            <p class="item-want">1128人想买</p>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">已抢55/100</button>
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">立即抢</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <p class="loadMore-wrap">
                <a class="loadMore" data-target="selling">加载更多</a>
            </p>
        </div>
    </section>
    <!-- ///////////// END 在售专区  ///////////////-->

    <!-- ///////////// START 页脚  ///////////////-->
    <footer class="footer-wrap">
        <div class="footer-box">
            <a href="../../assets/index.html">
                <span class="footer-icon glyphicon glyphicon-home"></span>
                <span class="footer-txt">首页</span>
            </a>
            <a href="../../assets/view/sellList.html">
                <span class="footer-icon glyphicon glyphicon-compressed"></span>
                <span class="footer-txt">在售</span>
            </a>
            <a href="../../assets/view/sellList.html">
                <span class="footer-icon glyphicon glyphicon-grain"></span>
                <span class="footer-txt">预售</span>
            </a>
            <a href="javascript:;">
                <span class="footer-icon glyphicon glyphicon-user"></span>
                <span class="footer-txt">我</span>
            </a>
        </div>
    </footer>
    <!-- ///////////// END 页脚  ///////////////-->

    <!-- TAG 通用脚本 -->
    <script src="../../assets/js/LAB.min.js"></script>
    <script type="text/javascript">
        var timestamp = Date.parse(new Date());
            
            $LAB.script('../../assets/js/jquery-1.11.3.min.js').wait()
                .script('../../assets/vender/bootstrap-3.3.5-dist/js/bootstrap.min.js').wait()
                .script('../../assets/js/jquery.mockjax.min.js').wait()
                .script('../../assets/js/unslider.min.js').wait()
                .script('../../assets/js/config.min.js?timestamp=' + timestamp).wait()
                .script('../../assets/js/app.common.min.js?timestamp=' + timestamp).wait(function() {
                    
                    /* START 模拟 向服务器端发送 http 请求 */
                    $.mockjax({
                        url: CONFIG.SERVER + CONFIG.INTERFACE.INDEXDATA,
                        responseText: {
                            "resultCode": 0,
                            "resultMsg": "数据返回成功"
                        }
                    });
                    /* END 模拟 向服务器端发送 http 请求 */
                    
                    // 加载折扣数据
                    function loadDiscountHtmlString (discountData) {
                        var discountHtml = [];
                        
                        for (var i = 0, len = 4; i < len; i++) {
                            discountHtml.push('<a href="javascript:;">');
                            discountHtml.push('<div class="list-item-wrap">');
                            discountHtml.push('<div class="list-item">');
                            discountHtml.push('<img src="../../assets/img/product_03.jpg"/>');
                            discountHtml.push('</div>');
                            discountHtml.push('</div>');
                            discountHtml.push('</a>');
                        }
                        
                        return discountHtml.join('');
                    }
                    
                    // 加载红人专区数据
                    function loadHotHtmlString (hotData) {
                        var hotHtml = [];
                        
                        for (var i = 0, len = 4; i < len; i++) {
                            hotHtml.push('<a href="javascript:;">');
                            hotHtml.push('<div class="list-item-wrap">');
                            hotHtml.push('<div class="list-item">');
                            hotHtml.push('<img src="../../assets/img/product_01.jpg" />');
                            hotHtml.push('<p class="item-title">设计师</p>');
                            hotHtml.push('<p class="item-statu">已有<strong>256</strong>人评价</p>');
                            hotHtml.push('<p class="item-des">设计师和模特店主的心情、个性、作品展示</p>');
                            hotHtml.push('<p class="item-btn">');
                            hotHtml.push('<button class="btn btn-default">去看看</button>');
                            hotHtml.push('</p>');
                            hotHtml.push('</div>');
                            hotHtml.push('</div>');
                            hotHtml.push('</a>');
                        }
                        
                        return hotHtml.join('');
                    }
                    
                    // 加载预售或在售数据
                    function loadPreAndSellingHtmlString (sellData) {
                        var sellHtml = [];
                        
                        for (var i = 0, len = 4; i < len; i++) {
                            sellHtml.push('<a href="javascript:;">');
                            sellHtml.push('<div class="list-item-wrap">');
                            sellHtml.push('<div class="list-item">');
                            sellHtml.push('<img src="../../assets/img/product_02.jpg" />');
                            sellHtml.push('<p class="item-title">明星买手</p>');
                            sellHtml.push('<p class="item-price">');
                            sellHtml.push('<span class="currPrice">￥20.00</span>');
                            sellHtml.push('<span class="actualPrice">￥69.00</span>');
                            sellHtml.push('<span class="disc">2折</span>');
                            sellHtml.push('</p>');
                            sellHtml.push('<p class="item-want">1128人想买</p>');
                            sellHtml.push('<div class="btn-group btn-group-justified" role="group" aria-label="...">');
                            sellHtml.push('<div class="btn-group" role="group">');
                            sellHtml.push('<button type="button" class="btn btn-default">已抢55/100</button>');
                            sellHtml.push('</div>');
                            sellHtml.push('<div class="btn-group" role="group">');
                            sellHtml.push('<button type="button" class="btn btn-danger">立即抢</button>');
                            sellHtml.push('</div>');
                            sellHtml.push('</div>');
                            sellHtml.push('</div>');
                            sellHtml.push('</div>');
                            sellHtml.push('</a>');
                        }
                        
                        return sellHtml.join('');
                    }
                    
                    // 页头滚动
                    $('.banner').unslider();
                    
                    // 切换 tab
                    $('.section-tab').on('click', 'a', function() {
                        var self = $(this);
                        var dataTarget = self.attr('data-target');
                        var dataLoaded = self.attr('data-loaded');
                        var dataTargetWrap = $("div[data-relative='"+ dataTarget +"']");
                        var waitWrap = self.parents('.section-wrap');
                        
                        // 切换 tab 当前样式
                        self.addClass('curTab').siblings('a').removeClass('curTab');
                        
                        // 先隐藏所在模块
                        dataTargetWrap.siblings('.section-content').hide();                        
                        
                        // 如果还没有从服务器拿过数据,则从服务器拿数据
                        if (dataLoaded == '0') {
                            App.showWaitIcon(waitWrap, '<img class="waitIcon" src="../../assets/img/svg-loaders/oval.svg"/>');
                            
                            // 从服务器加载数据
                            App.getDataFromServer({
                                "url": CONFIG.SERVER + CONFIG.INTERFACE.INDEXDATA,
                                "data": {
                                    
                                },
                                "successCallBack": function (data) {
                                    
                                    if (data.resultCode == '0') {
                                        // 插入折扣数据
                                        if (dataTarget.indexOf('discount') != -1) {
                                            dataTargetWrap.find('.section-list').empty().append(loadDiscountHtmlString(data.resultCode));
                                        
                                        // 插入红人区数据
                                        } else {
                                            dataTargetWrap.find('.section-list').empty().append(loadHotHtmlString(data.resultCode));
                                        }
                                    }
                                    
                                    dataTargetWrap.show();
                                    self.attr('data-loaded', '1');
                                    
                                    // 移除等待图标
                                    App.removeWaitIcon(waitWrap);
                                },
                                "failCallBack": function (XMLHttpRequest, textStatus, errorThrown) {
                                    // 移除等待图标
                                    App.removeWaitIcon(waitWrap);
                                }
                            });
                        
                        // 如果已经从服务器加载了数据 ，则直接显示   
                        } else if (dataLoaded == '1') {
                            dataTargetWrap.show();
                        }
                    });
                    
                    // 显示加载更多
                    $('.loadMore').on('click', function() {
                        var self = $(this);
                        var dataTarget = self.attr('data-target');
                        var listWrap = self.parents('.section-content').find('.section-list');
                        
                        // 显示加载更多图标
                        App.showLoadMoreIcon(self, '<img src="../../assets/img/svg-loaders/three-dots.svg"/>');
                        
                        // 从服务器加载数据
                        App.getDataFromServer({
                            "url": CONFIG.SERVER + CONFIG.INTERFACE.INDEXDATA,
                            "data": {
                                
                            },
                            "successCallBack": function (data) {
                                
                                if (data.resultCode == '0') {
                                    // 插入折扣数据
                                    if (dataTarget.indexOf('discount') != -1) {
                                        listWrap.append(loadDiscountHtmlString(data.resultCode));
                                    
                                    // 插入红人区数据
                                    } else if (dataTarget.indexOf('dhot') != -1) {
                                        listWrap.append(loadHotHtmlString(data.resultCode));
                                   
                                    // 预售或在售数据
                                    } else if (dataTarget.indexOf('preSell') != -1 || dataTarget.indexOf('selling') != -1) {
                                        listWrap.append(loadPreAndSellingHtmlString(data.resultCode));
                                    }
                                }
        
                                // 移除加载更多图标
                                App.removeLoadMoreIcon(self, '加载更多');
                            },
                            "failCallBack": function (XMLHttpRequest, textStatus, errorThrown) {
                                // 移除加载更多图标
                               App.removeLoadMoreIcon(self, '加载更多');
                            }
                        });
                        
                    });
                    
                    // 显示侧边栏
                    $('.classType').on('click', function() {
                        var self = $(this);
                        var statu = self.attr('data-statu');
                        
                        if (statu == '0') {
                            $('.class-wrap').show();
                            $('.class-box').addClass('showClassBox');
                            self.attr('data-statu', '1');
                        } else {
                            $('.class-wrap').hide();
                            $('.class-box').removeClass('showClassBox');
                            self.attr('data-statu', '0');
                        }
                    });
                    
                    // 隐藏侧边栏
                    $('.class-wrap').on('click', function() {
                        $('.classType').attr('data-statu', '0');
                        $('.class-wrap').hide();
                        $('.class-box').removeClass('showClassBox');
                    });
                    
                });
    </script>
</body>

</html>