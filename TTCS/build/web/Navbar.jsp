<%-- 
    Document   : Navbar
    Created on : Apr 13, 2022, 9:57:00 PM
    Author     : DPV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </head>
    <body>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="bang-dieu-khien">QUẢN LÝ BÃI ĐỖ XE</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </div>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i>
                        ${sessionScope.kh.getTai_khoan()}</a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="bang-dieu-khien"><i class="fas fa-tachometer-alt"></i> Bảng điều khiển</a></li>
                        <li><a class="dropdown-item" href="" data-bs-toggle="modal" data-bs-target="#profiles"><i class="fa-solid fa-circle-info"></i> Thông tin cá nhân</a></li>
                        <li><a class="dropdown-item" href="change-password" ><i class="fas fa-exchange-alt"></i> Đổi mật khẩu</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="logout"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- Modal profiles -->
        <div class="modal fade" id="profiles" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thay đổi thông tin</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="profiles" method="POST">
                            <div class="form-floating mb-3">
                                <input name="username" class="form-control" id="inputEmail" type="text"
                                       placeholder="Username" readonly="" value="${sessionScope.kh.getTai_khoan()}"/>
                                <label for="inputEmail">Tài khoản</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name="name" class="form-control" id="inputEmail" type="text" placeholder="Username"
                                       required="" value="${sessionScope.kh.getTen_khach_hang()}"/>
                                <label for="inputEmail">Họ tên</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name="idc" class="form-control" id="inputEmail" type="text" placeholder="Username"
                                       required="" value="${sessionScope.kh.getCMND()}"/>
                                <label for="inputEmail">Chứng minh nhân dân</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name="add" class="form-control" id="inputEmail" type="text" placeholder="Username"
                                       required="" value="${sessionScope.kh.getDia_chi_khach_hang()}"/>
                                <label for="inputEmail">Đại chỉ</label>
                            </div>
                            <input name="role" type="text" value="${sessionScope.kh.getRole()}" hidden=""/>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>
                                <button type="submit" class="btn btn-primary">Xác nhận</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
