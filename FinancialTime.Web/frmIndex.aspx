﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmIndex.aspx.cs" Inherits="FinancialTime.Web.frmIndex" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from www.urbanui.com/fily/template/demo/vertical-hidden-toggle/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 18 Oct 2019 17:11:02 GMT -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Fily Admin</title>
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
                    <img src="http://www.urbanui.com/fily/template/images/logo.svg" alt="logo" /></a>
                <a class="navbar-brand brand-logo-mini" href="index.html">
                    <img src="http://www.urbanui.com/fily/template/images/logo-mini.svg" alt="logo" /></a>
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
                            <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
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
                            <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
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
                            <span class="nav-profile-name">Don Richards</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                            <a class="dropdown-item">
                                <i class="mdi mdi-settings text-primary"></i>
                                Settings
                            </a>
                            <a class="dropdown-item">
                                <i class="mdi mdi-logout text-primary"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                    <li class="nav-item nav-settings d-none d-lg-flex">
                        <a class="nav-link" href="#">
                            <i class="mdi mdi-dots-vertical"></i>
                        </a>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                    <span class="mdi mdi-menu"></span>
                </button>
            </div>
        </nav>
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_settings-panel.html -->
            <div class="theme-setting-wrapper">
                <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
                <div id="theme-settings" class="settings-panel">
                    <i class="settings-close mdi mdi-close"></i>
                    <p class="settings-heading">SIDEBAR SKINS</p>
                    <div class="sidebar-bg-options selected" id="sidebar-light-theme">
                        <div class="img-ss rounded-circle bg-light border mr-3"></div>
                        Light</div>
                    <div class="sidebar-bg-options" id="sidebar-dark-theme">
                        <div class="img-ss rounded-circle bg-dark border mr-3"></div>
                        Dark</div>
                    <p class="settings-heading mt-2">HEADER SKINS</p>
                    <div class="color-tiles mx-0 px-4">
                        <div class="tiles success"></div>
                        <div class="tiles warning"></div>
                        <div class="tiles danger"></div>
                        <div class="tiles info"></div>
                        <div class="tiles dark"></div>
                        <div class="tiles default"></div>
                    </div>
                </div>
            </div>
            <div id="right-sidebar" class="settings-panel">
                <i class="settings-close mdi mdi-close"></i>
                <ul class="nav nav-tabs" id="setting-panel" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
                    </li>
                </ul>
                <div class="tab-content" id="setting-content">
                    <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
                        <div class="add-items d-flex px-3 mb-0">
                            <form class="form w-100">
                                <div class="form-group d-flex">
                                    <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                                    <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                                </div>
                            </form>
                        </div>
                        <div class="list-wrapper px-3">
                            <ul class="d-flex flex-column-reverse todo-list">
                                <li>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="checkbox" type="checkbox">
                                            Team review meeting at 3.00 PM
                                        </label>
                                    </div>
                                    <i class="remove mdi mdi-close-circle-outline"></i>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="checkbox" type="checkbox">
                                            Prepare for presentation
                                        </label>
                                    </div>
                                    <i class="remove mdi mdi-close-circle-outline"></i>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="checkbox" type="checkbox">
                                            Resolve all the low priority tickets due today
                                        </label>
                                    </div>
                                    <i class="remove mdi mdi-close-circle-outline"></i>
                                </li>
                                <li class="completed">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="checkbox" type="checkbox" checked>
                                            Schedule meeting for next week
                                        </label>
                                    </div>
                                    <i class="remove mdi mdi-close-circle-outline"></i>
                                </li>
                                <li class="completed">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="checkbox" type="checkbox" checked>
                                            Project review
                                        </label>
                                    </div>
                                    <i class="remove mdi mdi-close-circle-outline"></i>
                                </li>
                            </ul>
                        </div>
                        <div class="events py-4 border-bottom px-3">
                            <div class="wrapper d-flex mb-2">
                                <i class="mdi mdi-circle-outline text-primary mr-2"></i>
                                <span>Feb 11 2018</span>
                            </div>
                            <p class="mb-0 font-weight-thin text-gray">Creating component page</p>
                            <p class="text-gray mb-0">build a js based app</p>
                        </div>
                        <div class="events pt-4 px-3">
                            <div class="wrapper d-flex mb-2">
                                <i class="mdi mdi-circle-outline text-primary mr-2"></i>
                                <span>Feb 7 2018</span>
                            </div>
                            <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
                            <p class="text-gray mb-0 ">Call Sarah Graves</p>
                        </div>
                    </div>
                    <!-- To do section tab ends -->
                    <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
                        <div class="d-flex align-items-center justify-content-between border-bottom">
                            <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
                            <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
                        </div>
                        <ul class="chat-list">
                            <li class="list active">
                                <div class="profile">
                                    <img src="images/faces/face1.jpg" alt="image"><span class="online"></span></div>
                                <div class="info">
                                    <p>Thomas Douglas</p>
                                    <p>Available</p>
                                </div>
                                <small class="text-muted my-auto">19 min</small>
                            </li>
                            <li class="list">
                                <div class="profile">
                                    <img src="images/faces/face2.jpg" alt="image"><span class="offline"></span></div>
                                <div class="info">
                                    <div class="wrapper d-flex">
                                        <p>Catherine</p>
                                    </div>
                                    <p>Away</p>
                                </div>
                                <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                                <small class="text-muted my-auto">23 min</small>
                            </li>
                            <li class="list">
                                <div class="profile">
                                    <img src="images/faces/face3.jpg" alt="image"><span class="online"></span></div>
                                <div class="info">
                                    <p>Daniel Russell</p>
                                    <p>Available</p>
                                </div>
                                <small class="text-muted my-auto">14 min</small>
                            </li>
                            <li class="list">
                                <div class="profile">
                                    <img src="images/faces/face4.jpg" alt="image"><span class="offline"></span></div>
                                <div class="info">
                                    <p>James Richardson</p>
                                    <p>Away</p>
                                </div>
                                <small class="text-muted my-auto">2 min</small>
                            </li>
                            <li class="list">
                                <div class="profile">
                                    <img src="images/faces/face5.jpg" alt="image"><span class="online"></span></div>
                                <div class="info">
                                    <p>Madeline Kennedy</p>
                                    <p>Available</p>
                                </div>
                                <small class="text-muted my-auto">5 min</small>
                            </li>
                            <li class="list">
                                <div class="profile">
                                    <img src="images/faces/face6.jpg" alt="image"><span class="online"></span></div>
                                <div class="info">
                                    <p>Sarah Graves</p>
                                    <p>Available</p>
                                </div>
                                <small class="text-muted my-auto">47 min</small>
                            </li>
                        </ul>
                    </div>
                    <!-- chat tab ends -->
                </div>
            </div>
            <!-- partial -->
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">
                            <i class="mdi mdi-home menu-icon"></i>
                            <span class="menu-title">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/widgets/widgets.html">
                            <i class="mdi mdi-puzzle menu-icon"></i>
                            <span class="menu-title">Widgets</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                            <i class="mdi mdi-palette menu-icon"></i>
                            <span class="menu-title">UI Elements</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="ui-basic">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/accordions.html">Accordions</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/badges.html">Badges</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/breadcrumbs.html">Breadcrumbs</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/dropdowns.html">Dropdowns</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/modals.html">Modals</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/progress.html">Progress bar</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/pagination.html">Pagination</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/tabs.html">Tabs</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/tooltips.html">Tooltips</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#ui-advanced" aria-expanded="false" aria-controls="ui-advanced">
                            <i class="mdi mdi-layers menu-icon"></i>
                            <span class="menu-title">Advanced UI</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="ui-advanced">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/dragula.html">Dragula</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/clipboard.html">Clipboard</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/context-menu.html">Context menu</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/slider.html">Sliders</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/carousel.html">Carousel</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/colcade.html">Colcade</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/ui-features/loaders.html">Loaders</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
                            <i class="mdi mdi-view-headline menu-icon"></i>
                            <span class="menu-title">Form elements</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="form-elements">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/forms/basic_elements.html">Basic Elements</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/forms/advanced_elements.html">Advanced Elements</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/forms/validation.html">Validation</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/forms/wizard.html">Wizard</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#editors" aria-expanded="false" aria-controls="editors">
                            <i class="mdi mdi-pencil-box-outline menu-icon"></i>
                            <span class="menu-title">Editors</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="editors">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/forms/text_editor.html">Text editors</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/forms/code_editor.html">Code editors</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
                            <i class="mdi mdi-chart-pie menu-icon"></i>
                            <span class="menu-title">Charts</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="charts">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/charts/chartjs.html">ChartJs</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/charts/morris.html">Morris</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/charts/flot-chart.html">Flot</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/charts/google-charts.html">Google charts</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/charts/sparkline.html">Sparkline js</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/charts/c3.html">C3 charts</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/charts/chartist.html">Chartists</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/charts/justGage.html">JustGage</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
                            <i class="mdi mdi-grid-large menu-icon"></i>
                            <span class="menu-title">Tables</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="tables">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/tables/basic-table.html">Basic table</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/tables/data-table.html">Data table</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/tables/js-grid.html">Js-grid</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/tables/sortable-table.html">Sortable table</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/ui-features/popups.html">
                            <i class="mdi mdi-comment-alert menu-icon"></i>
                            <span class="menu-title">Popups</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/ui-features/notifications.html">
                            <i class="mdi mdi-bell menu-icon"></i>
                            <span class="menu-title">Notifications</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
                            <i class="mdi mdi-emoticon menu-icon"></i>
                            <span class="menu-title">Icons</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="icons">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/icons/flag-icons.html">Flag icons</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/icons/mdi.html">Mdi icons</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/icons/font-awesome.html">Font Awesome</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/icons/simple-line-icon.html">Simple line icons</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/icons/themify.html">Themify icons</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#maps" aria-expanded="false" aria-controls="maps">
                            <i class="mdi mdi-map menu-icon"></i>
                            <span class="menu-title">Maps</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="maps">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/maps/mapael.html">Mapael</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/maps/vector-map.html">Vector Map</a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/maps/google-maps.html">Google Map</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                            <i class="mdi mdi-account menu-icon"></i>
                            <span class="menu-title">User Pages</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="auth">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/samples/login.html">Login </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/login-2.html">Login 2 </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/register.html">Register </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/register-2.html">Register 2 </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/lock-screen.html">Lockscreen </a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
                            <i class="mdi mdi-alert-circle menu-icon"></i>
                            <span class="menu-title">Error pages</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="error">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/samples/error-404.html">404 </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/error-500.html">500 </a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                            <i class="mdi mdi-file menu-icon"></i>
                            <span class="menu-title">General Pages</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="general-pages">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/samples/blank-page.html">Blank Page </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/profile.html">Profile </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/faq.html">FAQ </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/faq-2.html">FAQ 2 </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/news-grid.html">News grid </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/timeline.html">Timeline </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/search-results.html">Search Results </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/portfolio.html">Portfolio </a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#e-commerce" aria-expanded="false" aria-controls="e-commerce">
                            <i class="mdi mdi-basket menu-icon"></i>
                            <span class="menu-title">E-commerce</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="e-commerce">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link" href="pages/samples/invoice.html">Invoice </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/pricing-table.html">Pricing Table </a></li>
                                <li class="nav-item"><a class="nav-link" href="pages/samples/orders.html">Orders </a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/apps/email.html">
                            <i class="mdi mdi-email menu-icon"></i>
                            <span class="menu-title">E-mail</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/apps/calendar.html">
                            <i class="mdi mdi-calendar-range menu-icon"></i>
                            <span class="menu-title">Calendar</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/apps/todo.html">
                            <i class="mdi mdi-playlist-check menu-icon"></i>
                            <span class="menu-title">Todo List</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/apps/gallery.html">
                            <i class="mdi mdi-image menu-icon"></i>
                            <span class="menu-title">Gallery</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/documentation/documentation.html">
                            <i class="mdi mdi-file-document-box-outline menu-icon"></i>
                            <span class="menu-title">Documentation</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-12 grid-margin">
                            <div class="card bg-white">
                                <div class="card-body d-flex align-items-center justify-content-between">
                                    <h4 class="mt-1 mb-1">Hi, Welcomeback!</h4>
                                    <button class="btn btn-info d-none d-md-block">Import</button>
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
                                            <i class="mdi mdi-arrow-top-right"></i>
                                        </div>
                                        <div class="text-white">
                                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Total Sales</p>
                                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$508</h3>
                                                <small class="mb-0">This month</small>
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
                                            <i class="mdi mdi-basket"></i>
                                        </div>
                                        <div class="text-white">
                                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Total Purchases</p>
                                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$387</h3>
                                                <small class="mb-0">This month</small>
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
                                            <i class="mdi mdi-chart-donut-variant"></i>
                                        </div>
                                        <div class="text-white">
                                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Total Orders</p>
                                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$161</h3>
                                                <small class="mb-0">This month</small>
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
                                            <i class="mdi mdi-chart-multiline"></i>
                                        </div>
                                        <div class="text-white">
                                            <p class="font-weight-medium mt-md-2 mt-xl-0 text-md-center text-xl-left">Total Growth</p>
                                            <div class="d-flex flex-md-column flex-xl-row flex-wrap align-items-baseline align-items-md-center align-items-xl-baseline">
                                                <h3 class="mb-0 mb-md-1 mb-lg-0 mr-1">$231</h3>
                                                <small class="mb-0">This month</small>
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
                                    <p class="card-title">Open Invoices</p>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="text-muted mb-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus, quibusdam eum, totam ut minus dolor eaque alias ratione repellat voluptate, libero beatae nobis facere quod. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cumque harum maxime quaerat quasi earum totam consectetur eius quisquam deleniti et.</p>
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
                        <div class="col-xl-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title">Total Sales</p>
                                    <p class="text-muted">Audience to which the users belonged while on the current date Audience to which the users belonged while on the current date Audience to which the users belonged while on the current date </p>
                                    <div class="d-flex flex-wrap mb-4 mt-4 pb-4">
                                        <div class="mr-4 mr-md-5">
                                            <p class="mb-0">Revenue</p>
                                            <h4>13,956</h4>
                                        </div>
                                        <div class="mr-4 mr-md-5">
                                            <p class="mb-0">Returns</p>
                                            <h4>27,219</h4>
                                        </div>
                                        <div class="mr-4 mr-md-5">
                                            <p class="mb-0">Queries</p>
                                            <h4>03,386</h4>
                                        </div>
                                        <div class="mr-4 mr-md-5">
                                            <p class="mb-0">Invoices</p>
                                            <h4>04,739</h4>
                                        </div>
                                    </div>
                                    <canvas id="total-sales-chart"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 grid-margin">
                            <div class="row">
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <p class="card-title">Users</p>
                                            <div class="d-flex flex-wrap align-items-baseline">
                                                <h2 class="mr-3">33,956</h2>
                                                <i class="mdi mdi-arrow-up mr-1 text-danger"></i><span>
                                                    <p class="mb-0 text-danger font-weight-medium">+2.12%</p>
                                                </span>
                                            </div>
                                            <p class="mb-0 text-muted">Total users world wide</p>
                                        </div>
                                        <canvas id="users-chart"></canvas>
                                    </div>
                                </div>
                                <div class="col-md-6 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <p class="card-title">Projects</p>
                                            <div class="d-flex flex-wrap align-items-baseline">
                                                <h2 class="mr-3">50.36%</h2>
                                                <i class="mdi mdi-arrow-up mr-1 text-success"></i><span>
                                                    <p class="mb-0 text-success font-weight-medium">+9.12%</p>
                                                </span>
                                            </div>
                                            <p class="mb-0 text-muted">Total users world wide</p>
                                        </div>
                                        <canvas id="projects-chart"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <p class="card-title">Downloads</p>
                                            <p class="text-muted mb-2">Watching ice melt. This is fun. Only you could make those words cute.</p>
                                            <div class="row mt-4">
                                                <div class="col-md-6 stretch-card">
                                                    <div class="row d-flex align-items-center">
                                                        <div class="col-6">
                                                            <div id="offlineProgress"></div>
                                                        </div>
                                                        <div class="col-6 pl-0">
                                                            <p class="mb-0">Offline</p>
                                                            <h2>45,324</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 stretch-card mt-4 mt-md-0">
                                                    <div class="row d-flex align-items-center">
                                                        <div class="col-6">
                                                            <div id="onlineProgress"></div>
                                                        </div>
                                                        <div class="col-6 pl-0">
                                                            <p class="mb-0">Online</p>
                                                            <h2>12,236</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-8 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-md-end flex-wrap">
                                        <p class="card-title">Tickets</p>
                                        <div class="dropdown mb-3 mb-md-0">
                                            <button class="btn btn-sm btn-outline-light dropdown-toggle text-dark" type="button" id="dropdownMenuDate1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                2018
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuDate1">
                                                <a class="dropdown-item" href="#">2015</a>
                                                <a class="dropdown-item" href="#">2016</a>
                                                <a class="dropdown-item" href="#">2017</a>
                                                <a class="dropdown-item" href="#">2018</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table tickets-table mb-2">
                                            <thead>
                                                <th class="text-muted pl-0">Name
                                                </th>
                                                <th></th>
                                                <th class="text-muted">Date
                                                </th>
                                                <th class="text-muted">Projects
                                                </th>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="pl-0">
                                                        <div class="icon-rounded-primary icon-rounded-md">
                                                            <h4 class="font-weight-medium">AL</h4>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">Alta Lucas</p>
                                                        <p class="text-muted mb-0">Connecticut</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">31 Aug 2018</p>
                                                        <p class="text-muted mb-0">9:30 am</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">6770 Verner Burgs</p>
                                                        <p class="text-muted mb-0">View on map</p>
                                                    </td>
                                                    <td class="pr-0">
                                                        <i class="mdi mdi-dots-horizontal icon-sm cursor-pointer"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pl-0">
                                                        <div class="icon-rounded-info icon-rounded-md">
                                                            <h4 class="font-weight-medium">TS</h4>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">Teresa Shaw</p>
                                                        <p class="text-muted mb-0">Florida</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">13 May 2018</p>
                                                        <p class="text-muted mb-0">10:30 am</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">1300 Gideon Divide Apt. 400</p>
                                                        <p class="text-muted mb-0">Start session</p>
                                                    </td>
                                                    <td class="pr-0">
                                                        <i class="mdi mdi-dots-horizontal icon-sm cursor-pointer"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pl-0">
                                                        <div class="icon-rounded-danger icon-rounded-md">
                                                            <h4 class="font-weight-medium">RU</h4>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">Rosa Underwood</p>
                                                        <p class="text-muted mb-0">North Dakota</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">02 Jan 2018</p>
                                                        <p class="text-muted mb-0">11:00 am</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">9576 Rempel Extension</p>
                                                        <p class="text-muted mb-0">End session</p>
                                                    </td>
                                                    <td class="pr-0">
                                                        <i class="mdi mdi-dots-horizontal icon-sm cursor-pointer"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pl-0">
                                                        <div class="icon-rounded-warning icon-rounded-md">
                                                            <h4 class="font-weight-medium">VR</h4>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">Vilson Rowa</p>
                                                        <p class="text-muted mb-0">Densar</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">05 Nov 2018</p>
                                                        <p class="text-muted mb-0">02:30 am</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">1072 Orion Expansion</p>
                                                        <p class="text-muted mb-0">On Way</p>
                                                    </td>
                                                    <td class="pr-0">
                                                        <i class="mdi mdi-dots-horizontal icon-sm cursor-pointer"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="pl-0">
                                                        <div class="icon-rounded-info icon-rounded-md">
                                                            <h4 class="font-weight-medium">TS</h4>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">Teresa Shaw</p>
                                                        <p class="text-muted mb-0">Florida</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">13 May 2018</p>
                                                        <p class="text-muted mb-0">10:30 am</p>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0">1300 Gideon Divide Apt. 400</p>
                                                        <p class="text-muted mb-0">Start session</p>
                                                    </td>
                                                    <td class="pr-0">
                                                        <i class="mdi mdi-dots-horizontal icon-sm cursor-pointer"></i>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title">Updates</p>
                                    <ul class="bullet-line-list mt-4">
                                        <li>
                                            <h6>User confirmation</h6>
                                            <p class="mt-2">Tonight's the night. And it's going to happen again and again. It has to happen. I'm thinking two circus clowns dancing. </p>
                                            <p class="text-muted mb-4">
                                                <i class="mdi mdi-clock-outline"></i>
                                                7 months ago.
                                            </p>
                                        </li>
                                        <li>
                                            <h6>Continuous evaluation</h6>
                                            <p class="mt-2">And it's going to happen again and again. It has to happen. I'm thinking two circus clowns dancing. Tonight's the night.  </p>
                                            <p class="text-muted mb-4">
                                                <i class="mdi mdi-clock-outline"></i>
                                                7 months ago.
                                            </p>
                                        </li>
                                        <li>
                                            <h6>Promotion</h6>
                                            <p class="mt-2">It has to happen. I'm thinking two circus clowns dancing. Tonight's the night. </p>
                                            <p class="text-muted">
                                                <i class="mdi mdi-clock-outline"></i>
                                                7 months ago.
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-3 grid-margin grid-margin-xl-0 stretch-card">
                            <div class="card">
                                <div class="card-body pb-0">
                                    <p class="card-title mb-xl-0">Distribution</p>
                                </div>
                                <canvas id="distribution-chart"></canvas>
                                <div class="card-body">
                                    <div id="distribution-legend" class="distribution-chart-legend pt-4 pb-3"></div>
                                    <button class="btn btn-outline-light text-dark d-block mx-auto mt-2">View More</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 stretch-card">
                            <div class="card">
                                <div class="row">
                                    <div class="col-md-7 col-lg-6 col-xl-7">
                                        <div class="card-body h-100 d-flex flex-column">
                                            <p class="card-title">Sale report</p>
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
                </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
                <footer class="footer">
                    <div class="d-sm-flex justify-content-center justify-content-sm-between">
                        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
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
