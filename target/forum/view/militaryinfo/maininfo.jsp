
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
<%@ page import="cn.zzy.forum.entity.User"%>
<%
    HttpSession a = request.getSession();
    User user = (User)a.getAttribute("userSignIn");
%>
<head>
    <title>军事信息</title>
    <script>(window.RLQ=window.RLQ||[]).push(function(){mw.loader.state({"skins.mediawikibootstrap1":"loading"});});</script>
    <script>document.documentElement.className = document.documentElement.className.replace( /(^|\s)client-nojs(\s|$)/, "$1client-js$2" );</script>
    <script>(window.RLQ=window.RLQ||[]).push(function(){mw.config.set({"wgCanonicalNamespace":"","wgCanonicalSpecialPageName":false,"wgNamespaceNumber":0,"wgPageName":"首页","wgTitle":"首页","wgCurRevisionId":17997,"wgRevisionId":17997,"wgArticleId":1,"wgIsArticle":true,"wgIsRedirect":false,"wgAction":"view","wgUserName":"360N3042986805","wgUserGroups":["*","user","autoconfirmed"],"wgCategories":["有投票的页面"],"wgBreakFrames":false,"wgPageContentLanguage":"zh-hans","wgPageContentModel":"wikitext","wgSeparatorTransformTable":["",""],"wgDigitTransformTable":["",""],"wgDefaultDateFormat":"zh","wgMonthNames":["","1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],"wgMonthNamesShort":["","1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],"wgRelevantPageName":"首页","wgRelevantArticleId":1,"wgRequestId":"b671b69f49a5114f86cc79c5","wgUserId":6068853,"wgUserEditCount":0,"wgUserRegistration":1525415549000,"wgUserNewMsgRevisionId":null,"wgIsProbablyEditable":false,"wgRestrictionEdit":["sysop"],"wgRestrictionMove":["sysop"],"wgIsMainPage":true,"wgWikiEditorEnabledModules":{"toolbar":true,"dialogs":true,"preview":false,"publish":false},"wgUserQId":3042986805,"wgMediaViewerOnClick":true,"wgMediaViewerEnabledByDefault":true,"sfgAutocompleteValues":[],"sfgAutocompleteOnAllChars":false,"sfgFieldProperties":[],"sfgCargoFields":[],"sfgDependentFields":[],"sfgGridValues":[],"sfgGridParams":[],"sfgShowOnSelect":[],"sfgScriptPath":"/wwii/extensions/SemanticForms","edgValues":null,"sfgEDSettings":null,"wgVisualEditor":{"pageLanguageCode":"zh-Hans","pageLanguageDir":"ltr","usePageImages":false,"usePageDescriptions":false},"wgVisualEditorToolbarScrollOffset":0});mw.loader.implement("user.options",function($,jQuery,require,module){mw.user.options.set([]);});mw.loader.implement("user.tokens",function ( $, jQuery, require, module ) {
        mw.user.tokens.set({"editToken":"a1fa1c677ba551a4fc4762bafe0681615aec0238+\\","patrolToken":"9d3308aa120ecea46bb5bc57182583b45aec0238+\\","watchToken":"9b4aa614dc627928a3ea536a4fcb6c2a5aec0238+\\","csrfToken":"a1fa1c677ba551a4fc4762bafe0681615aec0238+\\"});/*@nomin*/;

    });mw.loader.load(["ext.smw.style","mediawiki.page.startup","mmv.head","ext.visualEditor.desktopArticleTarget.init"]);mw.loader.load("http://wikicdn.joyme.com/wwii/load.php?debug=false\u0026lang=zh-hans\u0026modules=skins.mediawikibootstrap1\u0026only=scripts\u0026skin=mediawikibootstrap1");});</script>
    <script>window.wgWikiCom="com";window.wgPhpServer ="http://wiki.joyme.com";window.wgLoadphpCache =false;window.wgWikiname = "wwii";window.articleId = 1;window.wgServer ="http://wiki.joyme.com";window.wgUserProfileId="";</script>
    <link rel="stylesheet" href="http://wikicdn.joyme.com/wwii/load.php?debug=false&amp;lang=zh-hans&amp;modules=ext.Ajaxpoll.New.css%7Cext.jcomments.hot.css%7Cext.visualEditor.desktopArticleTarget.noscript%7Cmediawiki.legacy.commonPrint%2Cshared%7Cmediawiki.sectionAnchor%7Cmediawiki.skinning.interface%7Cskins.mediawikibootstrap1&amp;only=styles&amp;skin=mediawikibootstrap1"/>
    <link rel="stylesheet" href="http://wikicdn.joyme.com/wwii/load.php?debug=false&amp;lang=zh-hans&amp;modules=ext.smw.style%7Cext.smw.tooltip.styles&amp;only=styles&amp;skin=mediawikibootstrap1"/>
    <meta name="ResourceLoaderDynamicStyles" content=""/>
    <link rel="stylesheet" href="http://wikicdn.joyme.com/wwii/load.php?debug=false&amp;lang=zh-hans&amp;modules=site&amp;only=styles&amp;skin=mediawikibootstrap1"/>
    <script async="" src="http://wikicdn.joyme.com/wwii/load.php?debug=false&amp;lang=zh-hans&amp;modules=startup&amp;only=scripts&amp;skin=mediawikibootstrap1"></script>
    <meta name="generator" content="MediaWiki 1.27.1"/>
    <link rel="ExportRDF" type="application/rdf+xml" title="首页" href="/wwii/index.php?title=%E7%89%B9%E6%AE%8A:%E5%AF%BC%E5%87%BARDF/%E9%A6%96%E9%A1%B5&amp;xmlmime=rdf"/>
    <link rel="shortcut icon" href="/favicon.ico"/>
    <link rel="search" type="application/opensearchdescription+xml" href="/wwii/opensearch_desc.php" title="二战wiki_二战军事战役武器兵种将领最全资料库 (zh-hans)"/>
    <link rel="EditURI" type="application/rsd+xml" href="http://wiki.joyme.com/wwii/api.php?action=rsd"/>
    <!--[if lt IE 7]><style type="text/css">body{behavior:url("/wwii/skins/mediawikibootstrap1/csshover.min.htc")}</style><![endif]-->

</head>
<body class="mediawiki ltr sitedir-ltr ns-0 ns-subject page-首页 rootpage-首页 skin-mediawikibootstrap1 action-view">
<!-- 将这段话添加到heade结束标签之前  开始-->
<script type="text/javascript">
    //document.domain=window.location.hostname;
    window.addEventListener("DOMContentLoaded", function (){
        document.addEventListener("touchstart", function (){return false}, true)
    }, true);
</script>

<!-- WIKI区 开始-->
<div id="wrapper">

    <!-- 内容区 开始-->

    <div class="joymewiki-content-block container">
        <div class="section-bodycontent ">
            <section id="content" class="mw-body joymewiki-block 0 " role="main">
                <div id="top"></div>

                <!-- bodyContent内容区 开始-->
                <div id="bodyContent" class="mw-body-content">
                    <!-- 内容区-->

                    <!-- WIKI内容 -->
                    <div id="mw-content-text" lang="zh-Hans" dir="ltr" class="mw-content-ltr"><div class="mwiki_hide"><div class="WWII-infor">
                        <div class="WWII-banner">
                            <div class="rmht">
                                <div class="pic">
                                    <div class="pic-box"><a href="/view/militaryinfo/59.jsp" target="_blank" rel=" noreferrer noopener"><img alt="59坦克：新中国生产最多的主战坦克.jpg" src="/static/image/militaryinfo/59.jpg" width="585" height="251" data-file-width="585" data-file-height="251" /></a><span>59坦克：新中国生产最多的主战坦克</span></div>
                                    <div class="pic-box"><a href="/view/militaryinfo/nimiz.jsp" target="_blank" rel=" noreferrer noopener"><img alt="美国著名海军上将尼米兹.jpg" src="/static/image/militaryinfo/nimiz.jpg" width="585" height="251" data-file-width="585" data-file-height="251" /></a><span>美国著名海军上将尼米兹</span></div>
                                    <div class="pic-box" style="display:block"><img alt="国之重器！001A型航母.jpg" src="/static/image/militaryinfo/001a.jpg" width="585" height="251" data-file-width="585" data-file-height="251" /><span>国之重器！001A型航母</span></div>
                                    <div id="pic-ctrl"><span class="current"></span><span></span><span></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="infor-main">
                            <div class="infor-title">二战军事局势演变</div>
                            <div class="situation"><cite><img alt="二战局势.gif" src="http://p2.qhimg.com/t0110be6c554d64ed35.gif" width="400" height="214" data-file-name="二战局势.gif" data-file-width="400" data-file-height="214" /></cite><dl><dt>
                                <div class="situa-list"><span class="bot"></span><span class="top"></span><li><cite><img alt="英国.jpg" src="http://p3.qhimg.com/t01a82319e72527263a.jpg" width="150" height="100" data-file-name="英国.jpg" data-file-width="150" data-file-height="100" /></cite>英国</li><li><cite><img alt="挪威.jpg" src="http://p0.qhimg.com/t019ec8068eb4477c82.jpg" width="150" height="100" data-file-name="挪威.jpg" data-file-width="150" data-file-height="100" /></cite>挪威</li><li><cite><img alt="澳大利亚.jpg" src="http://p4.qhimg.com/t01376c0f396bcaef9a.jpg" width="150" height="100" data-file-name="澳大利亚.jpg" data-file-width="150" data-file-height="100" /></cite>澳大利亚</li><li><cite><img alt="苏联.jpg" src="http://p5.qhimg.com/t01d536b24ea408c631.jpg" width="150" height="100" data-file-name="苏联.jpg" data-file-width="150" data-file-height="100" /></cite>苏联</li><li><cite><img alt="新西兰.jpg" src="http://p8.qhimg.com/t018ca8bce1efff3ce3.jpg" width="150" height="100" data-file-name="新西兰.jpg" data-file-width="150" data-file-height="100" /></cite>新西兰</li><li><cite><img alt="希腊.jpg" src="http://p9.qhimg.com/t017cc4d4b57804a25f.jpg" width="150" height="100" data-file-name="希腊.jpg" data-file-width="150" data-file-height="100" /></cite>希腊</li><li><cite><img alt="美国.jpg" src="http://p9.qhimg.com/t013aa4b9f5fa4aa039.jpg" width="150" height="100" data-file-name="美国.jpg" data-file-width="150" data-file-height="100" /></cite>美国</li><li><cite><img alt="南斯拉夫.jpg" src="http://p9.qhimg.com/t018acf512698d41331.jpg" width="150" height="100" data-file-name="南斯拉夫.jpg" data-file-width="150" data-file-height="100" /></cite>南斯拉夫</li><li><cite><img alt="南非.jpg" src="http://p0.qhimg.com/t013b5605e49f131080.jpg" width="150" height="100" data-file-name="南非.jpg" data-file-width="150" data-file-height="100" /></cite>南非</li><li><cite><img alt="法国.jpg" src="http://p5.qhimg.com/t01465e5a558a7f0ab2.jpg" width="150" height="100" data-file-name="法国.jpg" data-file-width="150" data-file-height="100" /></cite>法国</li><li><cite><img alt="捷克斯洛伐克.jpg" src="http://p2.qhimg.com/t01320c9c591000be89.jpg" width="150" height="100" data-file-name="捷克斯洛伐克.jpg" data-file-width="150" data-file-height="100" /></cite>捷克</li><li><cite><img alt="荷兰.jpg" src="http://p4.qhimg.com/t0166c869f857a4bc8b.jpg" width="150" height="100" data-file-name="荷兰.jpg" data-file-width="150" data-file-height="100" /></cite>荷兰</li><li><cite><img alt="中国.jpg" src="http://p3.qhimg.com/t0199b913ac4106a954.jpg" width="150" height="100" data-file-name="中国.jpg" data-file-width="150" data-file-height="100" /></cite>中国</li><li><cite><img alt="加拿大.jpg" src="http://p8.qhimg.com/t01b52eb4fa39048db4.jpg" width="150" height="100" data-file-name="加拿大.jpg" data-file-width="150" data-file-height="100" /></cite>加拿大</li><li><cite><img alt="英属印度.jpg" src="http://p3.qhimg.com/t012381623a7e6f5c07.jpg" width="150" height="100" data-file-name="英属印度.jpg" data-file-width="150" data-file-height="100" /></cite>英属印度</li><li><cite><img alt="比利时.jpg" src="http://p5.qhimg.com/t01fe883b756526c977.jpg" width="150" height="100" data-file-name="比利时.jpg" data-file-width="150" data-file-height="100" /></cite>比利时</li><li><cite><img alt="波兰.jpg" src="http://p0.qhimg.com/t0149a84d691b36aeee.jpg" width="150" height="100" data-file-name="波兰.jpg" data-file-width="150" data-file-height="100" /></cite>波兰</li><li><cite><img alt="卢森堡.jpg" src="http://p9.qhimg.com/t01521ed8710fc8c00c.jpg" width="150" height="100" data-file-name="卢森堡.jpg" data-file-width="150" data-file-height="100" /></cite>卢森堡</li><li><cite><img alt="丹麦.jpg" src="http://p3.qhimg.com/t0135110c2994b1c0b3.jpg" width="150" height="100" data-file-name="丹麦.jpg" data-file-width="150" data-file-height="100" /></cite>丹麦</li><li><cite><img alt="埃塞俄比亚.jpg" src="http://p9.qhimg.com/t01c37ee3bf2ed343ab.jpg" width="150" height="100" data-file-name="埃塞俄比亚.jpg" data-file-width="150" data-file-height="100" /></cite>埃塞俄比亚</li>
                                </div></dt><dt>
                                <div class="situa-list"><span class="bot"></span><span class="top"></span><li><cite><img alt="纳粹德国.jpg" src="http://p4.qhimg.com/t01014010117b5e6723.jpg" width="150" height="100" data-file-name="纳粹德国.jpg" data-file-width="150" data-file-height="100" /></cite>纳粹德国</li><li><cite><img alt="日本.jpg" src="http://p8.qhimg.com/t01881ce193dbb7f9dd.jpg" width="150" height="100" data-file-name="日本.jpg" data-file-width="150" data-file-height="100" /></cite>日本</li><li><cite><img alt="意大利.jpg" src="http://p6.qhimg.com/t010259707e796672ad.jpg" width="150" height="100" data-file-name="意大利.jpg" data-file-width="150" data-file-height="100" /></cite>意大利</li><li><cite><img alt="匈牙利王国.jpg" src="http://p5.qhimg.com/t0188a2335b2b46a63f.jpg" width="150" height="100" data-file-name="匈牙利王国.jpg" data-file-width="150" data-file-height="100" /></cite>匈牙利王国</li><li><cite><img alt="罗马尼亚.jpg" src="http://p6.qhimg.com/t0198b1000a2e1a823b.jpg" width="150" height="100" data-file-name="罗马尼亚.jpg" data-file-width="150" data-file-height="100" /></cite>罗马尼亚</li><li><cite><img alt="保加利亚.jpg" src="http://p9.qhimg.com/t01d04b3559ceae4da4.jpg" width="150" height="100" data-file-name="保加利亚.jpg" data-file-width="150" data-file-height="100" /></cite>保加利亚</li><li><cite><img alt="斯洛伐克.jpg" src="http://p2.qhimg.com/t0118274d5e58741a50.jpg" width="150" height="100" data-file-name="斯洛伐克.jpg" data-file-width="150" data-file-height="100" /></cite>斯洛伐克</li>
                                </div></dt><dt></dt></dl>
                            </div>
                        </div>
                    </div>
                        <div class="main-left">

                            <div class="WWII-clumn">
                                <div class="WWII-clumn-title title-left">军事信息推荐</div>
                                <div class="WWII-clumn-content">
                                    <div class="u-tab-box">
                                        <div class="u-aside"><span class="on">欧洲</span><span>亚洲</span><span>非洲</span>
                                        </div>
                                        <div class="u-tab-main">
                                            <div class="u-t-box u-j-box u-show">
                                                <div class="u-tab-menu">
                                                    <div class="u-menu-list on">简介</div>
                                                    <div class="u-menu-list">著名战役</div>
                                                </div>
                                                <div class="u-tab-item">
                                                    <div class="u-tab-info u-show"><div class="pic-list1">
                                                        <table style="float:left;width: 42%;">
                                                            <tr>
                                                                <td align="center"><img alt="Second world war europe animation small.gif" src="http://p3.qhimg.com/t010e124dcdb46c774f.gif" width="300" height="312" data-file-name="Second_world_war_europe_animation_small.gif" data-file-width="247" data-file-height="257" />
                                                                </td></tr></table>
                                                    </div>
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                </td></tr>
                                                            <tr>
                                                                <td>第二次世界大战欧洲战场，战事由纳粹德国入侵波兰开始，并由纳粹德国战败而完结。战争主要是<a href="/wwii/%E8%BD%B4%E5%BF%83%E5%9B%BD" title="轴心国">轴心国</a>和<a href="/wwii/%E5%90%8C%E7%9B%9F%E5%9B%BD" title="同盟国">同盟国</a>之间的战斗。纳粹德国、意大利王国、罗马尼亚、保加利亚和斯洛伐克属轴心国阵营，英国、自由法国、苏联、比利时和美国则属同盟国阵营。
                                                                </td></tr>
                                                            <tr>
                                                                <td>战地主要分为西线、东线和南线三部分，西线即纳粹德国和法国、英国、比利时之间的战争，东线即纳粹德国和苏联、波兰之间的战争，而南线即意大利王国、纳粹德国和南欧、地中海地区的战争。三战线中以东线最激烈最漫长。主要由纳粹德国发动进攻。
                                                                </td></tr></table>
                                                    </div>
                                                    <div class="u-tab-info">*<a href="/wwii/%E9%97%AA%E7%94%B5%E6%88%98" title="闪电战" class="mw-redirect">闪电战</a> - 德国在战争初期运用快速及强大武力的战术。
                                                        <ul><li><ul><li><a href="/wwii/%E5%85%A5%E4%BE%B5%E6%B3%A2%E5%85%B0" title="入侵波兰" class="mw-redirect">入侵波兰</a> - 德国行动代号“白色方案”。</li>
                                                            <li><a href="/wwii/%E5%A4%A7%E8%A5%BF%E6%B4%8B%E6%88%98%E5%BD%B9" title="大西洋战役" class="mw-redirect">大西洋战役</a> - 德国海军通商破坏舰和U-潜艇攻击北美和南大西洋前往英国与苏联的船队。船队主要由英国皇家海军、英国皇家空军、加拿大皇家海军和加拿大皇家空军负责保护 - 之后美国海军以船舰及空军援助两国。U-潜艇在意大利于1940年6月宣战之后加入意大利潜艇部队。</li>
                                                            <li><a href="/wwii/%E5%81%87%E6%88%98" title="假战">假战</a> - 在入侵波兰到法国战役这段时间，西线只有少数冲突。</li>
                                                            <li><a href="/wwii/%E6%8C%AA%E5%A8%81%E6%88%98%E5%BD%B9" title="挪威战役">挪威战役</a>
                                                                <ul><li>德国<a href="/wwii/%E5%A8%81%E7%91%9F%E6%BC%94%E4%B9%A0%E4%BD%9C%E6%88%98" title="威瑟演习作战">威瑟演习作战</a> - 德国入侵丹麦与挪威。</li>
                                                                    <li><a href="/wwii/%E7%9B%9F%E5%86%9B%E6%8C%AA%E5%A8%81%E6%88%98%E5%BD%B9" title="盟军挪威战役">盟军挪威战役</a>- 英国、法国、波兰占领挪威以反击德国的入侵。</li>
                                                                    <li><a href="/wwii/%E5%85%A5%E4%BE%B5%E5%86%B0%E5%B2%9B" title="入侵冰岛">入侵冰岛</a> - 英国“叉子行动”（Operation Fork）。</li>
                                                                    <li><a href="/wwii/%E6%B3%95%E5%9B%BD%E6%B2%A6%E9%99%B7" title="法国沦陷" class="mw-redirect">法国沦陷</a> - 德国行动代号“黄色作战”（Fall Gelb）。</li>
                                                                    <li><a href="/wwii/%E4%B8%8D%E5%88%97%E9%A2%A0%E7%A9%BA%E6%88%98" title="不列颠空战" class="mw-redirect">不列颠空战</a> - 德国空军入侵英国。
                                                                        <ul><li><a href="/wwii/%E6%B5%B7%E7%8B%AE%E8%AE%A1%E5%88%92" title="海狮计划">海狮计划</a> - 计划入侵英国。</li></ul></li></ul></li></ul></li>
                                                            <li>地中海战场
                                                                <ul><li><a href="/wwii/%E5%9C%B0%E4%B8%AD%E6%B5%B7%E6%88%98%E5%BD%B9" title="地中海战役">地中海战役</a> - 意大利海军与盟军的一系列战斗。</li>
                                                                    <li><a href="/wwii/%E5%B7%B4%E5%B0%94%E5%B9%B2%E6%88%98%E5%BD%B9" title="巴尔干战役">巴尔干战役</a>
                                                                        <ul><li><a href="/wwii/%E5%B8%8C%E6%84%8F%E6%88%98%E4%BA%89" title="希意战争">希意战争</a> - 意大利从阿尔巴尼亚入侵希腊，遭到希腊反击而退回阿尔巴尼亚。</li>
                                                                            <li><a href="/wwii/%E5%85%A5%E4%BE%B5%E5%8D%97%E6%96%AF%E6%8B%89%E5%A4%AB" title="入侵南斯拉夫">入侵南斯拉夫</a> - 德国行动代号“25号指令”。</li>
                                                                            <li><a href="/wwii/%E5%B8%8C%E8%85%8A%E5%85%A5%E4%BE%B5" title="希腊入侵" class="mw-redirect">希腊入侵</a> - 德国行动代号“玛莉塔作战”。</li>
                                                                            <li><a href="/wwii/%E5%85%8B%E9%87%8C%E7%89%B9%E5%B2%9B%E6%88%98%E5%BD%B9" title="克里特岛战役">克里特岛战役</a> - 德国行动代号“水银行动”。</li>
                                                                            <li><a href="/wwii/%E5%8D%97%E6%96%AF%E6%8B%89%E5%A4%AB%E5%89%8D%E7%BA%BF" title="南斯拉夫前线" class="mw-redirect">南斯拉夫前线</a> - 南斯拉夫民族解放军与南斯拉夫祖国军的内战 - 双方也对抗来自德国、意大利、匈牙利、保加利亚、斯洛文尼亚、克罗地亚独立国和塞尔维亚救国政府的武力入侵。</li>
                                                                            <li><a href="/wwii/%E5%A4%9A%E5%BE%B7%E5%8D%A1%E5%B0%BC%E6%96%AF%E7%BE%A4%E5%B2%9B%E6%88%98%E5%BD%B9" title="多德卡尼斯群岛战役">多德卡尼斯群岛战役</a></li></ul></li>
                                                                    <li><a href="/wwii/%E5%8D%97%E6%B3%95%E6%88%98%E5%BD%B9" title="南法战役" class="mw-redirect">南法战役</a> - 盟军“龙骑兵行动”。</li>
                                                                    <li><a href="/wwii/%E6%84%8F%E5%A4%A7%E5%88%A9%E6%94%BB%E9%98%B2%E6%88%98" title="意大利攻防战">意大利攻防战</a>
                                                                        <ul><li><a href="/wwii/%E7%9B%9F%E5%86%9B%E5%85%A5%E4%BE%B5%E8%A5%BF%E8%A5%BF%E9%87%8C" title="盟军入侵西西里" class="mw-redirect">盟军入侵西西里</a> - 空降入侵西西里。</li>
                                                                            <li><a href="/wwii/%E7%9B%9F%E5%86%9B%E5%85%A5%E4%BE%B5%E6%84%8F%E5%A4%A7%E5%88%A9" title="盟军入侵意大利" class="mw-redirect">盟军入侵意大利</a></li></ul></li></ul></li>
                                                            <li>东线
                                                                <ul><li><a href="/wwii/%E5%85%A5%E4%BE%B5%E8%8B%8F%E8%81%94" title="入侵苏联" class="mw-redirect">入侵苏联</a> - 德国“巴巴罗萨作战” - 德国、意大利、匈牙利、罗马尼亚、芬兰、意大利、斯洛伐克和克罗地亚等国进攻苏联及其占领区。</li>
                                                                    <li><a href="/wwii/%E6%8C%81%E7%BB%AD%E6%88%98%E4%BA%89" title="持续战争" class="mw-redirect">持续战争</a> - 苏芬冬季战争的延续。</li></ul></li>
                                                            <li>西线
                                                                <ul><li><a href="/wwii/%E8%AF%BA%E6%9B%BC%E5%BA%95%E6%88%98%E5%BD%B9" title="诺曼底战役">诺曼底战役</a></li>
                                                                    <li><a href="/wwii/%E9%BD%90%E6%A0%BC%E8%8F%B2%E9%98%B2%E7%BA%BF%E6%88%98%E5%BD%B9" title="齐格菲防线战役">齐格菲防线战役</a></li></ul></li></ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="u-t-box u-j-box">
                                                <div class="u-tab-menu">
                                                    <div class="u-menu-list on">简介</div>
                                                    <div class="u-menu-list">著名战役</div>
                                                </div>
                                                <div class="u-tab-item">
                                                    <div class="u-tab-info u-show"><div class="pic-list1">
                                                        <table style="float:left;width: 42%;">
                                                            <tr>
                                                                <td align="center"><img alt="Pacific Theater Areas;map1.png" src="http://p0.qhimg.com/t01b187216d8dd9aaed.png" width="300" height="228" data-file-name="Pacific_Theater_Areas;map1.png" data-file-width="500" data-file-height="380" />
                                                                </td></tr></table>
                                                    </div>
                                                        <table style="&quot;width:">

                                                            <tr>
                                                                <td>太平洋战争是第二次世界大战中以大日本帝国为首的<a href="/wwii/%E8%BD%B4%E5%BF%83%E5%9B%BD" title="轴心国">轴心国</a>和以美国为首的<a href="/wwii/%E5%90%8C%E7%9B%9F%E5%9B%BD" title="同盟国">同盟国</a>于1941年12月7日至1945年9月2日期间的战争，范围遍及太平洋、印度洋、东亚及东南亚地区。
                                                                </td></tr>
                                                            <tr>
                                                                <td>太平洋战争属于第二次世界大战的一部分，但与欧洲战场不同的是，它的起因源自更早的中国<a href="/wwii/%E6%8A%97%E6%97%A5%E6%88%98%E4%BA%89" title="抗日战争">抗日战争</a>和先前日本与欧美列强等国所累积的矛盾和冲突。1937年，日本因对中国发动全面侵略战争。1941年12月7日，大日本帝国海军向美国太平洋上的海军基地珍珠港不宣而战，同时在西太平洋对马来西亚、新加坡、印度尼西亚、缅甸和菲律宾等地发动攻击。
                                                                </td></tr></table>
                                                    </div>
                                                    <div class="u-tab-info">*中国
                                                        <ul><li><ul><li><a href="/wwii/%E6%8A%97%E6%97%A5%E6%88%98%E4%BA%89" title="抗日战争">抗日战争</a> - 日本入侵中国。</li></ul></li>
                                                            <li>中南半岛
                                                                <ul><li><a href="/wwii/%E7%AC%AC%E4%B8%80%E6%AC%A1%E5%85%A5%E4%BE%B5%E6%B3%95%E5%B1%9E%E4%B8%AD%E5%8D%97%E5%8D%8A%E5%B2%9B" title="第一次入侵法属中南半岛" class="mw-redirect">第一次入侵法属中南半岛</a> - 日本试图阻止中国进口武器与燃料。</li>
                                                                    <li><a href="/wwii/%E6%B3%B0%E6%B3%95%E6%88%98%E4%BA%89" title="泰法战争">泰法战争</a> - 泰国与维琪法国在法属中南半岛的战争。</li>
                                                                    <li><a href="/wwii/index.php?title=%E7%AC%AC%E4%BA%8C%E6%AC%A1%E5%85%A5%E4%BE%B5%E6%B3%95%E5%B1%9E%E4%B8%AD%E5%8D%97%E5%8D%8A%E5%B2%9B&amp;action=edit&amp;redlink=1" class="new" title="第二次入侵法属中南半岛（页面不存在）">第二次入侵法属中南半岛</a></li></ul></li>
                                                            <li>太平洋地区
                                                                <ul><li><a href="/wwii/%E5%A4%AA%E5%B9%B3%E6%B4%8B%E6%88%98%E5%8C%BA" title="太平洋战区" class="mw-redirect">太平洋战区</a>
                                                                    <ul><li><a href="/wwii/%E7%8F%8D%E7%8F%A0%E6%B8%AF%E4%BA%8B%E4%BB%B6" title="珍珠港事件">珍珠港事件</a> - 日本空袭美国太平洋舰队，导致美国加入二战。</li>
                                                                        <li><a href="/wwii/%E6%89%80%E7%BD%97%E9%97%A8%E7%BE%A4%E5%B2%9B%E6%88%98%E5%BD%B9" title="所罗门群岛战役" class="mw-redirect">所罗门群岛战役</a></li>
                                                                        <li><a href="/wwii/%E7%A1%AB%E7%A3%BA%E5%8F%8A%E7%A1%AB%E7%90%83%E7%BE%A4%E5%B2%9B%E6%88%98%E4%BA%8B" title="硫磺及硫球群岛战事">硫磺及硫球群岛战事</a></li></ul></li>
                                                                    <li>西南大平洋战区
                                                                        <ul><li><a href="/wwii/%E6%BE%B3%E6%B4%B2%E6%88%98%E5%BD%B9" title="澳洲战役" class="mw-redirect">澳洲战役</a></li>
                                                                            <li><a href="/wwii/%E5%A9%86%E7%BD%97%E6%B4%B2%E6%88%98%E5%BD%B9" title="婆罗洲战役">婆罗洲战役</a></li></ul></li></ul></li>
                                                            <li>东南亚战区
                                                                <ul><li><a href="/wwii/%E7%BE%8E%E8%8B%B1%E8%8D%B7%E6%BE%B3%E5%8F%B8%E4%BB%A4%E9%83%A8" title="美英荷澳司令部" class="mw-redirect">美英荷澳司令部</a></li>
                                                                    <li><a href="/wwii/%E7%BC%85%E7%94%B8%E6%88%98%E5%BD%B9" title="缅甸战役">缅甸战役</a></li></ul></li>
                                                            <li><a href="/wwii/%E8%8B%8F%E8%81%94%E5%85%A5%E4%BE%B5%E6%BB%A1%E6%B4%B2" title="苏联入侵满洲" class="mw-redirect">苏联入侵满洲</a>。</li>
                                                            <li><a href="/wwii/%E6%97%A5%E6%9C%AC%E6%88%98%E5%BD%B9" title="日本战役">日本战役</a> - 一系列对日本海军的空袭并计划入侵日本。</li></ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="u-t-box u-j-box">
                                                <div class="u-tab-menu">
                                                    <div class="u-menu-list on">简介</div>
                                                    <div class="u-menu-list">著名战役</div>
                                                </div>
                                                <div class="u-tab-item">
                                                    <div class="u-tab-info u-show"><div class="pic-list1">
                                                        <table style="float:left;width: 42%;">
                                                            <tr>
                                                                <td align="center"><img alt="WWII-Mediterranean-v1.PNG" src="http://p5.qhimg.com/t0125f8859303e6d13c.png" width="300" height="168" data-file-name="WWII-Mediterranean-v1.PNG" data-file-width="800" data-file-height="448" />
                                                                </td></tr></table>
                                                    </div>
                                                        <table style="&quot;width:">

                                                            <tr>
                                                                <td>第二次世界大战期间，从1940年6月10日至1943年5月16日在北非发生了北非战役。它包括发生在利比亚和埃及的沙漠（<a href="/wwii/%E8%A5%BF%E9%83%A8%E6%B2%99%E6%BC%A0%E6%88%98%E5%BD%B9" title="西部沙漠战役">西部沙漠战役</a>，也被叫做沙漠战争）以及摩洛哥和阿尔及利亚<a href="/wwii/%E7%81%AB%E7%82%AC%E8%A1%8C%E5%8A%A8" title="火炬行动">火炬行动</a>和<a href="/wwii/%E7%AA%81%E5%B0%BC%E6%96%AF%E6%88%98%E5%BD%B9" title="突尼斯战役">突尼斯战役</a>。
                                                                </td></tr>
                                                            <tr>
                                                                <td>战役在<a href="/wwii/%E5%90%8C%E7%9B%9F%E5%9B%BD" title="同盟国">同盟国</a>和<a href="/wwii/%E8%BD%B4%E5%BF%83%E5%9B%BD" title="轴心国">轴心国</a>之间展开。同盟国的战力主要来自英联邦和来自德国控制下的欧洲的流亡分子。美国于1941年加入战争并于1942年5月11日在北非开始直接军事援助。
                                                                </td></tr></table>
                                                    </div>
                                                    <div class="u-tab-info">*<a href="/wwii/index.php?title=%E4%B8%9C%E9%9D%9E%E6%88%98%E5%BD%B9&amp;action=edit&amp;redlink=1" class="new" title="东非战役（页面不存在）">东非战役</a>
                                                        <ul><li><a href="/wwii/%E5%8C%97%E9%9D%9E%E6%88%98%E5%BD%B9" title="北非战役" class="mw-redirect">北非战役</a> - 或称“沙漠之战”。
                                                            <ul><li><a href="/wwii/%E8%A5%BF%E9%83%A8%E6%B2%99%E6%BC%A0%E6%88%98%E5%BD%B9" title="西部沙漠战役">西部沙漠战役</a> - 盟军与意大利殖民地作战。</li>
                                                                <li><a href="/wwii/%E7%81%AB%E7%82%AC%E8%A1%8C%E5%8A%A8" title="火炬行动">火炬行动</a> - 英美入侵维琪法国控制的摩洛哥与阿尔及利亚。</li>
                                                                <li><a href="/wwii/%E5%9F%83%E5%88%A9%E6%88%98%E5%BD%B9" title="埃利战役" class="mw-redirect">埃利战役</a></li>
                                                                <li><a href="/wwii/%E7%AA%81%E5%B0%BC%E6%96%AF%E6%88%98%E5%BD%B9" title="突尼斯战役">突尼斯战役</a></li></ul></li>
                                                            <li><a href="/wwii/index.php?title=%E8%A5%BF%E9%9D%9E%E6%88%98%E5%BD%B9&amp;action=edit&amp;redlink=1" class="new" title="西非战役（页面不存在）">西非战役</a></li>
                                                            <li><a href="/wwii/%E9%A9%AC%E8%BE%BE%E5%8A%A0%E6%96%AF%E5%8A%A0%E6%88%98%E5%BD%B9" title="马达加斯加战役">马达加斯加战役</a></li></ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                            <div class="WWII-clumn">
                                <div class="WWII-clumn-title title-left">战争沙盘</div>
                                <div class="WWII-clumn-content">
                                    <div class="u-tab-box">
                                        <div class="u-aside"><span class="on">介绍</span><span>领导者</span><span>背景</span><span>初期</span><span>中期</span><span>末期</span>
                                        </div>
                                        <div class="u-tab-main">
                                            <div class="u-t-box u-j-box u-show">
                                                <div class="u-tab-menu">
                                                    <div class="pic-list1">
                                                        <table style="float:left;width: 42%;">
                                                            <tr>
                                                                <td align="center"><img alt="欧洲战场1.gif" src="http://p6.qhimg.com/t0187b7ed2ac74eecc1.gif" width="300" height="225" data-file-name="欧洲战场1.gif" data-file-width="300" data-file-height="225" />
                                                                </td></tr></table>
                                                    </div>
                                                    <table style="&quot;width:">

                                                        <tr>
                                                            <td>战事由纳粹德国入侵波兰开始，并由纳粹德国战败而完结。战争主要是<a href="/wwii/%E8%BD%B4%E5%BF%83%E5%9B%BD" title="轴心国">轴心国</a>和<a href="/wwii/%E5%90%8C%E7%9B%9F%E5%9B%BD" title="同盟国">同盟国</a>之间的战斗。纳粹德国、意大利王国、罗马尼亚、保加利亚和斯洛伐克属轴心国阵营，英国、自由法国、苏联、比利时和美国则属同盟国阵营。
                                                            </td></tr>
                                                        <tr>
                                                            <td>这场战争是欧洲历史上破坏性最强的战争之一。大约有5,000万人参战，2,000万左右的人丧生，3,000万左右的人受伤。战争造成了严重的经济损失。
                                                            </td></tr></table>
                                                </div>
                                            </div>
                                            <div class="u-t-box u-j-box">
                                                <div class="u-tab-menu">
                                                    <div class="u-menu-list on">同盟国</div>
                                                    <div class="u-menu-list">轴心国</div>
                                                </div>
                                                <div class="u-tab-item">
                                                    <div class="u-tab-info u-show"><a href="http&#58;//wiki.joyme.com/wwii/%E5%AF%8C%E5%85%B0%E5%85%8B%E6%9E%97%C2%B7D%C2%B7%E7%BD%97%E6%96%AF%E7%A6%8F" class="flee-list1"><cite><img alt="美国.jpg" src="http://p9.qhimg.com/t013aa4b9f5fa4aa039.jpg" width="150" height="100" data-file-name="美国.jpg" data-file-width="150" data-file-height="100" /></cite><span>富兰克林·D·罗斯福</span></a>
                                                        <p><a href="http&#58;//wiki.joyme.com/wwii/%E6%B8%A9%E6%96%AF%E9%A1%BF%C2%B7%E4%B8%98%E5%90%89%E5%B0%94" class="flee-list1"><cite><img alt="英国.jpg" src="http://p3.qhimg.com/t01a82319e72527263a.jpg" width="150" height="100" data-file-name="英国.jpg" data-file-width="150" data-file-height="100" /></cite><span>温斯顿·丘吉尔</span></a>
                                                        </p>
                                                        <a href="http&#58;//wiki.joyme.com/wwii/%E7%BA%A6%E7%91%9F%E5%A4%AB%C2%B7%E6%96%AF%E5%A4%A7%E6%9E%97" class="flee-list1"><cite><img alt="苏联.jpg" src="http://p5.qhimg.com/t01d536b24ea408c631.jpg" width="150" height="100" data-file-name="苏联.jpg" data-file-width="150" data-file-height="100" /></cite><span>约瑟夫·斯大林</span></a></div>
                                                    <div class="u-tab-info"><a href="http&#58;//wiki.joyme.com/wwii/%E9%98%BF%E9%81%93%E5%A4%AB%C2%B7%E5%B8%8C%E7%89%B9%E5%8B%92" class="flee-list1"><cite><img alt="纳粹德国.jpg" src="http://p4.qhimg.com/t01014010117b5e6723.jpg" width="150" height="100" data-file-name="纳粹德国.jpg" data-file-width="150" data-file-height="100" /></cite><span>阿道夫·希特勒</span></a>
                                                        <a href="http&#58;//wiki.joyme.com/wwii/%E8%B4%9D%E5%B0%BC%E6%89%98%C2%B7%E5%A2%A8%E7%B4%A2%E9%87%8C%E5%B0%BC" class="flee-list1"><cite><img alt="意大利.jpg" src="http://p6.qhimg.com/t010259707e796672ad.jpg" width="150" height="100" data-file-name="意大利.jpg" data-file-width="150" data-file-height="100" /></cite><span>贝尼托·墨索里尼</span></a></div>
                                                </div>
                                            </div>
                                            <div class="u-t-box u-j-box">
                                                <div class="u-tab-menu">
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>凡尔赛条约</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <a href="/wwii/%E5%87%A1%E5%B0%94%E8%B5%9B%E6%9D%A1%E7%BA%A6" title="凡尔赛条约">凡尔赛条约</a>在第一次世界大战中，德意志帝国被协约国打败，被逼签署《凡尔赛条约》，承认战败，并成立威玛共和国。《凡尔赛条约》将所有发动战争的责任都推给了德国，对德国实...<a href="/wwii/%E5%87%A1%E5%B0%94%E8%B5%9B%E6%9D%A1%E7%BA%A6" title="凡尔赛条约">查看原文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>希特勒政权</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <a href="/wwii/%E5%B8%8C%E7%89%B9%E5%8B%92%E6%94%BF%E6%9D%83" title="希特勒政权">希特勒政权</a>威玛共和国的无力给希特勒所领导的纳粹党提供了机会，他宣称德国的困境之根源自凡尔赛条约给德国的制裁、握有国家经济命脉的犹太人及无力的威玛共和国。令纳粹党成...<a href="/wwii/%E5%B8%8C%E7%89%B9%E5%8B%92%E6%94%BF%E6%9D%83" title="希特勒政权">查看原文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>墨索里尼政权</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <a href="/wwii/%E5%A2%A8%E7%B4%A2%E9%87%8C%E5%B0%BC%E6%94%BF%E6%9D%83" title="墨索里尼政权">墨索里尼政权</a>第一次世界大战后，意大利的形势和德国一样。全国面临无政府状态。无法解决这些威胁后，国王维托里奥·埃马努埃莱三世邀请右翼政客贝尼托·墨索里尼以及他所领导的...<a href="/wwii/%E5%A2%A8%E7%B4%A2%E9%87%8C%E5%B0%BC%E6%94%BF%E6%9D%83" title="墨索里尼政权">查看原文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>钢铁条约</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <a href="/wwii/%E9%92%A2%E9%93%81%E6%9D%A1%E7%BA%A6" title="钢铁条约">钢铁条约</a>意大利遭到国际联盟谴责侵略阿尔巴尼亚后，1937年意大利也退出了国际联盟。意大利与同样退出国联的纳粹德国在1939年5月缔结了《钢铁条约》，从而加强了罗马—柏林轴心...<a href="/wwii/%E9%92%A2%E9%93%81%E6%9D%A1%E7%BA%A6" title="钢铁条约">查看原文</a>
                                                            </td></tr></table>
                                                </div>
                                            </div>
                                            <div class="u-t-box u-j-box">
                                                <div class="u-tab-menu">
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>入侵波兰</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:190px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E5%85%A5%E4%BE%B5%E6%B3%A2%E5%85%B0.png" class="image"><img alt="入侵波兰.png" src="http://p1.qhimg.com/t014772e54762abdd70.png" width="188" height="138" class="thumbimage" data-file-name="入侵波兰.png" data-file-width="188" data-file-height="138" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E5%85%A5%E4%BE%B5%E6%B3%A2%E5%85%B0.png" class="internal" title="放大"></a></div></div></div></div>1939年9月1日凌晨，<a href="/wwii/%E5%B8%8C%E7%89%B9%E5%8B%92" title="希特勒" class="mw-redirect">希特勒</a>决定入侵波兰，为了把入侵合理化，<a href="/wwii/%E5%B8%8C%E7%89%B9%E5%8B%92" title="希特勒" class="mw-redirect">希特勒</a>令士兵假扮波兰士兵"入侵"德国，波德战争正式爆发。德军利用夜幕的掩护，对波兰发动<a href="/wwii/%E9%97%AA%E7%94%B5%E6%88%98" title="闪电战" class="mw-redirect">闪电战</a>突袭。9月3日，英国和法国对德国宣战，但是波兰的抗战并没有得到英、法两国任何有效的军事支持，而是实行所谓的"假战"。...<a href="/wwii/%E5%85%A5%E4%BE%B5%E6%B3%A2%E5%85%B0" title="入侵波兰" class="mw-redirect">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_II/%E4%BA%8C%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="一号坦克1.jpg" src="http://p9.qhimg.com/t01fedc76c1761fea23.jpg" width="130" height="87" data-file-name="一号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>一号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/%E4%B8%80%E5%8F%B7%E5%96%B7%E7%81%AB%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="二号坦克1.jpg" src="http://p3.qhimg.com/t0144e002b7cfed79cc.jpg" width="130" height="87" data-file-name="二号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>二号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/LT-35/PZkpfw35(t)" class="flee-list"><cite><img alt="LT-351.jpg" src="http://p5.qhimg.com/t01e7d213470861e1b1.jpg" width="130" height="87" data-file-name="LT-351.jpg" data-file-width="130" data-file-height="87" /></cite><span>LT-35</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PZ.38(t)" class="flee-list"><cite><img alt="LT-381.jpg" src="http://p5.qhimg.com/t01c7aeb8e11748a20f.jpg" width="130" height="87" data-file-name="LT-381.jpg" data-file-width="130" data-file-height="87" /></cite><span>LT-38</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>苏联北侵</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:190px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E8%8B%8F%E8%81%94%E5%8C%97%E4%BE%B5.jpg" class="image"><img alt="苏联北侵.jpg" src="http://p2.qhimg.com/t015af9f5cf38e015b9.jpg" width="188" height="138" class="thumbimage" data-file-name="苏联北侵.jpg" data-file-width="188" data-file-height="138" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E8%8B%8F%E8%81%94%E5%8C%97%E4%BE%B5.jpg" class="internal" title="放大"></a></div></div></div></div>第二次世界大战爆发后。<a href="/wwii/%E6%96%AF%E5%A4%A7%E6%9E%97" title="斯大林" class="mw-redirect">斯大林</a>认为德国迟早要进攻苏联，就开始着手建立防范德国的东方战线，这条战线从波罗的海一直延伸到黑海，并企图通过扩大苏联西部疆域加强防御德国侵略。9月28日，苏军开进了立陶宛、拉脱维亚、爱沙尼亚，1940年8月初将这三国强行并入苏联;1939年11月30日苏联进攻芬兰，爆发了苏芬战争...<a href="/wwii/%E8%8B%8F%E8%81%94%E5%8C%97%E4%BE%B5" title="苏联北侵">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>德国征服北欧</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:190px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E5%BE%B7%E5%9B%BD%E5%BE%81%E6%9C%8D%E5%8C%97%E6%AC%A7.jpg" class="image"><img alt="德国征服北欧.jpg" src="http://p9.qhimg.com/t017694bc4a8d7c8c42.jpg" width="188" height="138" class="thumbimage" data-file-name="德国征服北欧.jpg" data-file-width="188" data-file-height="138" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E5%BE%B7%E5%9B%BD%E5%BE%81%E6%9C%8D%E5%8C%97%E6%AC%A7.jpg" class="internal" title="放大"></a></div></div></div></div>1939年12月14日，在相信盟军可能威胁铁矿来源后，希特勒下令国防军最高统帅部草拟入侵挪威计划，即威瑟演习作战。4月9日德国的入侵开始，丹麦国王克里斯蒂安十世马上投降，挪威军队奋力抵抗。盟军援军部队4月14日开始在挪威各处抵达，但因主要港口皆控制在徳军手上，重武器和后勤运送都出现困难...<a href="/wwii/%E5%BE%B7%E5%9B%BD%E5%BE%81%E6%9C%8D%E5%8C%97%E6%AC%A7" title="德国征服北欧" class="mw-redirect">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>西线闪击战</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:190px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E8%A5%BF%E7%BA%BF%E9%97%AA%E5%87%BB%E6%88%98.jpg" class="image"><img alt="西线闪击战.jpg" src="http://p0.qhimg.com/t014c7e0fbe065ae65a.jpg" width="188" height="138" class="thumbimage" data-file-name="西线闪击战.jpg" data-file-width="188" data-file-height="138" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E8%A5%BF%E7%BA%BF%E9%97%AA%E5%87%BB%E6%88%98.jpg" class="internal" title="放大"></a></div></div></div></div>1939年9月1日是世界历史上最黑暗的一天。这天凌晨4时45分，德军突然以6个装甲师、4个轻装甲师和4个摩托化师的兵力从几个方向同时对波兰发起猛攻。德国空军对波兰的行政中心、主要机场和通信交通枢纽、部队营房、军事指挥中心等战略目标进行了狂轰滥炸，德军用"闪电战"理论武装起来的装甲机械化部队大显神威...<a href="/wwii/%E8%A5%BF%E7%BA%BF%E9%97%AA%E5%87%BB%E6%88%98" title="西线闪击战" class="mw-redirect">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_II/%E4%BA%8C%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="一号坦克1.jpg" src="http://p9.qhimg.com/t01fedc76c1761fea23.jpg" width="130" height="87" data-file-name="一号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>一号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/%E4%B8%80%E5%8F%B7%E5%96%B7%E7%81%AB%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="二号坦克1.jpg" src="http://p3.qhimg.com/t0144e002b7cfed79cc.jpg" width="130" height="87" data-file-name="二号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>二号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/LT-35/PZkpfw35(t)" class="flee-list"><cite><img alt="LT-351.jpg" src="http://p5.qhimg.com/t01e7d213470861e1b1.jpg" width="130" height="87" data-file-name="LT-351.jpg" data-file-width="130" data-file-height="87" /></cite><span>LT-35</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PZ.38(t)" class="flee-list"><cite><img alt="LT-381.jpg" src="http://p5.qhimg.com/t01c7aeb8e11748a20f.jpg" width="130" height="87" data-file-name="LT-381.jpg" data-file-width="130" data-file-height="87" /></cite><span>LT-38</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>不列颠空战</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:290px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E4%B8%8D%E5%88%97%E9%A2%A0%E7%A9%BA%E6%88%98.jpg" class="image"><img alt="不列颠空战.jpg" src="http://p2.qhimg.com/t01ab1b26e0ae68b6dd.jpg" width="288" height="221" class="thumbimage" data-file-name="不列颠空战.jpg" data-file-width="288" data-file-height="221" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E4%B8%8D%E5%88%97%E9%A2%A0%E7%A9%BA%E6%88%98.jpg" class="internal" title="放大"></a></div></div></div></div>1939年9月1日是世界历史上最黑暗的一天。这天凌晨4时45分，德军突然以6个装甲师、4个轻装甲师和4个摩托化师的兵力从几个方向同时对波兰发起猛攻。德国空军对波兰的行政中心、主要机场和通信交通枢纽、部队营房、军事指挥中心等战略目标进行了狂轰滥炸，德军用"闪电战"理论武装起来的装甲机械化部队大显神威...<a href="/wwii/%E4%B8%8D%E5%88%97%E9%A2%A0%E7%A9%BA%E6%88%98" title="不列颠空战" class="mw-redirect">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>巴巴罗萨作战计划</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:302px;"><a href="/wwii/%E6%96%87%E4%BB%B6:Eastern_Front_1941-06_to_1941-09.png" class="image"><img alt="Eastern Front 1941-06 to 1941-09.png" src="http://p1.qhimg.com/t01c9c8cd4cfc21dfc1.png" width="300" height="230" class="thumbimage" data-file-name="Eastern_Front_1941-06_to_1941-09.png" data-file-width="300" data-file-height="230" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:Eastern_Front_1941-06_to_1941-09.png" class="internal" title="放大"></a></div></div></div></div><a href="/wwii/%E5%B8%8C%E7%89%B9%E5%8B%92" title="希特勒" class="mw-redirect">希特勒</a>于英国受挫后，决定在1941年6月22日突袭苏联，约有320万的德军地面部队投入了东线的攻势，伴随的还有数十万的罗马尼亚、匈牙利、斯洛伐克和意大利部队，芬兰(并非轴心国，但因苏芬战争而与苏联对立)则从北边发动攻势。德军的攻势也引燃了许多苏联占领国的独立运动...<a href="/wwii/%E5%B7%B4%E5%B7%B4%E7%BD%97%E8%90%A8%E4%BD%9C%E6%88%98%E8%AE%A1%E5%88%92" title="巴巴罗萨作战计划" class="mw-redirect">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_II/%E4%BA%8C%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="一号坦克1.jpg" src="http://p9.qhimg.com/t01fedc76c1761fea23.jpg" width="130" height="87" data-file-name="一号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>一号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/%E4%B8%80%E5%8F%B7%E5%96%B7%E7%81%AB%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="二号坦克1.jpg" src="http://p3.qhimg.com/t0144e002b7cfed79cc.jpg" width="130" height="87" data-file-name="二号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>二号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PZ.38(t)" class="flee-list"><cite><img alt="LT-381.jpg" src="http://p5.qhimg.com/t01c7aeb8e11748a20f.jpg" width="130" height="87" data-file-name="LT-381.jpg" data-file-width="130" data-file-height="87" /></cite><span>LT-38</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>斯大林格勒战役</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:190px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E6%96%AF%E5%A4%A7%E6%9E%97%E6%A0%BC%E5%8B%92%E6%88%98%E5%BD%B91.jpg" class="image"><img alt="斯大林格勒战役1.jpg" src="http://p2.qhimg.com/t01c368b2ec6860183a.jpg" width="188" height="132" class="thumbimage" data-file-name="斯大林格勒战役1.jpg" data-file-width="188" data-file-height="132" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E6%96%AF%E5%A4%A7%E6%9E%97%E6%A0%BC%E5%8B%92%E6%88%98%E5%BD%B91.jpg" class="internal" title="放大"></a></div></div></div></div><a href="/wwii/%E5%B7%B4%E5%B7%B4%E7%BD%97%E8%90%A8%E4%BD%9C%E6%88%98%E8%AE%A1%E5%88%92" title="巴巴罗萨作战计划" class="mw-redirect">巴巴罗萨作战计划</a>失败后，<a href="/wwii/%E5%B8%8C%E7%89%B9%E5%8B%92" title="希特勒" class="mw-redirect">希特勒</a>进攻苏联的雄心不减，他认为<a href="/wwii/%E6%96%AF%E5%A4%A7%E6%9E%97%E6%A0%BC%E5%8B%92" title="斯大林格勒">斯大林格勒</a>，这座以苏联现任领导者<a href="/wwii/%E6%96%AF%E5%A4%A7%E6%9E%97" title="斯大林" class="mw-redirect">斯大林</a>为名的城市，攻占它会使苏联人士气受到重挫，所以这个城市成为<a href="/wwii/%E5%B8%8C%E7%89%B9%E5%8B%92" title="希特勒" class="mw-redirect">希特勒</a>的进攻对象。德军靠着先进的战机，于开战初段攻下火车站、码头及西部的山区，更进逼市区。<a href="/wwii/%E6%96%AF%E5%A4%A7%E6%9E%97" title="斯大林" class="mw-redirect">斯大林</a>在1942年7月27日发布的第227号令规定...<a href="/wwii/%E6%96%AF%E5%A4%A7%E6%9E%97%E6%A0%BC%E5%8B%92%E6%88%98%E5%BD%B9" title="斯大林格勒战役">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_II/%E4%BA%8C%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="一号坦克1.jpg" src="http://p9.qhimg.com/t01fedc76c1761fea23.jpg" width="130" height="87" data-file-name="一号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>一号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/%E4%B8%80%E5%8F%B7%E5%96%B7%E7%81%AB%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="二号坦克1.jpg" src="http://p3.qhimg.com/t0144e002b7cfed79cc.jpg" width="130" height="87" data-file-name="二号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>二号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>库尔斯克会战</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:302px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E5%BA%93%E5%B0%94%E6%96%AF%E5%85%8B%E4%BC%9A%E6%88%981.jpg" class="image"><img alt="库尔斯克会战1.jpg" src="http://p8.qhimg.com/t01b92b34f1c6d54917.jpg" width="300" height="203" class="thumbimage" data-file-name="库尔斯克会战1.jpg" data-file-width="800" data-file-height="541" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E5%BA%93%E5%B0%94%E6%96%AF%E5%85%8B%E4%BC%9A%E6%88%981.jpg" class="internal" title="放大"></a></div></div></div></div>1943年1月，苏军在<a href="/wwii/%E6%96%AF%E5%A4%A7%E6%9E%97%E6%A0%BC%E5%8B%92%E6%88%98%E5%BD%B9" title="斯大林格勒战役">斯大林格勒战役</a>中取得了决定性胜利后，乘胜发动大规模红军参加的土星行动的一连串的进攻战役：沃罗涅日—哈尔科夫进攻战役、北高加索进攻战役、克拉斯诺达尔进攻战役、大卢基进攻战役，收复大量领土，但德军在败退的同时，德国南方集团军群司令曼施坦因元帅也开始计划向红军反扑。他主动放弃了一些重要据点...<a href="/wwii/%E5%BA%93%E5%B0%94%E6%96%AF%E5%85%8B%E4%BC%9A%E6%88%98" title="库尔斯克会战">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_V/%E4%BA%94%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%B1%B9%E5%BC%8F/%E9%BB%91%E8%B1%B9" class="flee-list"><cite><img alt="五号坦克1.jpg" src="http://p6.qhimg.com/t0198d329702b9b2275.jpg" width="130" height="87" data-file-name="五号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>五号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_VI/%E5%85%AD%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%99%8E%E5%BC%8F" class="flee-list"><cite><img alt="六号坦克1.jpg" src="http://p2.qhimg.com/t016451f52079aa1e1a.jpg" width="130" height="87" data-file-name="六号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>六号坦克</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>相关</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <a href="/wwii/%E6%B3%A2%E5%85%B0%E6%88%98%E5%BD%B9" title="波兰战役">波兰战役</a>、<a href="/wwii/%E5%81%87%E6%88%98" title="假战">假战</a>、<a href="/wwii/%E5%8D%8E%E6%B2%99%E4%BF%9D%E5%8D%AB%E6%88%98" title="华沙保卫战">华沙保卫战</a>、<a href="/wwii/%E8%8B%8F%E8%8A%AC%E6%88%98%E4%BA%89" title="苏芬战争">苏芬战争</a>、<a href="/wwii/%E5%A8%81%E7%91%9F%E6%BC%94%E4%B9%A0%E4%BD%9C%E6%88%98" title="威瑟演习作战">威瑟演习作战</a>、<a href="/wwii/%E8%8D%B7%E5%85%B0%E6%88%98%E5%BD%B9" title="荷兰战役">荷兰战役</a>、<a href="/wwii/%E6%AF%94%E5%88%A9%E6%97%B6%E6%88%98%E5%BD%B9" title="比利时战役">比利时战役</a>、<a href="/wwii/%E6%B3%95%E5%9B%BD%E6%88%98%E5%BD%B9" title="法国战役">法国战役(西线闪击战)</a>、<a href="/wwii/%E4%B8%8D%E5%88%97%E9%A2%A0%E7%A9%BA%E6%88%98" title="不列颠空战" class="mw-redirect">不列颠空战</a>、<a href="/wwii/%E5%B7%B4%E5%B0%94%E5%B9%B2%E6%88%98%E5%BD%B9" title="巴尔干战役">巴尔干战役</a>、<a href="/wwii/index.php?title=%E5%B7%B4%E5%B7%B4%E7%BD%97%E8%90%A8%E8%AE%A1%E5%88%92&amp;action=edit&amp;redlink=1" class="new" title="巴巴罗萨计划（页面不存在）">巴巴罗萨计划</a>、<a href="/wwii/%E7%BB%A7%E7%BB%AD%E6%88%98%E4%BA%89" title="继续战争">继续战争</a>、<a href="/wwii/%E5%9F%BA%E8%BE%85%E6%88%98%E5%BD%B9" title="基辅战役">基辅战役</a>、<a href="/wwii/%E5%88%97%E5%AE%81%E6%A0%BC%E5%8B%92%E4%BC%9A%E6%88%98" title="列宁格勒会战">列宁格勒围城战</a>、<a href="/wwii/%E8%8E%AB%E6%96%AF%E7%A7%91%E4%BC%9A%E6%88%98" title="莫斯科会战">莫斯科战役</a>、<a href="/wwii/%E5%A1%9E%E7%93%A6%E6%96%AF%E6%89%98%E6%B3%A2%E5%B0%94%E5%9B%B4%E5%9F%8E%E6%88%98" title="塞瓦斯托波尔围城战">塞瓦斯托波尔围城战</a>、<a href="/wwii/%E8%93%9D%E8%89%B2%E6%96%B9%E6%A1%88" title="蓝色方案">蓝色行动</a>、<a href="/wwii/%E6%96%AF%E5%A4%A7%E6%9E%97%E6%A0%BC%E5%8B%92%E4%BC%9A%E6%88%98" title="斯大林格勒会战">斯大林格勒战役</a>、<a href="/wwii/%E5%BA%93%E5%B0%94%E6%96%AF%E5%85%8B%E4%BC%9A%E6%88%98" title="库尔斯克会战">库尔斯克会战</a>、<a href="/wwii/%E9%A9%AC%E5%A1%94%E6%BD%98%E8%A7%92%E6%B5%B7%E6%88%98" title="马塔潘角海战">马塔潘角海战</a>、<a href="/wwii/%E5%A4%A7%E8%A5%BF%E6%B4%8B%E6%B5%B7%E6%88%98" title="大西洋海战">大西洋壁垒</a>
                                                            </td></tr></table>
                                                </div>
                                            </div>
                                            <div class="u-t-box u-j-box">
                                                <div class="u-tab-menu">
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>西西里岛登陆战役</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:190px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E8%A5%BF%E8%A5%BF%E9%87%8C%E5%B2%9B%E7%99%BB%E9%99%86%E6%88%98%E5%BD%B9.jpg" class="image"><img alt="西西里岛登陆战役.jpg" src="http://p6.qhimg.com/t0155cd8c7a49b02ab9.jpg" width="188" height="138" class="thumbimage" data-file-name="西西里岛登陆战役.jpg" data-file-width="188" data-file-height="138" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E8%A5%BF%E8%A5%BF%E9%87%8C%E5%B2%9B%E7%99%BB%E9%99%86%E6%88%98%E5%BD%B9.jpg" class="internal" title="放大"></a></div></div></div></div>盟军占领北非后，利用其优势进入欧洲。1943年7月10日，盟军最先攻击了意大利的西西..<a href="/wwii/%E8%A5%BF%E8%A5%BF%E9%87%8C%E5%B2%9B%E7%99%BB%E9%99%86%E6%88%98%E5%BD%B9" title="西西里岛登陆战役">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_VI/%E5%85%AD%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%99%8E%E5%BC%8F" class="flee-list"><cite><img alt="六号坦克1.jpg" src="http://p2.qhimg.com/t016451f52079aa1e1a.jpg" width="130" height="87" data-file-name="六号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>六号坦克</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>入侵意大利</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:190px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E5%85%A5%E4%BE%B5%E6%84%8F%E5%A4%A7%E5%88%A9.jpg" class="image"><img alt="入侵意大利.jpg" src="http://p3.qhimg.com/t0191d0feb128e735e9.jpg" width="188" height="138" class="thumbimage" data-file-name="入侵意大利.jpg" data-file-width="188" data-file-height="138" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E5%85%A5%E4%BE%B5%E6%84%8F%E5%A4%A7%E5%88%A9.jpg" class="internal" title="放大"></a></div></div></div></div>入侵意大利是指第二次世界大战中盟军在1943年9月入侵意大利本土的军事行动，该行动...<a href="/wwii/%E5%85%A5%E4%BE%B5%E6%84%8F%E5%A4%A7%E5%88%A9" title="入侵意大利">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>诺曼底登陆</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <div class="thumb tleft"><div class="thumbinner" style="width:290px;"><a href="/wwii/%E6%96%87%E4%BB%B6:%E8%AF%BA%E6%9B%BC%E5%BA%95%E7%99%BB%E9%99%86.jpg" class="image"><img alt="诺曼底登陆.jpg" src="http://p2.qhimg.com/t010e92dc674057388e.jpg" width="288" height="221" class="thumbimage" data-file-name="诺曼底登陆.jpg" data-file-width="288" data-file-height="221" /></a>  <div class="thumbcaption"><div class="magnify"><a href="/wwii/%E6%96%87%E4%BB%B6:%E8%AF%BA%E6%9B%BC%E5%BA%95%E7%99%BB%E9%99%86.jpg" class="internal" title="放大"></a></div></div></div></div>诺曼底登陆是第二次世界大战中盟军在欧洲西线战场发起的一场大规模攻势，战役发生...<a href="/wwii/%E8%AF%BA%E6%9B%BC%E5%BA%95%E7%99%BB%E9%99%86" title="诺曼底登陆">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_V/%E4%BA%94%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%B1%B9%E5%BC%8F/%E9%BB%91%E8%B1%B9" class="flee-list"><cite><img alt="五号坦克1.jpg" src="http://p6.qhimg.com/t0198d329702b9b2275.jpg" width="130" height="87" data-file-name="五号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>五号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_VI/%E5%85%AD%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%99%8E%E5%BC%8F" class="flee-list"><cite><img alt="六号坦克1.jpg" src="http://p2.qhimg.com/t016451f52079aa1e1a.jpg" width="130" height="87" data-file-name="六号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>六号坦克</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>朱诺海滩</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> 朱诺海滩由加拿大第一军第三步兵师们负责攻占。而海滩德军兵力为一个主由俘虏俄罗斯人和波兰人组成，士气相当低落且战斗力也较差的组成团。不过加军的作战也并非一帆风顺，恶劣的天气使登陆涨潮时登陆，令登陆艇在卸下人员返航时却有很多因触雷被炸沉，并正处涨潮，很多士兵下水后因装备过重而溺死。盟军在朱诺海滩共损失2000余人，但仍然成功占领。..<a href="/wwii/%E6%9C%B1%E8%AF%BA%E6%B5%B7%E6%BB%A9" title="朱诺海滩">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>黄金海滩</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> 负责攻占黄金海滩的是英军第三十军第五十师。由于登陆时间较晚，英军的火力准备非常充足，德军的几个主要火力点在登陆前就被舰炮摧毁。英军的水陆坦克被登陆舰直接送上海滩，避免了有如美军在奥马哈的损失。在舰炮和坦克的掩护下，步兵推进非常顺利，在火力支援下攻占了贝辛港。盟军在黄金海滩损失了约1500名士兵，但依然成功占领。..<a href="/wwii/%E9%BB%84%E9%87%91%E6%B5%B7%E6%BB%A9" title="黄金海滩">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>奥马哈海滩</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> 盟军在奥马哈海滩遭受了巨大的损失，仅阵亡者就达2500人， 奥马哈海滩全长6.4千米，海岸多为30余米高的峭壁，地形易守难攻。这里的登陆作战任务由美军第九军承担。盟军误认为这里的德军守备部队只有一个团的兵力，没有装甲车辆，战斗力很差。而实际上<a href="/wwii/%E9%9A%86%E7%BE%8E%E5%B0%94" title="隆美尔" class="mw-redirect">隆美尔</a>在3月将德军精锐352步兵师全部调往诺曼底，而352师的一个主力团就驻守在奥马哈滩头。登陆作战开始后也非常不顺，海滩西段预备的32辆水陆坦克中有27辆...<a href="/wwii/%E5%A5%A5%E9%A9%AC%E5%93%88%E6%B5%B7%E6%BB%A9" title="奥马哈海滩">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>犹他海滩</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> 犹他海滩由美军第七军第四师负责攻占。由于得到了非常有效的火力支援，水陆坦克也在上岸时也没有受到大量损失，所以登陆作战异常顺利。美军六时三十分登陆开始，至十时已基本肃清德军守军。美军在犹他海滩仅阵亡197人，还不到预计的10%，是所有5个海滩中损失最小的。...<a href="/wwii/%E7%8A%B9%E4%BB%96%E6%B5%B7%E6%BB%A9" title="犹他海滩">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>相关</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <a href="/wwii/%E6%96%AF%E6%91%A9%E6%A3%B1%E6%96%AF%E5%85%8B%E6%88%98%E5%BD%B9_(1943%E5%B9%B4)" title="斯摩棱斯克战役 (1943年)">斯摩棱斯克战役</a>、<a href="/wwii/%E4%B8%8B%E7%AC%AC%E8%81%82%E4%BC%AF%E6%B2%B3%E6%94%BB%E5%8A%BF" title="下第聂伯河攻势">下第聂伯河攻势</a>、<a href="/wwii/%E7%BA%B3%E5%B0%94%E7%93%A6%E6%88%98%E5%BD%B9" title="纳尔瓦战役">纳尔瓦战役</a>、<a href="/wwii/%E7%A7%91%E5%B0%94%E9%80%8A-%E5%A5%91%E5%B0%94%E5%8D%A1%E5%A1%9E%E6%94%BB%E5%8A%BF" title="科尔逊-契尔卡塞攻势">科尔逊-契尔卡塞攻势</a>、<a href="/wwii/%E5%B7%B4%E6%A0%BC%E6%8B%89%E5%9F%BA%E6%98%82%E8%A1%8C%E5%8A%A8" title="巴格拉基昂行动" class="mw-redirect">巴格拉基昂行动</a>、<a href="/wwii/%E5%88%A9%E6%B2%83%E5%A4%AB-%E6%A1%91%E5%A4%9A%E6%A2%85%E6%97%A5%E6%94%BB%E5%8A%BF" title="利沃夫-桑多梅日攻势">利沃夫-桑多梅日攻势</a>、<a href="/wwii/%E5%8D%8E%E6%B2%99%E8%B5%B7%E4%B9%89" title="华沙起义">华沙起义</a>、<a href="/wwii/%E9%9B%85%E8%A5%BF-%E5%A5%87%E8%A5%BF%E7%91%99%E6%94%BB%E5%8A%BF_(1944%E5%B9%B48%E6%9C%88)" title="雅西-奇西瑙攻势 (1944年8月)">雅西-奇西瑙攻势</a>、<a href="/wwii/%E8%B4%9D%E5%B0%94%E6%A0%BC%E8%8E%B1%E5%BE%B7%E6%94%BB%E5%8A%BF" title="贝尔格莱德攻势">贝尔格莱德攻势</a>、<a href="/wwii/%E8%A7%A3%E6%94%BE%E5%B7%B4%E9%BB%8E" title="解放巴黎">解放巴黎</a>、<a href="/wwii/%E8%A5%BF%E8%A5%BF%E9%87%8C%E5%B2%9B%E7%99%BB%E9%99%86%E6%88%98%E5%BD%B9" title="西西里岛登陆战役">西西里登陆</a>、<a href="/wwii/%E5%85%A5%E4%BE%B5%E6%84%8F%E5%A4%A7%E5%88%A9" title="入侵意大利">入侵意大利</a>、<a href="/wwii/%E8%BF%AA%E8%80%B6%E6%99%AE%E6%88%98%E5%BD%B9" title="迪耶普战役">迪耶普战役</a>、<a href="/wwii/%E8%AF%BA%E6%9B%BC%E5%BA%95%E6%88%98%E5%BD%B9" title="诺曼底战役">诺曼底登陆</a>。
                                                            </td></tr></table>
                                                </div>
                                            </div>
                                            <div class="u-t-box u-j-box">
                                                <div class="u-tab-menu">
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>盟军反攻</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <a href="/wwii/%E8%AF%BA%E6%9B%BC%E5%BA%95%E7%99%BB%E9%99%86" title="诺曼底登陆">诺曼底登陆</a>成功后，盟军再于1944年8月15日发动<a href="/wwii/%E9%BE%99%E9%AA%91%E5%85%B5%E8%A1%8C%E5%8A%A8" title="龙骑兵行动">龙骑兵行动</a>，从法国南部发起攻击。到9月，三组盟军部队已经抵达德国边境，并目标战争在1944年年终就可结束。为了实现该目标，盟军发动了<a href="/wwii/%E5%B8%82%E5%9C%BA%E8%8A%B1%E5%9B%AD%E8%A1%8C%E5%8A%A8" title="市场花园行动">市场花园行动</a>，试图解放荷兰北部地区并进入德国，但是德军的力量比想象中显示要强得多，令英国第一空降师几乎全军覆没。1944年的冬天以及盟军所遇到的困境令西线战局处于僵局。美军在赫尔根森林战役中试图..<a href="/wwii/%E7%9B%9F%E5%86%9B%E5%8F%8D%E6%94%BB" title="盟军反攻">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>突出部之役</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> 当时同盟国媒体原依战役爆发所地称阿登战役或亚尔丁之役，但盟军将士依作战经过称之为突出部之役，而德国B集团军群则称之为守望莱茵河作战），发生于1944年12月16日到1945年1月25日，是指纳粹德国于二战末期在欧洲西线战场比利时瓦隆的阿登地区发动的攻势。此次战役与一些次作战协调进行，其中包括地板行动（Operation Bodenplatte）和狮鹫行动（Operation Greif）等。德军此次作战目标是突破英美盟军战线并将其一分为二、占领安特卫普...<a href="/wwii/%E7%AA%81%E5%87%BA%E9%83%A8%E4%B9%8B%E5%BD%B9" title="突出部之役">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_V/%E4%BA%94%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%B1%B9%E5%BC%8F/%E9%BB%91%E8%B1%B9" class="flee-list"><cite><img alt="五号坦克1.jpg" src="http://p6.qhimg.com/t0198d329702b9b2275.jpg" width="130" height="87" data-file-name="五号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>五号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_VI/%E5%85%AD%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%99%8E%E5%BC%8F" class="flee-list"><cite><img alt="六号坦克1.jpg" src="http://p2.qhimg.com/t016451f52079aa1e1a.jpg" width="130" height="87" data-file-name="六号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>六号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PZ.38(t)" class="flee-list"><cite><img alt="LT-381.jpg" src="http://p5.qhimg.com/t01c7aeb8e11748a20f.jpg" width="130" height="87" data-file-name="LT-381.jpg" data-file-width="130" data-file-height="87" /></cite><span>LT-38</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>巴格拉基昂作战</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> 响应盟军在西线的成功，苏联于1944年开始，发动巴格拉基昂作战，罗马尼亚和保加利亚被迫投降并向德国宣战。另外德军损失了布达佩斯和剩余匈牙利的大部分。现在通往波兰平原的门已为苏联红军打开。苏联指挥官们，在华沙起义中袖手旁观之后，终在1945年1月夺取华沙。三日之后，四个红军方面军组成一道宽阔的前线，由华沙越过纳雷夫河展开攻势。四日后红军成功突破并以每天30至40公里的速度...<a href="/wwii/%E5%B7%B4%E6%A0%BC%E6%8B%89%E5%9F%BA%E6%98%82%E4%BD%9C%E6%88%98" title="巴格拉基昂作战">查看全文</a>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>进攻柏林</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> 柏林城内由德军和党卫军残余份子、警察、希特勒青年团和国民自卫队防御，国民自卫队由一些一战老兵和曾经参军的人所组成。柏林西部有第20机械化步兵师，北部有第9空降师，东北部有"慕钦堡"装甲师，东南部有党卫军第11"北欧"志愿装甲掷弹兵师，中心1地区有第18装甲掷弹兵师。国会大厦、毛德桥, 亚历山大广场与哈维尔桥都是战斗最激烈的地方，党卫军外籍军团的战斗格外激烈，他们都...<a href="/wwii/%E8%BF%9B%E6%94%BB%E6%9F%8F%E6%9E%97" title="进攻柏林">查看全文</a>
                                                                <table class="mw-collapsible mw-collapsed wikitable">

                                                                    <tr>
                                                                        <th> <span style="float:left;"><b>德国部分参战坦克</b></span>
                                                                        </th></tr>
                                                                    <tr>
                                                                        <td> <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_III/%E4%B8%89%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="三号坦克1.jpg" src="http://p1.qhimg.com/t012eecffd7ccb8809d.jpg" width="130" height="87" data-file-name="三号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>三号坦克</span></a>
                                                                            <p><a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_%E2%85%A3/%E5%9B%9B%E5%8F%B7%E5%9D%A6%E5%85%8B" class="flee-list"><cite><img alt="四号坦克1.jpg" src="http://p6.qhimg.com/t01a92ca97dfc1255f5.jpg" width="130" height="87" data-file-name="四号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>四号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_V/%E4%BA%94%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%B1%B9%E5%BC%8F/%E9%BB%91%E8%B1%B9" class="flee-list"><cite><img alt="五号坦克1.jpg" src="http://p6.qhimg.com/t0198d329702b9b2275.jpg" width="130" height="87" data-file-name="五号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>五号坦克</span></a>
                                                                                <a href="http&#58;//wiki.joyme.com/wwii/PzKpfw_VI/%E5%85%AD%E5%8F%B7%E5%9D%A6%E5%85%8B/%E8%99%8E%E5%BC%8F" class="flee-list"><cite><img alt="六号坦克1.jpg" src="http://p2.qhimg.com/t016451f52079aa1e1a.jpg" width="130" height="87" data-file-name="六号坦克1.jpg" data-file-width="130" data-file-height="87" /></cite><span>六号坦克</span></a>
                                                                            </p>
                                                                        </td></tr></table>
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>影响</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> 这场战争是欧洲历史上破坏性最强的战争之一。大约有5,000万人参战，2,000万左右的人丧生，3,000万左右的人受伤。战争造成了严重的经济损失。英、法两国因军费太重，及被德军的长期轰炸，令两国经济受损，而世界金融中心也由伦敦移到纽约。战争后出现苏联和美国两个超级大国形成冷战，德国更被分为东德(由苏联控制)及西德(由盟军控制)，成为冷战的高峰。
                                                            </td></tr></table>
                                                    <table class="mw-collapsible mw-collapsed wikitable">

                                                        <tr>
                                                            <th> <span style="float:left;"><b>相关</b></span>
                                                            </th></tr>
                                                        <tr>
                                                            <td> <a href="/wwii/%E6%8B%89%E5%B8%83%E5%85%B0%E6%88%98%E4%BA%89" title="拉布兰战争">拉布兰战争</a>、<a href="/wwii/%E9%BE%99%E9%AA%91%E5%85%B5%E8%A1%8C%E5%8A%A8" title="龙骑兵行动">龙骑兵行动</a>、<a href="/wwii/%E5%B8%82%E5%9C%BA%E8%8A%B1%E5%9B%AD%E8%A1%8C%E5%8A%A8" title="市场花园行动">市场花园行动</a>、<a href="/wwii/%E7%AA%81%E5%87%BA%E9%83%A8%E4%B9%8B%E5%BD%B9" title="突出部之役">突出部之役</a>、<a href="/wwii/%E7%BB%B4%E6%96%AF%E7%93%A6%E6%B2%B3-%E5%A5%A5%E5%BE%B7%E6%B2%B3%E6%94%BB%E5%8A%BF" title="维斯瓦河-奥德河攻势">维斯瓦河-奥德河攻势</a>、<a href="/wwii/%E6%9F%8F%E6%9E%97%E6%88%98%E5%BD%B9" title="柏林战役">柏林战役</a>、<a href="/wwii/%E5%B8%83%E6%8B%89%E6%A0%BC%E6%94%BB%E5%8A%BF" title="布拉格攻势">布拉格攻势</a>、<a href="/wwii/%E5%B8%83%E8%BE%BE%E4%BD%A9%E6%96%AF%E6%88%98%E5%BD%B9" title="布达佩斯战役" class="mw-redirect">布达佩斯战役</a>、<a href="/wwii/%E5%B7%B4%E6%A0%BC%E6%8B%89%E5%9F%BA%E6%98%82%E8%A1%8C%E5%8A%A8" title="巴格拉基昂行动" class="mw-redirect">巴格拉基昂行动</a>、希特勒青年团、爱娃布劳恩、第二次世界大战欧洲战场的结束
                                                            </td></tr></table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>

                            <div class="WWII-clumn">
                                <div class="WWII-clumn-title title-left">军事之最</div>
                                <div class="WWII-clumn-content">
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最大一战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> <a href="/wwii/%E5%BA%93%E5%B0%94%E6%96%AF%E5%85%8B%E4%BC%9A%E6%88%98" title="库尔斯克会战">库尔斯克会战</a>，交战地域双方兵力合计400万。苏军方面更是超级人海的5大方面军汇集。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最大坦克战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> <a href="/wwii/%E5%BA%93%E5%B0%94%E6%96%AF%E5%85%8B%E4%BC%9A%E6%88%98" title="库尔斯克会战">库尔斯克会战</a>，在普罗霍夫卡村，双方合计超过1200辆坦克自行火炮同时交战。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最大海战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 1944年10月22日，太平洋美军在<a href="/wwii/%E8%8E%B1%E7%89%B9%E6%B9%BE%E6%B5%B7%E6%88%98" title="莱特湾海战">莱特湾</a>与日本海军的交战。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最大空战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> <a href="/wwii/%E4%B8%8D%E5%88%97%E9%A2%A0%E7%A9%BA%E6%88%98" title="不列颠空战" class="mw-redirect">不列颠空战</a>。1940年7月16日，希特勒下达了登陆英国的指令<a href="/wwii/%E6%B5%B7%E7%8B%AE%E8%AE%A1%E5%88%92" title="海狮计划">“海狮”行动</a>，首先是消灭英空军，夺得战略制空权，二战最大规模的空战开始。10个月中，不列颠空中数以千计的战机殊死鏖战，终使德军首次失败，二战开始转折
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最惨烈的巷战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> <a href="/wwii/%E6%9F%8F%E6%9E%97%E6%88%98%E5%BD%B9" title="柏林战役">柏林之战</a>。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最大的包围战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 1941年8月30日至1944年1月27日，德军包围<a href="/wwii/%E5%88%97%E5%AE%81%E6%A0%BC%E5%8B%92%E4%BC%9A%E6%88%98" title="列宁格勒会战">列宁格勒</a>，长达880天。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最大登陆战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 诺曼底的<a href="/wwii/%E8%AF%BA%E6%9B%BC%E5%BA%95%E6%88%98%E5%BD%B9" title="诺曼底战役">霸王作战</a>，首日17万盟军部队上岸。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最大的空降作战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> “市场-花园”计划。1944年6月，盟军<a href="/wwii/%E8%AF%BA%E6%9B%BC%E5%BA%95%E6%88%98%E5%BD%B9" title="诺曼底战役">登陆诺曼底</a>开辟第二战场后，为尽快击败纳粹德国，英国的<a href="/wwii/%E8%92%99%E5%93%A5%E9%A9%AC%E5%88%A9" title="蒙哥马利" class="mw-redirect">蒙哥马利</a>元帅提出了“市场-花园”作战行动计划。二战期间盟军最大规模的空降作战<a href="/wwii/%E5%B8%82%E5%9C%BA%E8%8A%B1%E5%9B%AD%E8%A1%8C%E5%8A%A8" title="市场花园行动">“市场-花园”行动</a>这一行动旨在夺取跨越莱茵河、瓦尔河等河流上的一系列重要桥梁后，从荷兰直插德国腹地，争取在1944年结束欧洲战场作战。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最长战役</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> <a href="/wwii/%E5%A4%A7%E8%A5%BF%E6%B4%8B%E6%B5%B7%E6%88%98" title="大西洋海战">大西洋海战</a>，从1939一直到1944底。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最顽强防御战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> <a href="/wwii/%E5%88%97%E5%AE%81%E6%A0%BC%E5%8B%92%E4%BC%9A%E6%88%98" title="列宁格勒会战">列宁格勒保卫战</a>，持续900天。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最惨烈的保卫战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> <a href="/wwii/%E5%88%97%E5%AE%81%E6%A0%BC%E5%8B%92%E4%BC%9A%E6%88%98" title="列宁格勒会战">列宁格勒保卫战</a>，德军战死30多万人，苏军一直对死亡人数保密，据后来披露战死人数在40万人以上。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最快进攻战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 远东进攻战，苏军每日前进70公里。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最猛烈的空中火力支援</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 英军在卡昂附近的古德伍德作战：出动1000架次以上的重轰炸机就为了在一个小镇附近开辟突破线，英国人真有钱！
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最后一战</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 红军在发动<a href="/wwii/%E6%9F%8F%E6%9E%97%E6%88%98%E5%BD%B9" title="柏林战役">柏林战役</a>时动用250万官兵，41600火炮和迫击炮，6250坦克和自行火炮外加7500架飞机的超豪华阵容。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最大的撤退</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> <a href="/wwii/%E6%95%A6%E5%88%BB%E5%B0%94%E5%85%8B%E5%A4%A7%E6%92%A4%E9%80%80" title="敦刻尔克大撤退">敦刻尔克大撤退</a>，33万英法部队逃到了英国，丢弃了所有重装备。有了这批士兵，英国依靠这些有战斗经验的士兵才防止了纳粹可能的登陆。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>最无能的领袖</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 当推<a href="/wwii/%E5%A2%A8%E7%B4%A2%E9%87%8C%E5%B0%BC" title="墨索里尼" class="mw-redirect">墨索里尼</a>老大，他手下的意大利帅哥们打起仗来漫不经心，实在使各位领导没脾气。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>牺牲最大的国家</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 苏联，2800万伤亡。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>参战最早的国家</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 中国vs日本
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>战后收获最大的国家</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 苏联，获得了波罗的海沿岸的出海口，长期霸占了旅顺港，把东欧变成了自己的傀儡，实现了历届沙皇都梦想的辉煌。最高苏维埃给约大叔加个大帝的头衔也不为过。
                                            </td></tr></table>
                                    <table class="mw-collapsible mw-collapsed wikitable">

                                        <tr>
                                            <th> <span style="float:left;"><b>被收拾得最惨的国家</b></span>
                                            </th></tr>
                                        <tr>
                                            <td> 德国:丢掉了东普鲁士和波美拉尼亚，长期被占领，被分割为两个国家，时刻挡心自己成为核战场（北约计划对苏军进攻实施核反击)
                                            </td></tr></table>
                                </div>
                            </div>

                        </div>
                        <div class="main-right">
                            <div class="WWII-clumn">
                                <div class="WWII-clumn-title title-right">本月优秀用户</div>
                                <div class="WWII-clumn-right"><span class="men-right"></span>
                                    <li>用户名：zzy&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp声望：941</li><li></li>
                                </div>
                            </div>

                            <div class="WWII-clumn">
                                <div class="WWII-clumn-title title-right">进入论坛</div>
                                <div class="WWII-clumn-right" style="text-align: center"><span class="men-right"></span>
                                    <a class="btn btn-warning btn-lg" href="/view/home.jsp" role="button">进入论坛</a>
                                </div>
                            </div>

                            <div class="WWII-clumn">
                                <div class="WWII-clumn-title title-right">军事图片</div>
                                <div class="WWII-clumn-right"><span class="men-right"></span><table width="100%" style="text-align: center;" cellspacing="0" cellpadding="0">

                                    <div class="center"><div class="thumb tnone"><div class="thumbinner" style="width:262px;"><img alt="" src="/static/image/militaryinfo/j20.jpg" width="260" height="298" class="thumbimage" /></a>  <div class="thumbcaption"><div class="magnify"></div>歼-20是中航工业成都飞机工业集团公司研制的一款具备高隐身性、高态势感知、高机动性等能力的隐形第五代战斗机。</div></div></div></div>

                                    <div class="center"><div class="thumb tnone"><div class="thumbinner" style="width:262px;"><img alt="" src="/static/image/militaryinfo/dongfeng.jpg" width="260" height="192" class="thumbimage" />  <div class="thumbcaption"><div class="magnify"></div>东风系列导弹（俗称“东风快递”），是中华人民共和国一系列近程、中远程和洲际弹道导弹。这一系列的导弹编号为“DF-？”形式，如东风-1号又写作DF-1。</div></div></div></div>

                                    <div class="center"><div class="thumb tnone"><div class="thumbinner" style="width:262px;"><img alt="" src="/static/image/militaryinfo/055.jpg" width="260" height="277" class="thumbimage" />  <div class="thumbcaption"><div class="magnify"></div>055型驱逐舰是中国船舶重工集团701研究所设计、江南造船厂与大连造船厂共同承建的、装备新型有源相控阵雷达的新型舰队防空驱逐舰。</div></div></div></div>

                                </table>
                                </div>
                            </div>
                        </div></div>


                    </div></div>

        <!-- bodyContent内容区 结束-->
        </section>
        <!-- 内容区 结束-->
        <!-- 分类 -->
        <section id="content-after-block" class="joymewiki-block">
            <!-- catlinks -->
            <div id="catlinks" class="catlinks" data-mw="interface"><div id="mw-normal-catlinks" class="mw-normal-catlinks"><a href="/wwii/%E7%89%B9%E6%AE%8A:%E9%A1%B5%E9%9D%A2%E5%88%86%E7%B1%BB" title="特殊:页面分类">分类</a>：<ul><li><a href="/wwii/index.php?title=%E5%88%86%E7%B1%BB:%E6%9C%89%E6%8A%95%E7%A5%A8%E7%9A%84%E9%A1%B5%E9%9D%A2&amp;action=edit&amp;redlink=1" class="new" title="分类:有投票的页面（页面不存在）">有投票的页面</a></li></ul></div></div>						<!-- /catlinks -->
            <!-- 脚注 -->
            <!-- printfooter -->
            <div class="printfooter">
                取自“<a dir="ltr" href="http://wiki.joyme.com/wwii/index.php?title=首页&amp;oldid=17997">http://wiki.joyme.com/wwii/index.php?title=首页&amp;oldid=17997</a>”						</div>
            <!-- /printfooter -->
        </section>

        <div class="visualClear"></div>

    </div>

</div>
</div>
<!-- WIKI区 结束-->

<div class="toc-mengceng"></div>
<div class="share-right">
    <!--a target="_blank" href="http://app.joyme.com/" class="erwei-ma"></a-->
    <div class="bdsharebuttonbox" data-tag="share_1">
        <a class="bds_qzone" data-cmd="qzone" href="#"></a>
        <a class="bds_sqq" data-cmd="sqq"></a>
        <a class="bds_tsina" data-cmd="tsina"></a>
        <a class="bds_weixin" data-cmd="weixin"></a>
        <a class="bds_tieba" data-cmd="tieba"></a>
        <a class="top-icon" href="#"></a>
    </div>
    <script>
        window._bd_share_config = {
            "common": {
                "bdSnsKey": {},
                "bdText": "",
                "bdMini": "2",
                "bdMiniList": false,
                "bdPic": "",
                "bdStyle": "0",
                "bdSize": "24"
            },
            "share": {}
        };

        //以下为js加载部分
        with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];
    </script>
</div>
<script>(window.RLQ=window.RLQ||[]).push(function(){mw.loader.state({"ext.jcomments.hot.js":"loading","user":"ready","user.groups":"ready"});mw.loader.load("http://wikicdn.joyme.com/wwii/load.php?debug=false\u0026lang=zh-hans\u0026modules=ext.jcomments.hot.js\u0026only=scripts\u0026skin=mediawikibootstrap1");mw.loader.load(["ext.ajaxpoll","ext.smw.tooltips","mediawiki.action.view.postEdit","site","mediawiki.user","mediawiki.page.ready","mediawiki.searchSuggest","mediawiki.page.watch.ajax","ext.QUser","ext.QDas","mmv.bootstrap.autostart","ext.visualEditor.targetLoader"]);});</script>
<link rel="stylesheet" type="text/css" href="//static.joyme.com/pc/cms/jmsy/logincont/login201611.css">
<script type="text/javascript" src="//s0.qhimg.com/lib/jquery/191.js"></script>
<script type="text/javascript" src="http://js.passport.qihucdn.com/5.0.3.js"></script><script>(window.RLQ=window.RLQ||[]).push(function(){mw.config.set({"wgBackendResponseTime":1816});});</script>

</script>

</body>
</html>

