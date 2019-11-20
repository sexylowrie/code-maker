<!DOCTYPE html>
<html lang="zh" style="font-size: 20px;">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>${title}</title>
    <meta name="keywords" content="${keywords}">
    <meta name="description" content="${description}">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <link rel="shortcut icon" href="http://www.fuqianla.net/images/favicon.ico" type="image/x-icon">
    <link href="./聚合支付_files/common.css" rel="stylesheet">
    <link href="./聚合支付_files/polyPay.css" rel="stylesheet">
    <style id="style-1-cropbar-clipper">
        .en-markup-crop-options {
            top: 18px !important;
            left: 50% !important;
            margin-left: -100px !important;
            width: 200px !important;
            border: 2px rgba(255, 255, 255, .38) solid !important;
            border-radius: 4px !important;
        }

        .en-markup-crop-options div div:first-of-type {
            margin-left: 0px !important;
        }
    </style>
</head>
<body style="filter: none;">
<!-- header start -->
<div class="header">
    <!-- navbar start -->
    <div class="navbar clearfix">
        <a href="${logoLink}" class="fql-logo" title="${name}">
            <strong>${name}</strong>
        </a>
        <div class="nav-box">
            <#list menus>
                <ul class="nav">
                    <#items as menu>
                        <li>
                            <a href="${menu.url}">${menu.name}</a>
                            <#if menu.hasSub == "TRUE">
                                <#list menu.subMenu>
                                    <#items as sub>
                                        <li class="nav_accountSystem">
                                            <a href="${sub.url}">${sub.name}</a>
                                        </li>
                                    </#items>
                                </#list>
                            </#if>!
                        </li>
                    </#items>
                </ul>
            </#list>
<#--            <ul class="nav">-->
<#--                <li>-->
<#--                    <a href="http://www.fuqianla.net/polyPay.html#nogo">产品与服务</a>-->
<#--                    <div class="sub-nav">-->
<#--                        <ul>-->
<#--                            <li class="nav_accountSystem">-->
<#--                                <a href="http://www.fuqianla.net/accountSystem.html">分账系统</a>-->
<#--                            </li>-->
<#--                            <li class="nav_fundDeposit">-->
<#--                                <a href="http://www.fuqianla.net/fundDeposit.html">资金存管</a>-->
<#--                            </li>-->
<#--                            <!--<li class="nav_allDirectionData">-->
<#--                                <a href="allDirectionData.html">数据服务平台</a>-->
<#--                            </li>&ndash;&gt;-->
<#--                            <li class="nav_cashCompass">-->
<#--                                <a href="http://www.fuqianla.net/cashCompass.html">企业资金管理</a>-->
<#--                            </li>-->
<#--                            <li class="nav_polyPay">-->
<#--                                <a href="http://www.fuqianla.net/polyPay.html">聚合支付</a>-->
<#--                            </li>-->
<#--                        </ul>-->
<#--                    </div>-->
<#--                </li>-->
<#--                <li>-->
<#--                    <a href="http://www.fuqianla.net/polyPay.html#nogo">行业解决方案</a>-->
<#--                    <div class="sub-nav">-->
<#--                        <ul>-->
<#--                            <li class="nav_education">-->
<#--                                <a href="http://www.fuqianla.net/education.html">教育行业解决方案</a>-->
<#--                            </li>-->
<#--                            <li class="nav_wlPlatform">-->
<#--                                <a href="http://www.fuqianla.net/wlPlatform.html">物流行业解决方案</a>-->
<#--                            </li>-->
<#--                            <li class="nav_dsFundDeposit">-->
<#--                                <a href="http://www.fuqianla.net/dsFundDeposit.html">电商行业解决方案</a>-->
<#--                            </li>-->
<#--                            <li class="nav_trip">-->
<#--                                <a href="http://www.fuqianla.net/trip.html">出行行业解决方案</a>-->
<#--                            </li>-->
<#--                            <li class="nav_usedCarDealer">-->
<#--                                <a href="http://www.fuqianla.net/usedCarDealer.html">二手车行业解决方案</a>-->
<#--                            </li>-->
<#--                        </ul>-->
<#--                    </div>-->
<#--                </li>-->
<#--                <li class="nav_banking">-->
<#--                    <a href="http://www.fuqianla.net/banking.html">银行业金融科技</a>-->
<#--                </li>-->
<#--                <li>-->
<#--                    <a href="http://www.fuqianla.net/polyPay.html#nogo">对接文档</a>-->
<#--                    <div class="sub-nav">-->
<#--                        <ul class="api-docs">-->
<#--                            <li class="nav_doc">-->
<#--                                <a href="http://www.fuqianla.net/polyPay.html#nogo">API接口文档<span>下载</span></a>-->
<#--                            </li>-->
<#--                            <li class="nav_demo">-->
<#--                                <a href="http://www.fuqianla.net/polyPay.html#nogo">API接口Demo<span>下载</span></a>-->
<#--                            </li>-->
<#--                        </ul>-->
<#--                    </div>-->
<#--                </li>-->
<#--            </ul>-->
        </div>
        <div class="login-box">
            <div class="phone-400">400-880-1940</div>
            <a href="http://www.fuqianla.net/contactus.html" class="btn-contact">联系我们</a>
            <div class="no-login">
                <a href="http://www.fuqianla.net/login.html" class="btn-login">登录</a>
                <a href="http://www.fuqianla.net/register.html" class="btn-reg">注册</a>
            </div>
            <div class="has-login clearfix" style="display: none;">
                <span></span>
                <a id="quit" class="btn-quit" alt="退出" href="javascript:void(0)">退出</a>
            </div>
            <!-- <a id="toApp" class="btn white btn-app" alt="应用中心" href="javascript:;"><span>应用中心</span></a> -->
        </div>
    </div>
    <!-- navbar end -->
    <!-- topbar start -->
    <div class="topbar">
        <a href="http://www.fuqianla.net/index.html" class="fql-logo"></a>
        <button class="btn-toggle"></button>
    </div>
    <!-- topbar end -->
</div>
<!-- header end -->

<!-- top-ads start-->
<!--<div class="top-ads">-->
<!--<p>重磅推出：《交通运输新业态用户资金管理办法（征求意见稿）》解读，<span class="m-none">商易通助力互联网出行行业快速合规。</span><a href="dsFundDeposit.html" class="detail">点击查看详情…</a><a href="javascript:;" class="close"></a></p>-->
<!--</div>div-->
<!-- top-ads end -->

<div class="mod banner">
    <div class="txt">
        <h1>聚合支付</h1>
        <p>覆盖所有主流支付渠道，提供易用且强大的管理平台，致力于帮助企业快速构建支付能力，让企业专注于其核心业务发展。付钱拉极速便捷的支付接入体验，让支付和收款更简单</p>
        <a id="btnApply" class="btn lg blue apply_form_pop"
           href="http://www.fuqianla.net/polyPay.html#nogo"><span>合作咨询</span></a>
    </div>
</div>
<div class="mod scene clearfix">
    <h2 class="mod-tit" data-scroll-reveal="" data-scroll-reveal-id="1"
        style="-webkit-transform: translatey(0);transform: translatey(0);opacity: 1;-webkit-transition: -webkit-transform 1s ease-in-out 0s,  opacity 1s ease-in-out 0s;transition: transform 1s ease-in-out 0s, opacity 1s ease-in-out 0s;-webkit-perspective: 1000;-webkit-backface-visibility: hidden;"
        data-scroll-reveal-initialized="true">支持全场景支付</h2>
    <div class="list">
        <ul>
            <li><p>扫码支付</p></li>
            <li><p>公众号支付</p></li>
            <li><p>手机APP支付</p></li>
            <li><p>PC网页支付</p></li>
            <li><p>手机网页支付</p></li>
        </ul>
    </div>
</div>
<div class="mod advantage clearfix">
    <h2 class="mod-tit" data-scroll-reveal="" data-scroll-reveal-id="2"
        style="-webkit-transform: translatey(20px);transform: translatey(20px);opacity: 0;-webkit-transition: -webkit-transform 1s ease-in-out 0s,  opacity 1s ease-in-out 0s;transition: transform 1s ease-in-out 0s,  opacity 1s ease-in-out 0s;-webkit-perspective: 1000;-webkit-backface-visibility: hidden;"
        data-scroll-reveal-initialized="true">产品优势</h2>
    <div class="advantage-cont">
        <div class="img-box">
            <img src="./聚合支付_files/m-polyPay-advantage.png" alt="" class="is_m">
        </div>
        <div class="list">
            <dl class="clearfix">
                <dt>极速</dt>
                <dd>您仅需集成SDK，敲几行代码即可接入支付</dd>
            </dl>
            <dl class="clearfix">
                <dt>便捷</dt>
                <dd>简洁流畅的操作体验，让支付和收款更简单</dd>
            </dl>
            <dl class="clearfix">
                <dt>安全</dt>
                <dd>多重数据加密，严控访问权限，保障交易安全</dd>
            </dl>
            <dl class="clearfix">
                <dt>稳定</dt>
                <dd>统计系统运行状态，随时随地查看系统运转情况</dd>
            </dl>
        </div>
    </div>
</div>
<div class="mod docs clearfix">
    <h2 class="mod-tit" data-scroll-reveal="" data-scroll-reveal-id="3"
        style="-webkit-transform: translatey(20px);transform: translatey(20px);opacity: 0;-webkit-transition: -webkit-transform 1s ease-in-out 0s,  opacity 1s ease-in-out 0s;transition: transform 1s ease-in-out 0s,  opacity 1s ease-in-out 0s;-webkit-perspective: 1000;-webkit-backface-visibility: hidden;"
        data-scroll-reveal-initialized="true">帮助与文档</h2>
    <div class="list">
        <ul>
            <li>
                <div class="txt">
                    <h3>常见问题</h3>
                    <p><a target="_blank" href="https://help.fuqianla.net/">查看聚合支付帮助文档 &gt;</a></p>
                </div>
            </li>
            <li class="is_pc">
                <div class="txt">
                    <h3>快速入门</h3>
                    <p><a href="http://www.fuqianla.net/quickStart.html">快速引导接入支付产品 &gt;</a></p>
                </div>
            </li>
            <li class="is_pc">
                <div class="txt">
                    <h3>API文档</h3>
                    <p><a href="http://www.fuqianla.net/apiDocs.html?payment">查看聚合支付的OpenAPI &gt;</a></p>
                </div>
            </li>
            <li class="is_pc">
                <div class="txt">
                    <h3>SDK下载</h3>
                    <p><a href="http://www.fuqianla.net/download.html">下载聚合支付SDK &gt;</a></p>
                </div>
            </li>
        </ul>
    </div>
</div>
<section class="application" id="apply">
    <p class="f34_tit mb15">合作咨询</p>
    <div class="contact">
        <p class="link_msg" id="link_msg">请您填写真实的信息，我们会尽快与您联系</p>
        <div class="err-msg"></div>
        <div class="from">
            <div class="item">
                <input type="text" placeholder="姓名" name="username" class="username" maxlength="20" value=""
                       autocomplete="off">
                <div class="err err-username" id="err_name"></div>
            </div>
            <div class="item">
                <input type="text" placeholder="手机号码" name="phone" class="phone" maxlength="20" value=""
                       autocomplete="off">
                <div class="err err-mobile" id="err_mobile"></div>
            </div>
            <div class="item item-smcode">
                <input type="text" placeholder="短信验证码" name="smcode" class="smcode" maxlength="6" value=""
                       autocomplete="off">
                <a href="javascript:;" class="btn-smcode smbtn">获取短信验证码</a>
                <div class="err err-smcode" id="err_smcode"></div>
            </div>
        </div>
        <a href="javascript:;" class="btn blue lg" id="submitApply"><span>提交信息</span></a>
    </div>
    <div class="welfare">
        <h4>领取尊享卡</h4>
        <p class="is_pc">（填写地址领取<span>5000元VIP尊享卡</span>，可用于解决方案费用抵扣）</p>
        <p class="is_m">填写地址领取<span>5000元VIP尊享卡</span>，<br>可用于解决方案费用抵扣</p>
        <div class="addr">
            <select name="province" class="province">
                <option value="">省</option>
                <option value="110000">北京</option>
                <option value="120000">天津</option>
                <option value="130000">河北省</option>
                <option value="140000">山西省</option>
                <option value="150000">内蒙古自治区</option>
                <option value="210000">辽宁省</option>
                <option value="220000">吉林省</option>
                <option value="230000">黑龙江省</option>
                <option value="310000">上海</option>
                <option value="320000">江苏省</option>
                <option value="330000">浙江省</option>
                <option value="340000">安徽省</option>
                <option value="350000">福建省</option>
                <option value="360000">江西省</option>
                <option value="370000">山东省</option>
                <option value="410000">河南省</option>
                <option value="420000">湖北省</option>
                <option value="430000">湖南省</option>
                <option value="440000">广东省</option>
                <option value="450000">广西壮族自治区</option>
                <option value="460000">海南省</option>
                <option value="500000">重庆</option>
                <option value="510000">四川省</option>
                <option value="520000">贵州省</option>
                <option value="530000">云南省</option>
                <option value="540000">西藏自治区</option>
                <option value="610000">陕西省</option>
                <option value="620000">甘肃省</option>
                <option value="630000">青海省</option>
                <option value="640000">宁夏回族自治区</option>
                <option value="650000">新疆维吾尔自治区</option>
                <option value="710000">台湾省</option>
                <option value="810000">香港特别行政区</option>
                <option value="820000">澳门特别行政区</option>
            </select>
            <select name="city" class="city">
                <option value="">市</option>
            </select>
            <div class="clearfix"></div>
            <input type="text" placeholder="详细地址" name="country" class="country is_pc" value="" autocomplete="off">
            <textarea name="country" id="" cols="30" rows="4" class="country is_m"></textarea>
            <div class="btn-layer">
                <a href="javascript:;" class="btn-getcard disabled">领取</a>
                <a href="http://www.fuqianla.net/polyPay.html#nogo" class="btn-skip" id="skip">跳过直接申请</a>
            </div>
        </div>
    </div>
    <div class="result suc">
        <div class="tit">申请成功</div>
        <p>
            <span class="tel">申请号码<em></em></span>
            <span>我们会尽快与您联系</span>
        </p>
        <a href="javascript:;" class="btn btn-confirm" id="btnConfirm">确认</a>
    </div>
    <div class="result err">
        <div class="tit">申请失败</div>
        <p></p>
        <a href="javascript:;" class="btn-reset" id="submitApp_reset">重新申请</a>
    </div>
</section>

<section class="application_pop_box">
    <div class="applidation_mask_pop"></div>
    <div class="application_pop" id="apply_pop">
        <a href="javascript:;" class="close"></a>
        <div class="contact">
            <p class="link_msg" id="link_msg_pop">合作咨询</p>
            <p class="tip_msg">请您填写真实的信息，我们会尽快与您联系</p>
            <div class="err-msg"></div>
            <div class="from">
                <div class="item">
                    <input type="text" placeholder="姓名" name="usernamepop" class="usernamepop" maxlength="20" value=""
                           autocomplete="off">
                    <div class="err err-username" id="err_name_pop"></div>
                </div>
                <div class="item">
                    <input type="text" placeholder="手机号码" name="phonepop" class="phonepop" maxlength="40" value=""
                           autocomplete="off">
                    <div class="err err-mobile" id="err_mobile_pop"></div>
                </div>
                <div class="item item-smcode">
                    <input type="text" placeholder="短信验证码" name="smcodepop" class="smcodepop" maxlength="6" value=""
                           autocomplete="off">
                    <a href="javascript:;" class="btn-smcode smbtnpop">获取短信验证码</a>
                    <div class="err err-smcode" id="err_smcode_pop"></div>
                </div>
            </div>
            <a href="javascript:;" class="btn" id="submitApply_pop"><span>提交信息</span></a>
        </div>
        <div class="welfare">
            <h4>领取尊享卡</h4>
            <p class="is_pc">（填写地址领取<span>5000元VIP尊享卡</span>，可用于解决方案费用抵扣）</p>
            <p class="is_m">填写地址领取<span>5000元VIP尊享卡</span>尊享卡<br>可用于解决方案费用抵扣</p>
            <div class="addr">
                <select name="provincepop" class="provincepop">
                    <option value="">省</option>
                    <option value="110000">北京</option>
                    <option value="120000">天津</option>
                    <option value="130000">河北省</option>
                    <option value="140000">山西省</option>
                    <option value="150000">内蒙古自治区</option>
                    <option value="210000">辽宁省</option>
                    <option value="220000">吉林省</option>
                    <option value="230000">黑龙江省</option>
                    <option value="310000">上海</option>
                    <option value="320000">江苏省</option>
                    <option value="330000">浙江省</option>
                    <option value="340000">安徽省</option>
                    <option value="350000">福建省</option>
                    <option value="360000">江西省</option>
                    <option value="370000">山东省</option>
                    <option value="410000">河南省</option>
                    <option value="420000">湖北省</option>
                    <option value="430000">湖南省</option>
                    <option value="440000">广东省</option>
                    <option value="450000">广西壮族自治区</option>
                    <option value="460000">海南省</option>
                    <option value="500000">重庆</option>
                    <option value="510000">四川省</option>
                    <option value="520000">贵州省</option>
                    <option value="530000">云南省</option>
                    <option value="540000">西藏自治区</option>
                    <option value="610000">陕西省</option>
                    <option value="620000">甘肃省</option>
                    <option value="630000">青海省</option>
                    <option value="640000">宁夏回族自治区</option>
                    <option value="650000">新疆维吾尔自治区</option>
                    <option value="710000">台湾省</option>
                    <option value="810000">香港特别行政区</option>
                    <option value="820000">澳门特别行政区</option>
                </select>
                <select name="citypop" class="citypop">
                    <option value="">市</option>
                </select>
                <div class="clearfix"></div>
                <input type="text" placeholder="详细地址" name="countrypop" class="countrypop is_pc" maxlength="40" value=""
                       autocomplete="off">
                <textarea name="countrypop" id="" cols="30" rows="4" class="countrypop is_m"></textarea>
                <div class="btn-layer clearfix">
                    <a href="javascript:;" class="btn-getcard disabled">领取</a>
                    <a href="http://www.fuqianla.net/polyPay.html#nogo" class="btn-skip" id="skip_pop">跳过直接申请</a>
                </div>
            </div>
        </div>
        <div class="result suc">
            <div class="tit">申请成功</div>
            <p>
                <span class="tel">申请号码<em></em></span>
                <span>我们会尽快与您联系</span>
            </p>
            <a href="javascript:;" class="result-btn btn-confirm" id="btnConfirmPop">确认</a>
        </div>
        <div class="result err">
            <div class="tit">申请失败</div>
            <p></p>
            <a href="javascript:;" class="result-btn btn-reset" id="submitApp_resetPop">重新申请</a>
        </div>
    </div>
</section>
<!-- footer start -->
<div class="footer">
    <div class="main clearfix">
        <dl>
            <dt>产品与服务</dt>
            <dd><a href="http://www.fuqianla.net/accountSystem.html">分账系统</a></dd>
            <dd><a href="http://www.fuqianla.net/fundDeposit.html">资金存管</a></dd>
            <!--<dd><a href="allDirectionData.html">数据服务平台</a></dd>-->
            <dd><a href="http://www.fuqianla.net/cashCompass.html">企业资金管理</a></dd>
            <dd><a href="http://www.fuqianla.net/polyPay.html">聚合支付</a></dd>
        </dl>
        <dl>
            <dt>行业解决方案</dt>
            <dd><a href="http://www.fuqianla.net/education.html">教育行业解决方案</a></dd>
            <dd><a href="http://www.fuqianla.net/wlPlatform.html">物流行业解决方案</a></dd>
            <dd><a href="http://www.fuqianla.net/dsFundDeposit.html">电商行业解决方案</a></dd>
            <dd><a href="http://www.fuqianla.net/trip.html">出行行业解决方案</a></dd>
            <dd><a href="http://www.fuqianla.net/usedCarDealer.html">二手车行业解决方案</a></dd>
        </dl>
        <dl>
            <dt><a href="http://www.fuqianla.net/banking.html">银行业金融科技</a></dt>
        </dl>
        <!-- <dl> -->
        <!-- <dt>开发资源</dt> -->
        <!-- <dd class="m-none"><a href="quickStart.html">开发指南</a></dd> -->
        <!-- <dd class="m-none"><a href="download.html">SDK下载</a></dd> -->
        <!-- <dd class="m-none"><a href="downloadAPP.html">APP下载</a></dd> -->
        <!-- <dd class="m-none"><a href="appcenterdemo">平台体验</a></dd> -->

        <!--测试环境的书写方式（为配合appcenterdemo，避免404）-->
        <!--<dd class="m-none"><a href="/appcenterdemo">平台体验</a></dd>-->
        <!-- <dd><a target="_blank" href="https://help.fuqianla.net">帮助中心</a></dd> -->
        <!-- </dl> -->
        <dl>
            <dt>公司</dt>
            <!-- <dd>
                <a href="aboutus.html">关于我们</a>
            </dd>  -->
            <dd>
                <a href="http://www.fuqianla.net/contactus.html">联系我们</a>
            </dd>
            <dd class="m-none">
                <a href="http://www.fuqianla.net/media">媒体报道</a>
            </dd>
            <dd>
                <a href="http://www.fuqianla.net/partner.html">合作伙伴</a>
            </dd>
            <dd>
                <a href="https://help.fuqianla.net/hc/" target="_blank">帮助中心</a>
            </dd>
        </dl>
        <div class="contact-way">
            <div class="item tel">
                <label>咨询专线：</label>
                <div>
                    <p>400-880-1940</p>
                    <span>(工作日9:30-18:30）</span>
                </div>
            </div>
            <div class="item market">
                <label>市场合作：</label>
                <div>
                    <p><a class="email" href="mailto:marketing@fuqian.la">marketing@fuqian.la</a></p>
                </div>
            </div>
            <div class="item email">
                <label>客服邮箱：</label>
                <div>
                    <p><a class="email" href="mailto:service@fuqian.la">service@fuqian.la</a></p>
                </div>
            </div>
            <div class="item wx">
                <p>付钱拉公众号</p>
            </div>
            <div class="item media">
                <a class="icon zhihu" href="https://www.zhihu.com/people/fuqian.la/activities" target="_blank"></a>
                <a class="icon weibo" href="http://weibo.com/p/1006065884873865/home?from=page_100606&amp;mod=TAB#place"
                   target="_blank"></a>
                <a class="icon toutiao" href="https://www.toutiao.com/c/user/68396287438/#mid=1578326455474189"
                   target="_blank"></a>
                <a class="icon sohu" href="https://mp.sohu.com/profile?xpt=cHBhZzU3MjZkNWVhZTBiYkBzb2h1LmNvbQ=="
                   target="_blank"></a>
            </div>
        </div>
    </div>
    <div class="copyright">©2019 八立方科技(北京)有限公司&nbsp;&nbsp;&nbsp;&nbsp;京ICP备16039828号-2</div>
</div>
<!-- footer end -->

<div class="log-pop">
    <div class="log-pop-box">
        <div class="log-pop-close close"></div>
        <div class="tit">请先登录</div>
        <a href="http://www.fuqianla.net/login.html">登录</a>
    </div>
</div>

<script src="./聚合支付_files/hm.js"></script>
<script src="./聚合支付_files/hm.js"></script>
<script src="./聚合支付_files/fqlstat.js"></script>
<script>
    fqlstat.log();
</script>
<script>
    //新版百度统计：2018/08/02
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?482e92dc52877309253ee9c89d673dc6";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script type="text/javascript">
    document.write('<script src="\/\/assets.kf5.com\/supportbox\/main.js?' + (new Date).getDay() + '" id="kf5-provide-supportBox" kf5-domain="fql.kf5.com" charset="utf-8"><\/script>');
</script>
<script src="./聚合支付_files/main.js" id="kf5-provide-supportBox" kf5-domain="fql.kf5.com" charset="utf-8"></script>

<script>
    //新版百度统计：2018/03/12
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?482e92dc52877309253ee9c89d673dc6";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script type="text/javascript" src="./聚合支付_files/runtime.js"></script>
<script type="text/javascript" src="./聚合支付_files/common.js"></script>
<script type="text/javascript" src="./聚合支付_files/polyPay.js"></script>
<div id="nav">
    <h1>付钱拉</h1>
    <span id="nav_cls"></span>
    <ul class="nav">
        <li><a href="http://www.fuqianla.net/index.html">首页</a></li>
        <li>
            <a href="http://www.fuqianla.net/polyPay.html#nogo">产品与服务<b class="icon-arrow"></b></a>
            <div class="subnav">
                <ul>
                    <li class="nav_accountSystem">
                        <a href="http://www.fuqianla.net/accountSystem.html">分账系统</a>
                    </li>
                    <li class="nav_fundDeposit">
                        <a href="http://www.fuqianla.net/fundDeposit.html">资金存管</a>
                    </li>
                    <!--<li class="nav_allDirectionData">
                        <a href="allDirectionData.html">数据服务平台</a>
                    </li>-->
                    <li class="nav_cashCompass">
                        <a href="http://www.fuqianla.net/cashCompass.html">企业资金管理</a>
                    </li>
                    <li class="nav_polyPay">
                        <a href="http://www.fuqianla.net/polyPay.html">聚合支付</a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="open">
            <a href="http://www.fuqianla.net/polyPay.html#nogo">行业解决方案<b class="icon-arrow"></b></a>
            <div class="subnav">
                <ul>
                    <li class="nav_education">
                        <a href="http://www.fuqianla.net/education.html">教育行业解决方案</a>
                    </li>
                    <li class="nav_wlPlatform">
                        <a href="http://www.fuqianla.net/wlPlatform.html">物流行业解决方案</a>
                    </li>
                    <li class="nav_dsFundDeposit">
                        <a href="http://www.fuqianla.net/dsFundDeposit.html">电商行业解决方案</a>
                    </li>
                    <li class="nav_trip">
                        <a href="http://www.fuqianla.net/trip.html">出行行业解决方案</a>
                    </li>
                    <li class="nav_usedCarDealer">
                        <a href="http://www.fuqianla.net/usedCarDealer.html">二手车行业解决方案</a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav_banking">
            <a href="http://www.fuqianla.net/banking.html">银行业金融科技</a>
        </li>
    </ul>
</div>
<div id="sidebarfixed">
    <ul>
        <li><i class="icon"></i><span>产品<br>咨询</span></li>
        <li id="call"><i class="icon"></i><span>客服<br>电话</span></li>
        <li id="goTop"><i class="icon"></i><span>返回顶部</span></li>
        <li><a href="tel://400-880-1940"><i class="icon"></i></a></li>
    </ul>
    <div class="hotline">
        <div class="box"><b></b><em>400-880-1940</em></div>
    </div>
</div>
<iframe src="javascript:false" title="" style="display: none;" src="./聚合支付_files/saved_resource.html"></iframe>
<audio controls="controls" style="display: none;"></audio>
<link rel="styleSheet" type="text/css" href="./聚合支付_files/supportBtn.css">
<div class="kf5-support-chat kf5-chatSupport-right-bottom" style="position: relative;z-index: 2147483000">
    <div id="kf5-support-block" class="kf5-supportBox" style="display: none; bottom: 10px;">
        <a id="kf5-close-btn" class="kf5-support-chat_close kf5-waves" href="javascript:;"></a>
        <div id="kf5-loading" class="kf5-loading kf5-loading-md kf5-center" style="display: none;">

        </div>
        <iframe id="kf5-widget-iframe" class="kf5-supportBox_iframe" frameborder="0" scrolling="no"
                src="./聚合支付_files/kchat.html"></iframe>
    </div>
    <div id="kf5-support-btn" style="color: rgb(255, 255, 255); background: rgb(37, 117, 233); display: none;"
         class="kf5-chatSupport-btn kf5-chatSupport-style4 kf5-chatSupport-icon4 kf5-waves waves-effect waves-light">
        <span>在线咨询</span>
        <div id="msg-number" class="kf5-chatSupport_msgNumber" style="display: none"></div>
    </div>
    <div id="kf5-backdrop" class="kf5-backdrop" style="display: none;">
        <a class="kf5-backdrop-close">关闭</a>
        <a href="http://www.fuqianla.net/polyPay.html" target="_blink">
            <img id="kf5-view-image" class="kf5-backdrop-img" src="http://www.fuqianla.net/polyPay.html">
        </a>
    </div>
</div>
</body>
<style type="text/css">
    #yddContainer {
        display: block;
        font-family: Microsoft YaHei;
        position: relative;
        width: 100%;
        height: 100%;
        top: -4px;
        left: -4px;
        font-size: 12px;
        border: 1px solid
    }

    #yddTop {
        display: block;
        height: 22px
    }

    #yddTopBorderlr {
        display: block;
        position: static;
        height: 17px;
        padding: 2px 28px;
        line-height: 17px;
        font-size: 12px;
        color: #5079bb;
        font-weight: bold;
        border-style: none solid;
        border-width: 1px
    }

    #yddTopBorderlr .ydd-sp {
        position: absolute;
        top: 2px;
        height: 0;
        overflow: hidden
    }

    .ydd-icon {
        left: 5px;
        width: 17px;
        padding: 0px 0px 0px 0px;
        padding-top: 17px;
        background-position: -16px -44px
    }

    .ydd-close {
        right: 5px;
        width: 16px;
        padding-top: 16px;
        background-position: left -44px
    }

    #yddKeyTitle {
        float: left;
        text-decoration: none
    }

    #yddMiddle {
        display: block;
        margin-bottom: 10px
    }

    .ydd-tabs {
        display: block;
        margin: 5px 0;
        padding: 0 5px;
        height: 18px;
        border-bottom: 1px solid
    }

    .ydd-tab {
        display: block;
        float: left;
        height: 18px;
        margin: 0 5px -1px 0;
        padding: 0 4px;
        line-height: 18px;
        border: 1px solid;
        border-bottom: none
    }

    .ydd-trans-container {
        display: block;
        line-height: 160%
    }

    .ydd-trans-container a {
        text-decoration: none;
    }

    #yddBottom {
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 22px;
        line-height: 22px;
        overflow: hidden;
        background-position: left -22px
    }

    .ydd-padding010 {
        padding: 0 10px
    }

    #yddWrapper {
        color: #252525;
        z-index: 10001;
        background: url(chrome-extension://eopjamdnofihpioajgfdikhhbobonhbb/ab20.png);
    }

    #yddContainer {
        background: #fff;
        border-color: #4b7598
    }

    #yddTopBorderlr {
        border-color: #f0f8fc
    }

    #yddWrapper .ydd-sp {
        background-image: url(chrome-extension://eopjamdnofihpioajgfdikhhbobonhbb/ydd-sprite.png)
    }

    #yddWrapper a, #yddWrapper a:hover, #yddWrapper a:visited {
        color: #50799b
    }

    #yddWrapper .ydd-tabs {
        color: #959595
    }

    .ydd-tabs, .ydd-tab {
        background: #fff;
        border-color: #d5e7f3
    }

    #yddBottom {
        color: #363636
    }

    #yddWrapper {
        min-width: 250px;
        max-width: 400px;
    }
</style>
</html>
