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
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
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
                        <h1 class="mt-4">LỊCH SỬ GỬI XE</h1>
                        <hr>
                        <div class="card mb-4">

                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>MÃ BÃI ĐỖ XE</th>
                                            <th>BIỂN SỐ XE</th>
                                            <th>NGÀY GỬI</th>
                                            <th>NGÀY LẤY</th>
                                            <th>THAO TÁC</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${history}" var="ls">
                                            <tr>
                                                <td>${ls.getId()}</td>
                                                <td>${ls.getMa_bai_do_xe()}</td>
                                                <td>${ls.getBien_so_xe()}</td>
                                                <td>${ls.getNgay_gui()}</td>
                                                <td>${ls.getNgay_lay()}</td>
                                                <c:choose>
                                                    <c:when test="${ls.getNgay_lay() != null}">
                                                        <td><h6 class="text-success text-center">ĐÃ TRẢ CHỖ</h6></td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="text-center">
                                                            <form action="cancel" method="POST">
                                                                <input name="makhachhang" value="${ls.getMa_khach_hang()}" hidden="">
                                                                <input name="mabaidoxe" value="${ls.getMa_bai_do_xe()}" hidden="">
                                                                <button type="submit" class="btn btn-danger" style="font-weight: 500; border-radius: 2px">TRẢ CHỖ</button>
                                                            </form>
                                                        </td>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
