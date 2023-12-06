<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<link rel="apple-touch-icon" sizes="180x180" href="<c:url value="/resources/assets/img/favicons/logo.png"/>">
<link rel="apple-touch-icon" sizes="180x180" href="<c:url value="/resources/assets/img/favicons/logo.png"/>">
<link rel="icon" type="image/png" sizes="32x32" href="<c:url value="/resources/assets/img/favicons/logo.png"/>">
<link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/resources/assets/img/favicons/logo.png"/>">
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/assets/img/favicons/logo.png"/>">
<meta name="msapplication-TileImage" content="<c:url value="/resources/assets/img/favicons/mstile-150x150.png"/>">
<meta name="theme-color" content="#ffffff">
<script src="<c:url value="/resources/vendors/imagesloaded/imagesloaded.pkgd.min.js"/>"></script>
<script src="<c:url value="/resources/vendors/simplebar/simplebar.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/config.js"/>"></script>
<link rel="preconnect" href="https://fonts.googleapis.com/">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&amp;display=swap" rel="stylesheet">
<link href="<c:url value="/resources/vendors/simplebar/simplebar.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/assets/css/theme-rtl.min.css"/>" type="text/css" rel="stylesheet" id="style-rtl">
<link href="<c:url value="/resources/assets/css/theme.min.css"/>" type="text/css" rel="stylesheet" id="style-default">
<link href="<c:url value="/resources/assets/css/user-rtl.min.css"/>" type="text/css" rel="stylesheet" id="user-style-rtl">
<link href="<c:url value="/resources/assets/css/user.min.css"/>" type="text/css" rel="stylesheet" id="user-style-default">
<script>
    let phoenixIsRTL = window.config.config.phoenixIsRTL;
    if (phoenixIsRTL) {
        let linkDefault = document.getElementById('style-default');
        let userLinkDefault = document.getElementById('user-style-default');
        linkDefault.setAttribute('disabled', true);
        userLinkDefault.setAttribute('disabled', true);
        document.querySelector('html').setAttribute('dir', 'rtl');
    } else {
        let linkRTL = document.getElementById('style-rtl');
        let userLinkRTL = document.getElementById('user-style-rtl');
        linkRTL.setAttribute('disabled', true);
        userLinkRTL.setAttribute('disabled', true);
    }
</script>
<link href="<c:url value="/resources/vendors/swiper/swiper-bundle.min.css"/>" rel="stylesheet">