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
        <%@include file="Navbar.jsp" %>
        <div id="layoutSidenav">
            <%@include file="NavbarMenu.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">BÃI ĐỖ XE</h1>
                        <hr>
                        <div class="row">
                            <c:forEach items="${BaiDoXe}" var="bdx">
                                <c:choose>
                                    <c:when test="${bdx.getTrang_thai_bai_do_xe() == 0}">
                                        <div class="features-box col-2" style="background-color: #2EE27E">
                                            <div class="text-white">
                                                <div>
                                                    <i class="fa-solid fa-road features-icon"></i>
                                                    <div class="features-title">${bdx.getMa_bai_do_xe()}</div>
                                                    <div class="features-content">CÒN TRỐNG</div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="features-box col-2" style="background-color: #F94928">
                                            <div class="text-white">                               
                                                <div>
                                                    <i class="fa-solid fa-car features-icon"></i>
                                                    <a href="bai-do-xe?action=viewdetails&id=${bdx.getMa_bai_do_xe()}" class="features-title">${bdx.getMa_bai_do_xe()}</a>
                                                    <div class="features-content">ĐANG SỬ DỤNG</div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>



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
        <script src="../js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="../assets/demo/chart-area-demo.js"></script>
        <script src="../assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="../js/datatables-simple-demo.js"></script>
    </body>
</html>
