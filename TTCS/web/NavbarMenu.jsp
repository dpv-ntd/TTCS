<%-- 
    Document   : NavbarMenu
    Created on : Apr 13, 2022, 10:37:08 PM
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
    </head>
    <body>
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <a class="nav-link" href="bang-dieu-khien">
                            <div class="sb-nav-link-icon"></div>
                            <i class="fas fa-tachometer-alt me-3"></i>Bảng điều khiển
                        </a>
                        <a class="nav-link" href="bai-do-xe">
                            <div class="sb-nav-link-icon"></div>
                            <i class="fa-solid fa-road me-3"></i>Bãi đậu xe
                        </a>
                        <a class="nav-link" href="index.html">
                            <div class="sb-nav-link-icon"></div>
                            <i class="fa-solid fa-square-plus me-3"></i>Thêm khách hàng
                        </a>

                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"></div>
                            <i class="fa-solid fa-car me-3"></i>Quản lý xe cộ
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="layout-static.html"><i class="fas fa-hand-point-right me-3"></i> Xe cộ vào</a>
                                <a class="nav-link" href="layout-sidenav-light.html"><i class="fas fa-hand-point-left me-3"></i> Xe cộ ra</a>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    Adminstrator
                </div>
            </nav>
        </div>
    </body>
</html>
