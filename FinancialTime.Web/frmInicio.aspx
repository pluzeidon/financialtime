<%@ Page Title="" Language="C#" MasterPageFile="~/FinancialTime.Master" AutoEventWireup="true" CodeBehind="frmInicio.aspx.cs" Inherits="FinancialTime.Web.frmInicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
