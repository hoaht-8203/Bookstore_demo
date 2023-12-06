<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!-- ============================================-->
<!-- <section> begin ============================-->
<section class="py-0">
  <div class="container-small">
    <div class="ecommerce-topbar">
      <nav class="navbar navbar-expand-lg navbar-light px-0">
        <div class="row gx-0 gy-2 w-100 flex-between-center">
          <div class="col-auto">
            <a class="text-decoration-none" href="${pageContext.request.contextPath}/homepage">
            <div class="d-flex align-items-center">
              <img src="<c:url value="/resources/assets/img/logos/logo.png"/>" alt="phoenix" width="27" />
              <p class="logo-text ms-2">Bookstore</p>
            </div>
          </a></div>
          <div class="col-auto order-md-1">
            <ul class="navbar-nav navbar-nav-icons flex-row me-n2">
              <li class="nav-item">
                <a class="nav-link px-2 icon-indicator icon-indicator-primary" href="#" role="button">
                  <span class="text-700" data-feather="shopping-cart" style="height:20px;width:20px;"></span>
                  <span class="icon-indicator-number">3</span>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link px-2" id="navbarDropdownUser" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                  <span class="text-700" data-feather="user" style="height:20px;width:20px;"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-end navbar-dropdown-caret py-0 dropdown-profile shadow border border-300 mt-2" aria-labelledby="navbarDropdownUser">
                  <div class="card position-relative border-0">
                    <div class="card-body p-0">
                      <div class="text-center pt-4 pb-3">
                        <div class="avatar avatar-xl ">
                          <img class="rounded-circle " src="" alt="" />
                        </div>
                        <h6 class="mt-2 text-black">Customer name</h6>
                      </div>
                    </div>
                    <div class="overflow-auto scrollbar" style="height: 10rem;">
                      <ul class="nav d-flex flex-column mb-2 pb-1">
                        <li class="nav-item"><a class="nav-link px-3" href="#"> <span class="me-2 text-900" data-feather="user"></span><span>Profile</span></a></li>
                        <li class="nav-item"><a class="nav-link px-3" href="#"> <span class="me-2 text-900" data-feather="settings"></span>Settings &amp; Privacy </a></li>
                      </ul>
                    </div>
                    <div class="card-footer p-0 pt-2">
                      <div class="px-3">
                        <a class="btn btn-phoenix-secondary d-flex flex-center w-100" href="#"> <span class="me-2" data-feather="log-out"> </span>Sign out</a>
                      </div>
                      <div class="my-2 text-center fw-bold fs--2 text-600">
                        <a class="text-600 me-1" href="#">Privacy policy</a>&bull;
                        <a class="text-600 mx-1" href="#">Terms</a>&bull;
                        <a class="text-600 ms-1" href="#">Cookies</a>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div class="col-12 col-md-6">
            <div class="search-box ecommerce-search-box w-100">
              <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                <input class="form-control search-input search form-control-sm" type="search" placeholder="Search your book here..." aria-label="Search" />
                <span class="fas fa-search search-box-icon"></span>
              </form>
            </div>
          </div>
        </div>
      </nav>
    </div>
  </div><!-- end of .container-->
</section><!-- <section> close ============================-->
<!-- ============================================-->