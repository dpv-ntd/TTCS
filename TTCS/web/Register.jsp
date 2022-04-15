<%-- 
    Document   : Register
    Created on : Apr 14, 2022, 5:26:49 PM
    Author     : DPV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Đăng ký</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-secondary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Đăng ký</h3></div>
                                    <div class="card-body">
                                        <form action="register" method="POST">
                                            <div class="form-floating mb-3">
                                                <input name="name" class="form-control" id="inputEmail" type="text" placeholder="Username" required=""/>
                                                <label for="inputEmail">Họ tên</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="idc" class="form-control" id="inputEmail" type="text" placeholder="Username" required=""/>
                                                <label for="inputEmail">Chứng minh nhân dân</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="add" class="form-control" id="inputEmail" type="text" placeholder="Username" required=""/>
                                                <label for="inputEmail">Đại chỉ</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="username" class="form-control" id="inputEmail" type="text" placeholder="Username" required=""/>
                                                <label for="inputEmail">Tài khoản</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="password" class="form-control" id="inputPassword" type="password" placeholder="Password" required=""/>
                                                <label for="inputPassword">Mật khẩu</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="repassword" class="form-control" id="inputPassword" type="password" placeholder="Password" required=""/>
                                                <label for="inputPassword">Nhập lại mật khẩu</label>
                                            </div>
                                            <c:if test="${notify != null}">
                                                <div class="form-check">
                                                    <label class="text-danger">${notify}</label>
                                                </div>
                                            </c:if>
                                            <c:if test="${success != null}">
                                                <div class="form-check">
                                                    <label class="text-success">${success}</label>
                                                </div>
                                            </c:if>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <button type="submit" class="btn btn-primary w-100">Đăng ký</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login">Đã có tài khoản? Đăng nhập ngay</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
