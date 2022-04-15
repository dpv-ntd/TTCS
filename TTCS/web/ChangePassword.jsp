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
        <title>Login - SB Admin</title>
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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Đổi mật khẩu</h3></div>
                                    <div class="card-body">
                                        <form action="change-password" method="POST">
                                            <div class="form-floating mb-3">
                                                <input name="oldpass" class="form-control" id="inputEmail" type="password"
                                                       placeholder="Username" required="" />
                                                <label for="inputEmail">Mật khẩu cũ</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="newpass" class="form-control" id="inputPassword" type="password"
                                                       placeholder="Password" required="" />
                                                <label for="inputPassword">Mật khẩu mới</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="renewpass" class="form-control" id="inputPassword" type="password"
                                                       placeholder="Password" required="" />
                                                <label for="inputPassword">Nhập lại mật khẩu mới</label>
                                            </div>
                                            <c:if test="${notify != null}">
                                                <div class="form-check">
                                                    <label class="text-danger">${notify}</label>
                                                </div>
                                            </c:if>
                                            <div class="modal-footer">
                                                <a href="bang-dieu-khien" class="btn btn-secondary">Quay lại</a>
                                                <button type="submit" class="btn btn-primary">Xác nhận</button>
                                            </div>
                                        </form>
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
