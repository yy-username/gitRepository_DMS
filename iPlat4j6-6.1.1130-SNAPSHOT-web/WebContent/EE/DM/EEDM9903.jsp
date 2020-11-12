<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ace" tagdir="/WEB-INF/tags/ace" %>
<c:set var="ctx" value="<%=request.getContextPath()%>"/>
<html>
<head>
    <jsp:include page="../../common/header.jsp"/>
    <link rel="stylesheet" href="${ctx}/ace/assets/css/font-awesome.min.css"/>
</head>
<body class="no-skin">
<jsp:include page="../../common/nav.jsp"/>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>
    <jsp:include page="../../common/left.jsp"/>

    <div class="main-content" style="margin-left: 100 !important;">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul>
        </div>
        <div class="page-content">
            <div id="tree1" class="tree"></div>
        </div>

    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>

</div>

<jsp:include page="../../common/footer.jsp"/>
<script src="${ctx}/iplat-ui/plugins/tools.js"></script>
<script>
    jQuery(function ($) {
        initTree("tree1", {
            dataSource: new TreeDataSource({
                url: "${ctx}/data/getData.jsp",
                data: {service: "EEDMTree", method: "query"}
            }) });
    });
</script>


</body>
</html>
