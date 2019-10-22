<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmIndex.aspx.cs" Inherits="FinancialTime.Web.frmIndex" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from www.urbanui.com/fily/template/demo/vertical-hidden-toggle/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 18 Oct 2019 17:11:02 GMT -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Financial Time</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/4.4.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body class="sidebar-toggle-display sidebar-hidden">
    <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                <a class="navbar-brand brand-logo" href="index.html">
                    <img src="img/Logo_completo.png" alt="logo" /></a>
                <a class="navbar-brand brand-logo-mini" href="index.html">
                    <img src="img/Logo_MINI.png" alt="logo" /></a>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-center">
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="mdi mdi-menu"></span>
                </button>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item nav-search d-none d-md-flex" id="navbarSearch">
                        <a class="nav-link d-flex justify-content-center align-items-center" id="navbarSearchButton" href="#">
                            <i class="mdi mdi-magnify mx-0"></i>
                        </a>
                        <input type="text" class="form-control" placeholder="Search..." id="navbarSearchInput">
                    </li>
                </ul>
                <ul class="navbar-nav navbar-nav-right">
                    <li class="nav-item dropdown mr-1">
                        <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
                            <i class="mdi mdi-email mx-0"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                            <p class="mb-0 font-weight-normal float-left dropdown-header">Mensajes</p>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <img src="images/faces/face4.jpg" alt="image" class="profile-pic">
                                </div>
                                <div class="preview-item-content flex-grow">
                                    <h6 class="preview-subject ellipsis font-weight-normal">David Grey
                                    </h6>
                                    <p class="font-weight-light small-text text-muted mb-0">
                                        The meeting is cancelled
                                    </p>
                                </div>
                            </a>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <img src="images/faces/face2.jpg" alt="image" class="profile-pic">
                                </div>
                                <div class="preview-item-content flex-grow">
                                    <h6 class="preview-subject ellipsis font-weight-normal">Tim Cook
                                    </h6>
                                    <p class="font-weight-light small-text text-muted mb-0">
                                        New product launch
                                    </p>
                                </div>
                            </a>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <img src="images/faces/face3.jpg" alt="image" class="profile-pic">
                                </div>
                                <div class="preview-item-content flex-grow">
                                    <h6 class="preview-subject ellipsis font-weight-normal">Johnson
                                    </h6>
                                    <p class="font-weight-light small-text text-muted mb-0">
                                        Upcoming board meeting
                                    </p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li class="nav-item dropdown mr-4">
                        <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
                            <i class="mdi mdi-bell mx-0"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                            <p class="mb-0 font-weight-normal float-left dropdown-header">Notificaciones</p>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <div class="preview-icon bg-success">
                                        <i class="mdi mdi-information mx-0"></i>
                                    </div>
                                </div>
                                <div class="preview-item-content">
                                    <h6 class="preview-subject font-weight-normal">Application Error</h6>
                                    <p class="font-weight-light small-text mb-0 text-muted">
                                        Just now
                                    </p>
                                </div>
                            </a>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <div class="preview-icon bg-warning">
                                        <i class="mdi mdi-settings mx-0"></i>
                                    </div>
                                </div>
                                <div class="preview-item-content">
                                    <h6 class="preview-subject font-weight-normal">Settings</h6>
                                    <p class="font-weight-light small-text mb-0 text-muted">
                                        Private message
                                    </p>
                                </div>
                            </a>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <div class="preview-icon bg-info">
                                        <i class="mdi mdi-account-box mx-0"></i>
                                    </div>
                                </div>
                                <div class="preview-item-content">
                                    <h6 class="preview-subject font-weight-normal">New user registration</h6>
                                    <p class="font-weight-light small-text mb-0 text-muted">
                                        2 days ago
                                    </p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li class="nav-item nav-profile dropdown mr-0 mr-sm-2">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                            <img src="images/faces/face28.jpg" alt="profile" />
                            <span class="nav-profile-name">Carlos Andrade</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                            <a class="dropdown-item">
                                <i class="mdi mdi-settings text-primary"></i>
                                Configuración
                            </a>
                            <a class="dropdown-item">
                                <i class="mdi mdi-logout text-primary"></i>
                                Salir
                            </a>
                        </div>
                    </li>
                    <%--<li class="nav-item nav-settings d-none d-lg-flex">
                        <a class="nav-link" href="#">
                            <i class="mdi mdi-dots-vertical"></i>
                        </a>
                    </li>--%>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                    <span class="mdi mdi-menu"></span>
                </button>
            </div>
        </nav>
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">
                            <i class="mdi mdi-home menu-icon"></i>
                            <span class="menu-title">Inicio</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/widgets/widgets.html">
                            <i class="mdi mdi-puzzle menu-icon"></i>
                            <span class="menu-title">Movimientos</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/widgets/widgets.html">
                            <i class="mdi mdi-puzzle menu-icon"></i>
                            <span class="menu-title">Bancos</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/widgets/widgets.html">
                            <i class="mdi mdi-puzzle menu-icon"></i>
                            <span class="menu-title">Transferencias</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <!-- cat -->
                    <div class="row">
                        <div class="col-md-12 grid-margin">
                            <div class="card bg-white">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <h4 class="mt-1 mb-1">Hola, Carlos!</h4>
                                    <button class="btn btn-info d-none d-md-block">Registrar Movimiento</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 grid-margin stretch-card">
                            <div class="card border-0 border-radius-2 bg-success">
                                <div class="card-body">
                                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                                        <div class="icon-rounded-inverse-success icon-rounded-lg">
                                            <i class="mdi mdi-bank"></i>
                                        </div>
                                        <div class="text-white">
                                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Banamex</p>
                                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$508</h3>
                                                <small class="mb-0">Saldo</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 grid-margin stretch-card">
                            <div class="card border-0 border-radius-2 bg-info">
                                <div class="card-body">
                                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                                        <div class="icon-rounded-inverse-info icon-rounded-lg">
                                            <i class="mdi mdi-bank"></i>
                                        </div>
                                        <div class="text-white">
                                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Bancomer</p>
                                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$387</h3>
                                                <small class="mb-0">Saldo</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 grid-margin stretch-card">
                            <div class="card border-0 border-radius-2 bg-danger">
                                <div class="card-body">
                                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                                        <div class="icon-rounded-inverse-danger icon-rounded-lg">
                                            <i class="mdi mdi-bank"></i>
                                        </div>
                                        <div class="text-white">
                                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">HSBC</p>
                                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$161</h3>
                                                <small class="mb-0">Saldo</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 grid-margin stretch-card">
                            <div class="card border-0 border-radius-2 bg-warning">
                                <div class="card-body">
                                    <div class="d-flex flex-md-column flex-xl-row flex-wrap  align-items-center justify-content-between">
                                        <div class="icon-rounded-inverse-warning icon-rounded-lg">
                                            <i class="mdi mdi-currency-usd"></i>
                                        </div>
                                        <div class="text-white">
                                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Efectivo</p>
                                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$231</h3>
                                                <small class="mb-0">Saldo</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title">Ultimos Movimientos</p>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="text-muted mb-3">Estos son los ultimos mocimientos registrados</p>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr class="border-top-0">
                                                    <th class="text-muted">Invoice</th>
                                                    <th class="text-muted">Customer</th>
                                                    <th class="text-muted">Ship</th>
                                                    <th class="text-muted">Best Price</th>
                                                    <th class="text-muted">Purchsed Price</th>
                                                    <th class="text-muted">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>50014</td>
                                                    <td>David Grey</td>
                                                    <td>Italy</td>
                                                    <td class="font-weight-bold">$6300</td>
                                                    <td>$2100</td>
                                                    <td>
                                                        <div class="badge badge-success badge-fw">Progress</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>50015</td>
                                                    <td>Stella Johnson</td>
                                                    <td>Brazil</td>
                                                    <td class="font-weight-bold">$4500</td>
                                                    <td>$4300</td>
                                                    <td>
                                                        <div class="badge badge-warning badge-fw">Open</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>50016</td>
                                                    <td>Marina Michel</td>
                                                    <td>Japan</td>
                                                    <td class="font-weight-bold">$4300</td>
                                                    <td>$6440</td>
                                                    <td>
                                                        <div class="badge badge-danger badge-fw">On hold</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>50017</td>
                                                    <td>John Doe</td>
                                                    <td>India</td>
                                                    <td class="font-weight-bold">$6400</td>
                                                    <td>$2200</td>
                                                    <td>
                                                        <div class="badge badge-success badge-fw">Progress</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>50015</td>
                                                    <td>Stella Johnson</td>
                                                    <td>Brazil</td>
                                                    <td class="font-weight-bold">$4500</td>
                                                    <td>$4300</td>
                                                    <td>
                                                        <div class="badge badge-warning badge-fw">Open</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>50014</td>
                                                    <td>David Grey</td>
                                                    <td>Italy</td>
                                                    <td class="font-weight-bold">$6300</td>
                                                    <td>$2100</td>
                                                    <td>
                                                        <div class="badge badge-success badge-fw">Progress</div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-3 grid-margin grid-margin-xl-0 stretch-card">
                            <div class="card">
                                <div class="card-body pb-0">
                                    <p class="card-title mb-xl-0">Distribucion</p>
                                </div>
                                <canvas id="distribution-chart"></canvas>
                                <div class="card-body">
                                    <div id="distribution-legend" class="distribution-chart-legend pt-4 pb-3"></div>
                                    <button class="btn btn-outline-light text-dark d-block mx-auto mt-2">Ver mas</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 stretch-card">
                            <div class="card">
                                <div class="row">
                                    <div class="col-md-7 col-lg-6 col-xl-7">
                                        <div class="card-body h-100 d-flex flex-column">
                                            <p class="card-title">Reporte de Movimientos</p>
                                            <p class="text-muted mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia id beatae sint dolorum quod ducimus quisquam ut minima atque quaerat.</p>
                                            <canvas id="sale-report-chart"></canvas>
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-lg-6 col-xl-5">
                                        <div class="card-body">
                                            <p class="card-title">Sales report overview</p>
                                            <p class="pb-2 text-muted">Sale information on advertising, exhibitions, market research, online media, customer desires, PR and much more</p>
                                            <div class="d-flex flex-wrap justify-content-start mt-3 mr-4">
                                                <div class="mr-3">
                                                    <p class="mb-0">Downloads</p>
                                                    <h4>13,956</h4>
                                                </div>
                                                <div class="mr-3">
                                                    <p class="mb-0">Purchases</p>
                                                    <h4>55,123</h4>
                                                </div>
                                                <div class="mr-3">
                                                    <p class="mb-0">Users</p>
                                                    <h4>29829</h4>
                                                </div>
                                            </div>
                                            <div class="d-flex mb-3">
                                                <i class="mdi mdi-arrow-expand-up mb-0 text-success mr-2 mt-1"></i>
                                                <p class="mb-0 text-dark">15% more than last week</p>
                                            </div>
                                            <div class="d-flex flex-wrap mb-5">
                                                <button class="btn btn-info mt-3 mr-2">Update</button>
                                                <button class="btn btn-outline-light mt-3 text-dark">More</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- cat -->

                </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
                <footer class="footer">
                    <div class="d-sm-flex justify-content-center justify-content-sm-between">
                        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2019 <a href="http://www.candrasistemas.com/" target="_blank">Candra Sistemas</a>. All rights reserved.</span>
                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Development in Progress <i class="mdi mdi-heart text-danger"></i></span>
                    </div>
                </footer>
                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/hoverable-collapse.js"></script>
    <script src="js/template.js"></script>
    <script src="js/settings.js"></script>
    <script src="js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="js/dashboard.js"></script>
    <!-- End custom js for this page-->
</body>

<!-- Mirrored from www.urbanui.com/fily/template/demo/vertical-hidden-toggle/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 18 Oct 2019 17:11:31 GMT -->
</html>
