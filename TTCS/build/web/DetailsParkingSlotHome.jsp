<%-- 
    Document   : Dashboard
    Created on : Apr 13, 2022, 9:55:44 PM
    Author     : DPV
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>DCDX | Thông tin chi tiết bãi đỗ xe</title>
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
        .features-box {
            padding: 20px 30px;
            position: relative;
            overflow: hidden;
            background: #fff;
            box-shadow: 0 0 1px 0 rgb(0 44 77);
            transition: all 0.3s ease-in-out;
            border-radius: 1px;
            z-index: 1;
            width: 80%;
        }
        .features-icon {
            font-size: 1.8em;
            margin-bottom: 1rem;
        }

        .features-title {
            font-size: 1.5em;
            font-weight: 500;
            padding-bottom: 0.25rem;
            text-decoration: none;
            color: white;
        }
        .features-content{
            font-size: 1em;
            font-weight: 500;
            padding-bottom: 0.25rem;
            text-decoration: none;
            color: white;
        }
    </style>
    <body class="sb-nav-fixed">
        <%@include file="NavbarHome.jsp" %>
        <div id="layoutSidenav">
            <%@include file="NavbarMenuHome.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">THÔNG TIN CHI TIẾT BÃI ĐỖ XE</h1>
                        <hr>
                        <div class="row">
                            <div class="row pt-3">
                                <c:choose>
                                    <c:when test="${BaiDoXeByID.getTrang_thai_bai_do_xe()==0}">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 py-2">
                                            <div class="card border-success">
                                                <div class="card-body">
                                                    <h5 class="card-title pt-2 pb-2">Bãi Đỗ Xe - ${BaiDoXeByID.getMa_bai_do_xe()}</h5> 
                                                    <span class="position-absolute top-0 start-100 translate-middle p-2 bg-success border border-light rounded-circle">
                                                        <span class="visually-hidden">New alerts</span>
                                                    </span>
                                                    <ul style="font-weight: 500">
                                                        <li>Mã bãi đỗ xe: <span class="text-success">${BaiDoXeByID.getMa_bai_do_xe()}</span></li>
                                                        <li>Tên bãi đỗ xe: <span class="text-success">${BaiDoXeByID.getTen_bai_do_xe()}</span></li>
                                                        <li>Địa chỉ bãi đỗ xe: <span class="text-success">${BaiDoXeByID.getDia_chi_bai_do_xe()}</span></li>
                                                        <li>Trạng thái bãi đỗ xe: <span class="text-success pb-2">${BaiDoXeByID.getTrang_thai_bai_do_xe()==0 ? "CÒN TRỐNG":"ĐANG SỬ DỤNG"}</span></li>
                                                    </ul>
                                                    <c:if test="${sessionScope.kh != null && checkTTGX == null}">
                                                        <button class="ms-4 btn-success btn-lg" style="font-weight: 500; border-radius: 2px" data-bs-toggle="modal"
                                                                data-bs-target="#exampleModal">ĐẶT CHỖ</button>
                                                    </c:if>

                                                </div>
                                            </div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 py-2">
                                            <div class="card border-danger">
                                                <div class="card-body">
                                                    <h5 class="card-title pt-2 pb-2">Bãi Đỗ Xe - ${BaiDoXeByID.getMa_bai_do_xe()}</h5> 
                                                    <span class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle">
                                                        <span class="visually-hidden">New alerts</span>
                                                    </span>
                                                    <ul style="font-weight: 500">
                                                        <li>Mã bãi đỗ xe: <span class="text-danger">${BaiDoXeByID.getMa_bai_do_xe()}</span></li>
                                                        <li>Tên bãi đỗ xe: <span class="text-danger">${BaiDoXeByID.getTen_bai_do_xe()}</span></li>
                                                        <li>Địa chỉ bãi đỗ xe: <span class="text-danger">${BaiDoXeByID.getDia_chi_bai_do_xe()}</span></li>
                                                        <li>Trạng thái bãi đỗ xe: <span class="text-danger pb-2">${BaiDoXeByID.getTrang_thai_bai_do_xe()==0 ? "Còn trống":"Đang sử dụng"}</span></li>
                                                        <br>
                                                    </ul>
                                                    <c:if test="${sessionScope.kh.getMa_khach_hang() == ThongTinChiTiet.getKhachHang().getMa_khach_hang()}">
                                                        <form action="cancel" method="POST">
                                                            <input name="makhachhang" value="${sessionScope.kh.getMa_khach_hang()}" hidden="">
                                                            <input name="mabaidoxe" value="${BaiDoXeByID.getMa_bai_do_xe()}" hidden="">
                                                            <button type="submit" class="ms-4 btn-danger btn-lg" style="font-weight: 500; border-radius: 2px">TRẢ CHỖ</button>
                                                        </form>

                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </div>

                        </div>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Điền thông tin đặt chỗ</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="reservation" method="POST">
                                        <div class="form-floating mb-3">
                                            <input name="bss" class="form-control" id="inputEmail" type="text" placeholder="Biển số xe"
                                                   required="" />
                                            <label for="inputEmail">Biển số xe</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input name="makhachhang" class="form-control" id="inputEmail" type="text" placeholder="Username"
                                                   required="" hidden value="${sessionScope.kh.getMa_khach_hang()}"/>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input name="mabaidoxe" class="form-control" id="inputEmail" type="text" placeholder="Username"
                                                   required="" hidden value="${BaiDoXeByID.getMa_bai_do_xe()}"/>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>
                                            <button type="submit" class="btn btn-primary">Xác nhận</button>
                                        </div>
                                    </form>
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
