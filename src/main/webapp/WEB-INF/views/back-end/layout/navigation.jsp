<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-vertical navbar-expand-lg">
    <script>
        var navbarStyle = window.config.config.phoenixNavbarStyle;
        if (navbarStyle && navbarStyle !== 'transparent') {
            document.querySelector('body').classList.add(`navbar-${navbarStyle}`);
        }
    </script>
    <div class="collapse navbar-collapse" id="navbarVerticalCollapse">
        <!-- scrollbar removed-->
        <div class="navbar-vertical-content">
            <ul class="navbar-nav flex-column" id="navbarVerticalNav">
                <li class="nav-item">
                    <!--Dashboard-->
                    <div class="nav-item-wrapper">
                        <a id="dashboard-tag" class="nav-link label-1" href="${pageContext.request.contextPath}/admin/dashboard" role="button" data-bs-toggle="" aria-expanded="false">
                            <div class="d-flex align-items-center">
                                    <span class="nav-link-icon">
                                        <span data-feather="home"></span>
                                    </span>
                                    <span class="nav-link-text-wrapper">
                                        <span class="nav-link-text">Dashboard</span>
                                    </span>
                            </div>
                        </a>
                    </div>
                    <!--Account management-->
                    <div class="nav-item-wrapper">
                        <a class="nav-link dropdown-indicator label-1" href="#account-management" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="account-management">
                            <div class="d-flex align-items-center">
                                <div class="dropdown-indicator-icon">
                                    <span class="fas fa-caret-right"></span>
                                </div>
                                <span class="nav-link-icon">
                                    <span data-feather="users"></span>
                                </span>
                                <span class="nav-link-text">Account Management</span>
                            </div>
                        </a>
                        <div class="parent-wrapper label-1">
                            <ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="account-management">
                                <li class="collapsed-nav-item-title d-none">Account management</li>
                                <li class="nav-item">
                                    <!-- more inner pages-->
                                    <a id="user-account" class="nav-link" href="${pageContext.request.contextPath}/admin/account-user" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">User Account</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Admin Account</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Account Deactivation</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Feedback Of User</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Role Management</span></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Book management-->
                    <div class="nav-item-wrapper">
                        <a class="nav-link dropdown-indicator label-1" href="#book-management" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="project-management">
                            <div class="d-flex align-items-center">
                                <div class="dropdown-indicator-icon">
                                    <span class="fas fa-caret-right"></span>
                                </div>
                                <span class="nav-link-icon">
                                        <span data-feather="book"></span>
                                    </span>
                                <span class="nav-link-text">Book Management</span>
                            </div>
                        </a>
                        <div class="parent-wrapper label-1">
                            <ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="book-management">
                                <li class="collapsed-nav-item-title d-none">Book management</li>
                                <li class="nav-item">
                                    <!-- more inner pages-->
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Create New Book</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Create New Format</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">All Books</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">All Formats</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Stock</span></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Author management-->
                    <div class="nav-item-wrapper">
                        <a class="nav-link dropdown-indicator label-1" href="#author-management" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="project-management">
                            <div class="d-flex align-items-center">
                                <div class="dropdown-indicator-icon">
                                    <span class="fas fa-caret-right"></span>
                                </div>
                                <span class="nav-link-icon">
                                        <span data-feather="user"></span>
                                    </span>
                                <span class="nav-link-text">Auhtor Management</span>
                            </div>
                        </a>
                        <div class="parent-wrapper label-1">
                            <ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="author-management">
                                <li class="collapsed-nav-item-title d-none">Book management</li>
                                <li class="nav-item">
                                    <!-- more inner pages-->
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Create New Author</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">All Auhtors</span></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Publisher management-->
                    <div class="nav-item-wrapper">
                        <a class="nav-link dropdown-indicator label-1" href="#publisher-management" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="project-management">
                            <div class="d-flex align-items-center">
                                <div class="dropdown-indicator-icon">
                                    <span class="fas fa-caret-right"></span>
                                </div>
                                <span class="nav-link-icon">
                                        <span data-feather="truck"></span>
                                    </span>
                                <span class="nav-link-text">Publisher Management</span>
                            </div>
                        </a>
                        <div class="parent-wrapper label-1">
                            <ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="publisher-management">
                                <li class="collapsed-nav-item-title d-none">Publisher Management</li>
                                <li class="nav-item">
                                    <!-- more inner pages-->
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Create New Publisher</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">All Publishers</span></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Event management-->
                    <div class="nav-item-wrapper">
                        <a class="nav-link dropdown-indicator label-1" href="#event" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="project-management">
                            <div class="d-flex align-items-center">
                                <div class="dropdown-indicator-icon">
                                    <span class="fas fa-caret-right"></span>
                                </div>
                                <span class="nav-link-icon">
                                        <span data-feather="bookmark"></span>
                                    </span>
                                <span class="nav-link-text">Event</span>
                            </div>
                        </a>
                        <div class="parent-wrapper label-1">
                            <ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="event">
                                <li class="collapsed-nav-item-title d-none">Event</li>
                                <li class="nav-item">
                                    <!-- more inner pages-->
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Create New Event</span></div>
                                    </a>
                                    <a class="nav-link" href="" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">All Events</span></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Categories-->
                    <div class="nav-item-wrapper">
                        <a class="nav-link label-1" href="" role="button" data-bs-toggle="" aria-expanded="false">
                            <div class="d-flex align-items-center">
                                    <span class="nav-link-icon">
                                        <span data-feather="list"></span>
                                    </span>
                                <span class="nav-link-text-wrapper">
                                        <span class="nav-link-text">Categories</span>
                                    </span>
                            </div>
                        </a>
                    </div>
                    <!--Order-->
                    <div class="nav-item-wrapper">
                        <a class="nav-link label-1" href="" role="button" data-bs-toggle="" aria-expanded="false">
                            <div class="d-flex align-items-center">
                                    <span class="nav-link-icon">
                                        <span data-feather="shopping-cart"></span>
                                    </span>
                                <span class="nav-link-text-wrapper">
                                        <span class="nav-link-text">Orders</span>
                                    </span>
                            </div>
                        </a>
                    </div>
                    <!--Feedback & reviews-->
                    <div class="nav-item-wrapper">
                        <a class="nav-link label-1" href="" role="button" data-bs-toggle="" aria-expanded="false">
                            <div class="d-flex align-items-center">
                                    <span class="nav-link-icon">
                                        <span data-feather="archive"></span>
                                    </span>
                                <span class="nav-link-text-wrapper">
                                        <span class="nav-link-text">Feedback & reviews</span>
                                    </span>
                            </div>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="navbar-vertical-footer"><button class="btn navbar-vertical-toggle border-0 fw-semi-bold w-100 white-space-nowrap d-flex align-items-center"><span class="uil uil-left-arrow-to-left fs-0"></span><span class="uil uil-arrow-from-right fs-0"></span><span class="navbar-vertical-footer-text ms-2">Collapsed View</span></button></div>
</nav>