<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="FinancialTime.Web.frmRegister" %>

<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from www.urbanui.com/fily/template/demo/vertical-hidden-toggle/pages/samples/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 18 Oct 2019 17:14:21 GMT -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Financial Time</title>
    <!--===============================================================================================-->
    <!-- plugins:css -->
    <!--===============================================================================================-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/4.4.95/css/materialdesignicons.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!--===============================================================================================-->
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!--===============================================================================================-->
    <link rel="stylesheet" href="css/vertical-layout-light/style.css">
    <!--===============================================================================================-->
    <!-- endinject -->
    <!--===============================================================================================-->
    <link rel="shortcut icon" href="images/favicon.png" />
    <!--===============================================================================================-->
</head>

<body class="sidebar-toggle-display sidebar-hidden">
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth px-0">
                <div class="row w-100 mx-0">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                            <div class="brand-logo">
                                <img src="img/Logo_completo.png" alt="logo">
                            </div>
                            <h4>¿Nuevo aquí?</h4>
                            <h6 class="font-weight-light">Registrarse es fácil. Solo toma unos segundos...</h6>
                            <form class="pt-3" runat="server">                                
                                <div class="form-group">
                                    <input type="email" runat="server" class="form-control form-control-lg" id="dfnewusu_mail" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" runat="server" class="form-control form-control-lg" id="dfnewusu_nombre" placeholder="Nombre">
                                </div>
                                <div class="form-group">
                                    <input type="password" runat="server" class="form-control form-control-lg" id="dfnewusu_password" placeholder="Contraseña">
                                </div>
                                <div class="mb-4">
                                    <div class="form-check">
                                        <label class="form-check-label text-muted">
                                            <input type="checkbox" class="form-check-input">
                                            Acepto todos los términos y condiciones
                   
                                        </label>
                                    </div>
                                </div>
                                <div class="mt-3">
                                    <asp:Button ID="btnRegistrarse" runat="server" Text="REGISTRARSE" CssClass="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" OnClick="btnRegistrarse_Click" />
                                </div>
                                <div class="text-center mt-4 font-weight-light">
                                    ¿Ya tienes una cuenta? <a href="frmLogin.aspx" class="text-primary">Entrar</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!--===============================================================================================-->
    <!-- plugins:js -->
    <!--===============================================================================================-->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!--===============================================================================================-->
    <!-- endinject -->
    <!--===============================================================================================-->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!--===============================================================================================-->
    <!-- inject:js -->
    <!--===============================================================================================-->
    <script src="js/off-canvas.js"></script>
    <!--===============================================================================================-->
    <script src="js/hoverable-collapse.js"></script>
    <!--===============================================================================================-->
    <script src="js/template.js"></script>
    <!--===============================================================================================-->
    <script src="js/settings.js"></script>
    <!--===============================================================================================-->
    <script src="js/todolist.js"></script>
    <!--===============================================================================================-->
    <!-- endinject -->
    <!--===============================================================================================-->
</body>


<!-- Mirrored from www.urbanui.com/fily/template/demo/vertical-hidden-toggle/pages/samples/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 18 Oct 2019 17:14:21 GMT -->
</html>
