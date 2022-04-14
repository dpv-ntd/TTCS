<%-- 
    Document   : Dashboard
    Created on : Apr 13, 2022, 9:55:44 PM
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
        <title>QLBDX | Bảng điều khiển</title>
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
    <style>
        .feature-box {
            padding: 38px 30px;
            position: relative;
            overflow: hidden;
            background: #fff;
            box-shadow: 0 0 29px 0 rgb(18 66 101 / 8%);
            transition: all 0.3s ease-in-out;
            border-radius: 8px;
            z-index: 1;
            width: 100%;
        }
        .feature-icon {
            font-size: 1.8em;
            margin-bottom: 1rem;
        }

        .feature-title {
            font-size: 1.5em;
            font-weight: 500;
            padding-bottom: 0.25rem;
            text-decoration: none;
            color: white;
        }
        .feature-content{
            font-size: 1em;
            font-weight: 500;
            padding-bottom: 0.25rem;
            text-decoration: none;
            color: white;
        }
    </style>
    <body class="sb-nav-fixed">
        <%@include file="Navbar.jsp" %>
        <div id="layoutSidenav">
            <%@include file="NavbarMenu.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">BẢNG ĐIỀU KHIỂN</h1>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 d-flex align-items-stretch mb-4">
                                <div class="feature-box" style="background-color: #2EE27E">
                                    <div class="text-white">
                                        <i class="fa-solid fa-car feature-icon"></i>
                                        <div>
                                            <div class="feature-title">${Available}</div>
                                            <div class="feature-title">CHỖ ĐỖ XE</div>
                                            <div class="feature-content">CÒN TRỐNG</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex align-items-stretch mb-4">
                                <div class="feature-box" style="background-color: #F94928">
                                    <div class="text-white">
                                        <i class="fa-solid fa-car-on feature-icon"></i>
                                        <div>
                                            <div class="feature-title">${occupied}</div>
                                            <div class="feature-title">CHỖ ĐỖ XE</div>
                                            <div class="feature-content">ĐANG SỬ DỤNG</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex align-items-stretch mb-4">
                                <div class="feature-box" style="background-color: #9852B7">
                                    <div class="text-white">
                                        <i class="fa-solid fa-motorcycle feature-icon"></i>
                                        <div>
                                            <div class="feature-title">${vehiclesNumberToday}</div>
                                            <div class="feature-title">XE</div>
                                            <div class="feature-content">GỬI NGÀY HÔM NAY</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex align-items-stretch mb-4">
                                <div class="feature-box" style="background-color: #87C94E">
                                    <div class="text-white">
                                        <i class="fa-solid fa-car-side feature-icon"></i>
                                        <div>
                                            <div class="feature-title">${vehiclesNumberYesterday}</div>
                                            <div class="feature-title">XE</div>
                                            <div class="feature-content">GỬI NGÀY HÔM QUA</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex align-items-stretch mb-4">
                                <div class="feature-box" style="background-color: #F03585">
                                    <div class="text-white">
                                        <i class="fa-solid fa-truck feature-icon"></i>
                                        <div>
                                            <div class="feature-title">${vehiclesNumberWeekend}</div>
                                            <div class="feature-title">XE</div>
                                            <div class="feature-content">GỬI TRONG 7 NGÀY VỪA QUA</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex align-items-stretch mb-4">
                                <div class="feature-box" style="background-color: #EE0D70">
                                    <div class="text-white">
                                        <i class="fa-solid fa-truck-moving feature-icon"></i>
                                        <div>
                                            <div class="feature-title">${vehiclesNumberEver}</div>
                                            <div class="feature-title">XE</div>
                                            <div class="feature-content">GỬI TỪ TRƯỚC ĐẾN NAY</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex align-items-stretch mb-4">
                                <div class="feature-box" style="background-color: #595BE5">
                                    <div class="text-white">
                                        <i class="fa-solid fa-truck feature-icon"></i>
                                        <div>
                                            <div class="feature-title">${NumberToday}</div>
                                            <div class="feature-title">LẦN</div>
                                            <div class="feature-content">GỬI TRONG NGÀY HÔM NAY</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex align-items-stretch mb-4">
                                <div class="feature-box" style="background-color: #C44D95">
                                    <div class="text-white">
                                        <i class="fa-solid fa-truck-moving feature-icon"></i>
                                        <div>
                                            <div class="feature-title">${NumberEver}</div>
                                            <div class="feature-title">LẦN</div>
                                            <div class="feature-content">GỬI TỪ TRƯỚC ĐẾN NAY</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; KAI 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </body>
</html>
