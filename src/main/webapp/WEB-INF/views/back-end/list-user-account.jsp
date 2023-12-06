<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: hoaht
  Date: 12/4/2023
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List User Account</title>
    <jsp:include page="css-js/import-css.jsp"/>
</head>
<body>
<main class="main" id="top">
    <jsp:include page="layout/navigation.jsp"/>

    <jsp:include page="layout/header-nav.jsp"/>

    <div class="content">
        <div class="mb-9">
            <div class="row g-2 mb-4">
                <div class="col-auto">
                    <h2 class="mb-0">Accounts</h2>
                </div>
            </div>
            <ul class="nav nav-links mb-3 mb-lg-2 mx-n3">
                <li class="nav-item">
                    <a class="nav-link ${account_user}" aria-current="page" href="${pageContext.request.contextPath}/admin/account-user">All <span class="text-700 fw-semi-bold">(${list_account.size()})</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${new_account_user}" href="${pageContext.request.contextPath}/admin/account-user/new">New <span class="text-700 fw-semi-bold">(${list_account.size()})</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${baned_account_user}" href="${pageContext.request.contextPath}/admin/account-user/baned">Baned account <span class="text-700 fw-semi-bold">(${list_account.size()})</span></a>
                </li>
            </ul>
            <div id="products" data-list='{"valueNames":["acc_id","acc_fullname","acc_email","acc_total_order","acc_total_spent","acc_status","acc_role","acc_create_date"],"page":10,"pagination":true}'>
                <div class="mb-4">
                    <div class="row g-3">
                        <div class="col-auto">
                            <div class="search-box">
                                <form class="position-relative m-0" data-bs-toggle="search" data-bs-display="static">
                                    <input class="form-control search-input search" type="search" placeholder="Search accounts" aria-label="Search" />
                                    <span class="fas fa-search search-box-icon"></span>
                                </form>
                            </div>
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-link text-900 me-4 px-0"><span class="fa-solid fa-file-export fs--1 me-2"></span>Export</button>
                            <!-- <button class="btn btn-primary"><span class="fas fa-plus me-2"></span>Add customer</button> -->
                        </div>
                    </div>
                </div>
                <div class="mx-n4 px-4 mx-lg-n6 px-lg-6 bg-white border-top border-bottom border-200 position-relative top-1">
                    <div class="table-responsive scrollbar-overlay mx-n1 px-1">
                        <table class="table fs--1 mb-0">
                            <thead>
                            <tr>
                                <th class="sort align-middle pe-5" scope="col" data-sort="acc_id" style="width:10%;padding-left: 0">ID</th>
                                <th class="sort align-middle pe-5" scope="col" data-sort="acc_fullname" style="width:10%;">FULLNAME</th>
                                <th class="sort align-middle text-end" scope="col" data-sort="acc_email" style="width:10%">EMAIL</th>
                                <th class="sort align-middle text-end ps-3" scope="col" data-sort="acc_total_order" style="width:10%">TOTAL ORDER</th>
                                <th class="sort align-middle ps-7" scope="col" data-sort="acc_total_spent" style="width:10%;">TOTAL SPENT</th>
                                <th class="sort align-middle ps-7" scope="col" data-sort="acc_status" style="width:5%;">STATUS</th>
                                <th class="sort align-middle text-end" scope="col" data-sort="acc_role" style="width:10%;">ROLE</th>
                                <th class="sort align-middle text-end pe-0" scope="col" data-sort="acc_create_date" style="width:20%;min-width: 150px;">CREATE DATE</th>
                            </tr>
                            </thead>
                            <tbody class="list" id="customers-table-body">
                                <c:forEach items="${list_account}" var="account">
                                    <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                        <td class="acc_id align-middle white-space-nowrap pe-5">
                                            <a onclick="getDetailAccount(${account.acc_id})" class="d-flex align-items-center text-decoration-none" type="button" data-bs-toggle="modal" data-bs-target="#scrollingLong2">
                                                <p class="mb-0 text-1100 fw-bold">${account.acc_id}</p>
                                            </a>
                                        </td>
                                        <td class="acc_fullname align-middle white-space-nowrap pe-5">
                                            <p onclick="getDetailAccount(${account.acc_id})" class="mb-0 text-1100 fw-bold" type="button" data-bs-toggle="modal" data-bs-target="#scrollingLong2">${account.fullName}</p>
                                        </td>
                                        <td class="acc_email align-middle white-space-nowrap fw-semi-bold text-end text-1000">
                                            <a class="fw-semi-bold" href="mailto:${account.email}">${account.email}</a>
                                        </td>
                                        <td class="acc_total_order align-middle white-space-nowrap fw-bold text-end ps-3 text-1100">
                                            empty
                                        </td>
                                        <td class="acc_total_spent align-middle white-space-nowrap text-1000 ps-7">
                                            empty
                                        </td>
                                        <td class="acc_status align-middle white-space-nowrap text-1000 ps-7">
                                            <c:choose>
                                                <c:when test="${account.status == true}">
                                                    <span class="badge badge-phoenix fs--2 badge-phoenix-success">
                                                        <span class="badge-label">AVAILABLE</span>
                                                    </span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="badge badge-phoenix fs--2 badge-phoenix-danger">
                                                        <span class="badge-label">NOT AVAILABLE</span>
                                                    </span>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td class="acc_role align-middle white-space-nowrap text-700 text-end">
                                            <c:forEach items="${account.roles}" var="role">
                                                <span class="badge badge-phoenix fs--2 badge-phoenix-info">${role.role_name}</span>
                                            </c:forEach>
                                        </td>
                                        <td class="acc_create_date align-middle white-space-nowrap text-700 text-end">
                                            <fmt:formatDate type = "both" dateStyle = "medium" timeStyle = "medium" value = "${account.createDate}" />
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="row align-items-center justify-content-between py-2 pe-0 fs--1">
                        <div class="col-auto d-flex">
                            <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900" data-list-info="data-list-info"></p><a class="fw-semi-bold" href="#" data-list-view="*">View all<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a><a class="fw-semi-bold d-none" href="#" data-list-view="less">View Less<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a>
                        </div>
                        <div class="col-auto d-flex"><button class="page-link" data-list-pagination="prev"><span class="fas fa-chevron-left"></span></button>
                            <ul class="mb-0 pagination"></ul><button class="page-link pe-0" data-list-pagination="next"><span class="fas fa-chevron-right"></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal modal-lg fade" id="scrollingLong2" tabindex="-1" aria-labelledby="scrollingLongModalLabel2" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="scrollingLongModalLabel2">The information of account</h5><button class="btn p-1" type="button" data-bs-dismiss="modal" aria-label="Close"><span class="fas fa-times fs--1"></span></button>
                </div>
                <div class="modal-body">
                    <div id="loading" style="display: none;">
                        <div class="row align-items-center justify-content-start g-3 mb-4">
                            <div class="col-auto">
                                <div class="row g-3">
                                    <div class="col-auto"><button class="btn btn-phoenix-info">Detail account</button></div>
                                </div>
                            </div>
                        </div>
                        <div class="row g-2">
                            <div class="col-12 col-xxl-4">
                                <div class="row g-3 g-xxl-0">
                                    <div class="col-12 col-md-7 col-xxl-12 mb-xxl-2">
                                        <div class="card">
                                            <div class="card-body d-flex flex-column justify-content-between pb-3">
                                                <div class="row align-items-center g-5 mb-3 text-center">
                                                    <div class="col-12 col-sm-12 mb-sm-2">
                                                        <div class="avatar avatar-5xl">
                                                            <span class="placeholder w-100 h-100 rounded-circle"></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-sm-12 flex-1">
                                                        <p class="placeholder-glow"><span class="placeholder col-9"></span></p>
                                                        <p class="placeholder-glow"><span class="placeholder col-4"></span></p>
                                                        <p class="placeholder-glow"><span class="placeholder col-9"></span></p>
                                                        <p class="placeholder-glow"><span class="placeholder col-7"></span></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-5 col-xxl-12 mb-xxl-9">
                                        <div class="card">
                                            <div class="card-body pb-3">
                                                <div class="d-flex align-items-center mb-3">
                                                    <h3 class="me-1">Default Address</h3>
                                                </div>
                                                <div class="mb-3">
                                                    <h5 class="text-800">Address</h5>
                                                    <p class="placeholder-glow"><span class="placeholder col-8"></span></p>
                                                </div>
                                                <div class="mb-3">
                                                    <h5 class="text-800">Email</h5>
                                                    <p class="placeholder-glow"><span class="placeholder col-8"></span></p>
                                                </div>
                                                <h5 class="text-800">Phone</h5>
                                                <p class="placeholder-glow"><span class="placeholder col-8"></span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-xxl-8">
                                <div class="row align-items-center g-2 mb-2">
                                    <div class="col-12 col-xxl-6">
                                        <a class="text-decoration-none" href="">
                                            <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                                <span class="fas fa-book text-primary fs-4"></span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-12 col-xxl-6">
                                        <a class="text-decoration-none" href="">
                                            <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                                <span class="fas fa-book text-primary fs-4"></span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-12 col-xxl-6">
                                        <a class="text-decoration-none" href="">
                                            <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                                <span class="fas fa-book text-primary fs-4"></span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-12 col-xxl-6">
                                        <a class="text-decoration-none" href="">
                                            <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                                <span class="fas fa-book text-primary fs-4"></span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-12 col-md-12 col-xxl-12 mb-xxl-9">
                                    <div class="card">
                                        <div class="card-body pb-3">
                                            <div class="d-flex align-items-center mb-3">
                                                <h3 class="me-1">Other infors</h3>
                                            </div>
                                            <div class="mb-3">
                                                <h5 class="text-800">ID</h5>
                                                <p class="placeholder-glow"><span class="placeholder col-6"></span></p>
                                            </div>
                                            <div class="mb-3">
                                                <h5 class="text-800">Status</h5>
                                                <p class="placeholder-glow"><span class="placeholder col-6"></span></p>
                                            </div>
                                            <h5 class="text-800">Role</h5>
                                            <p class="placeholder-glow"><span class="placeholder col-6"></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="account-infor">
                        <div class="row align-items-center justify-content-start g-3 mb-3">
                            <div class="col-auto">
                                <div class="row g-3">
                                    <div class="col-auto">
                                        <a type="button" href="" class="btn btn-phoenix-info">Detail account</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row g-2">
                            <div class="col-12 col-xxl-4">
                                <div class="row g-3 g-xxl-0">
                                    <div class="col-12 col-md-7 col-xxl-12 mb-xxl-2">
                                        <div class="card border border-2 hover-shadow">
                                            <div class="card-body d-flex flex-column justify-content-between pb-3">
                                                <div class="row align-items-center g-5 mb-3 text-center">
                                                    <div class="col-12 col-sm-12 mb-sm-2">
                                                        <div class="avatar avatar-5xl">
                                                            <img class="rounded-circle" src="https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-sm-12 flex-1">
                                                        <h3  id="acc_fullname"></h3>
                                                        <p id="acc_gender" class="text-800"></p>
                                                        <p id="acc_birthday" class="text-800"></p>
                                                        <p id="acc_createDate" class="text-800"></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-5 col-xxl-12">
                                        <div class="card border border-2 hover-shadow">
                                            <div class="card-body pb-3">
                                                <div class="d-flex align-items-center mb-3">
                                                    <h3 class="me-1">Default Address</h3>
                                                </div>
                                                <div class="mb-3">
                                                    <h5 class="text-800">Address</h5>
                                                    <a id="acc_address" class="fs--1"></a>
                                                </div>
                                                <div class="mb-3">
                                                    <h5 class="text-800">Email</h5>
                                                    <a id="acc_email"  class="fs--1"></a>
                                                </div>
                                                <h5 class="text-800">Phone</h5>
                                                <a id="acc_telephone" class="text-800 fs--1"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-xxl-8">
                                <div class="row align-items-center g-2 mb-2">
                                    <div class="col-12 col-xxl-6">
                                        <a class="text-decoration-none" href="">
                                            <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                                <span class="fas fa-shopping-bag text-primary fs-4"></span>
                                                <div class="ms-3">
                                                    <h6 id="acc_totalOrder" class="mb-0">97 orders</h6>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-12 col-xxl-6">
                                        <a class="text-decoration-none" href="">
                                            <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                                <span class="far fa-list-alt text-primary fs-4"></span>
                                                <div class="ms-3">
                                                    <h6 id="acc_totalWishlist" class="mb-0">43 wishlist</h6>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-12 col-xxl-6">
                                        <a class="text-decoration-none" href="">
                                            <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                                <span class="fas fa-comments text-primary fs-4"></span>
                                                <div class="ms-3">
                                                    <h6 id="acc_totalReview" class="mb-0">43 reviews</h6>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-12 col-xxl-6">
                                        <a class="text-decoration-none" href="">
                                            <div class="d-flex align-items-center border border-2 p-3 rounded-3 hover-shadow">
                                                <span class="fas fa-money-check-alt text-primary fs-4"></span>
                                                <div class="ms-3">
                                                    <h6 id="acc_totalSpent" class="mb-0">Spent 2.000.000đ</h6>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-12 col-md-12 col-xxl-12">
                                    <div class="card border border-2 hover-shadow">
                                        <div class="card-body pb-3">
                                            <div class="d-flex align-items-center mb-3">
                                                <h3 class="me-1">Other infors</h3>
                                            </div>
                                            <div class="mb-3">
                                                <h5 class="text-800">ID</h5>
                                                <p id="acc_id">1</p>
                                            </div>
                                            <div class="mb-3">
                                                <h5 class="text-800">Status</h5>
                                                <div id="acc_status">

                                                </div>
                                            </div>
                                            <h5 class="text-800">Role</h5>
                                            <div id="acc_role"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="css-js/import-js.jsp"/>
<script>
    let account_management = document.getElementById('account-management')
    account_management.classList.add('show')
    let use_account = document.getElementById('user-account')
    use_account.classList.add('active')
</script>
<script>
    let loadAccountId = null

    let getDetailAccount = (account_id) => {
        if (loadAccountId === account_id) {
            return
        }

        $("#account-infor").hide()
        $("#loading").show()

        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : `${pageContext.request.contextPath}/api/accounts/` + account_id,
            dataType: 'json',
            timeout: 100000,
            success: function (accountDetail) {
                let {
                    acc_id,
                    address,
                    birthDate,
                    createDate,
                    email,
                    fullName,
                    gender,
                    image,
                    roles,
                    status,
                    telephone,
                    updateDate
                } = accountDetail[0]

                $("#acc_id").html(acc_id)

                if (address === null) $("#acc_address").html("Empty")
                else $("#acc_address").html(address).prop("href", "https://maps.google.com/?q=" + address)

                if (birthDate === null) $("#acc_birthday").html("Birthdate: empty")
                else $("#acc_birthday").html("Birthdate: " + birthDate)

                $("#acc_createDate").html("Join: " + createDate)

                if (email === null) $("#acc_email").html("empy")
                else $("#acc_email").html(email).prop("href", "mailto:" + address)

                $("#acc_fullname").html(fullName)

                if (gender === 'F') $("#acc_gender").html('Female')
                else $("#acc_gender").html('Male')
                let roleContent = "";
                roles.map((roleObj) => {
                    let {role_name} = roleObj
                    roleContent += "<span class='badge badge-phoenix fs--2 badge-phoenix-info me-1'>" + role_name + "</span>";
                })
                $("#acc_role").html(roleContent)
                if (status === true) {
                    $("#acc_status").html("<span class='badge badge-phoenix fs--2 badge-phoenix-success'>AVAILABLE</span>")
                } else {
                    $("#acc_status").html("<span class='badge badge-phoenix fs--2 badge-phoenix-danger'>NOT AVAILABLE</span>")
                }
                if (telephone === null) $("#acc_telephone").html("Empty")
                else $("#acc_telephone").html(telephone).prop("href", "tel:"+telephone)

                // Hide the loading indicator
                $("#loading").hide()
                $("#account-infor").show()
                loadAccountId = acc_id
            },
            error: function (e) {
                console.log("ERROR: ", e);

                $("#account-infor").hide()
                $("#loading").show()
            }
        });
    }
</script>
</body>
</html>
