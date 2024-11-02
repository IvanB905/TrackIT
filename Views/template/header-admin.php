<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--favicon-->
    <link rel="icon" href="<?php echo BASE_URL; ?>assets/images/icono.png" type="image/png" />
    <link href="<?php echo BASE_URL; ?>assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
    <link href="<?php echo BASE_URL; ?>assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
    <!-- loader-->
    <link href="<?php echo BASE_URL; ?>assets/css/pace.min.css" rel="stylesheet" />
    <script src="<?php echo BASE_URL; ?>assets/js/pace.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="<?php echo BASE_URL; ?>assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo BASE_URL; ?>assets/css/bootstrap-extended.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link href="<?php echo BASE_URL; ?>assets/css/app.css" rel="stylesheet">
    <link href="<?php echo BASE_URL; ?>assets/css/icons.css" rel="stylesheet">
    <!-- Theme Style CSS -->
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/dark-theme.css" />
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/semi-dark.css" />
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/header-colors.css" />
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL . 'assets/DataTables/datatables.min.css'; ?>">
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/dropzone.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/estilos.css" />
    <title><?php echo TITLE . ' - ' . $data['title']; ?></title>
</head>

<body>
    <!--wrapper-->
    <div class="wrapper">
        <!--sidebar wrapper -->
        <div class="sidebar-wrapper" data-simplebar="true">
            <div class="sidebar-header">
                <div>
                    <img src="<?php echo BASE_URL; ?>assets/images/icono.png" class="logo-icon" alt="logo icon">
                </div>
                <div>
                    <h4 class="logo-text"><?php echo TITLE; ?></h4>
                </div>
                <div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
                </div>
            </div>
            <!--navigation-->
            <ul class="metismenu" id="menu">
                <li class="menu-label">Entradas</li>
                <li>
                    <a href="<?php echo BASE_URL . 'admin/home'; ?>">
                        <div class="parent-icon"><i class='bx bx-home-circle'></i>
                        </div>
                        <div class="menu-title">Inicio</div>
                    </a>
                </li>
                <li>
                    <a href="<?php echo BASE_URL . 'usuarios'; ?>">
                        <div class="parent-icon"><i class='fas fa-user'></i>
                        </div>
                        <div class="menu-title">Usuarios</div>
                    </a>
                </li>
                <li>
                    <a href="<?php echo BASE_URL . 'categorias'; ?>">
                        <div class="parent-icon"><i class="fas fa-tags"></i>
                        </div>
                        <div class="menu-title">Categorias</div>
                    </a>
                </li>
                <li>
                    <a href="#" class="has-arrow">
                        <div class="parent-icon"> <i class="fas fa-list"></i>
                        </div>
                        <div class="menu-title">Productos</div>
                    </a>
                    <ul>
                        <li> <a href="<?php echo BASE_URL . 'equipodecomputo'; ?>"><i class="bx bx-right-arrow-alt"></i>Equipo de computo</a>
                        </li>
                        <li> <a href="<?php echo BASE_URL . 'impresora'; ?>"><i class="bx bx-right-arrow-alt"></i>Impresora</a>
                        </li>
                        <li> <a href="<?php echo BASE_URL . 'etiquetadora'; ?>"><i class="bx bx-right-arrow-alt"></i>Etiquetadora</a>
                        </li>
                        <li> <a href="<?php echo BASE_URL . 'perifericos'; ?>"><i class="bx bx-right-arrow-alt"></i>Perifericos</a>
                        </li>
                        <li> <a href="<?php echo BASE_URL . 'celulares'; ?>"><i class="bx bx-right-arrow-alt"></i>CELULARES</a>
                        </li>
                        <li> <a href="ecommerce-products-details.html"><i class="bx bx-right-arrow-alt"></i>TELEFONO IP</a>
                        </li>
                        <li> <a href="ecommerce-add-new-products.html"><i class="bx bx-right-arrow-alt"></i>EQUIPOS DE RED</a>
                        </li>
                    </ul>
                </li>    
                <li>
                    <a href="<?php echo BASE_URL . 'equipodecomputo'; ?>">
                        <div class="parent-icon"> <i class="fas fa-bell"></i>
                        </div>
                        <div class="menu-title">Pedidos</div>
                    </a>
                </li>   
                <li>
                    <a href="<?php echo BASE_URL . 'sedes'; ?>">
                        <div class="parent-icon"><i class='fa-solid fa-building-flag'></i>
                        </div>
                        <div class="menu-title">Sedes</div>
                    </a>
                </li>
                <li>
                    <a href="<?php echo BASE_URL . 'areas'; ?>">
                        <div class="parent-icon"><i class="fa-solid fa-chart-area"></i>
                        </div>
                        <div class="menu-title">Areas</div>
                    </a>
                </li>
                <li>
                    <a href="#" class="has-arrow">
                        <div class="parent-icon"> <i class="fa-solid fa-store"></i>
                        </div>
                        <div class="menu-title">Almacen</div>
                    </a>
                    <ul>
                        <li> <a href="ecommerce-products.html"><i class="bx bx-right-arrow-alt"></i>Nuevo</a>
                        </li>
                        <li> <a href="ecommerce-products-details.html"><i class="bx bx-right-arrow-alt"></i>Lista</a>
                        </li>
                        <li> <a href="ecommerce-add-new-products.html"><i class="bx bx-right-arrow-alt"></i>Buscar</a>
                    </ul>
                <!--end navigation-->
        </div>
        <!--end sidebar wrapper -->
        <!--start header -->
        <header>
            <div class="topbar d-flex align-items-center">
                <nav class="navbar navbar-expand">
                    <div class="mobile-toggle-menu"><i class='bx bx-menu'></i>
                    </div>
                    <div class="search-bar flex-grow-1">

                    </div>
                    <div class="user-box dropdown">
                        <a class="d-flex align-items-center nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="<?php echo BASE_URL; ?>assets/img/logo.png" class="user-img" alt="user avatar">
                            <div class="user-info ps-3">
                                <p class="user-name mb-0"><?php echo $_SESSION['nombre_usuario']; ?></p>
                                <p class="designattion mb-0"><?php echo $_SESSION['email']; ?></p>
                            </div>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="javascript:;"><i class="bx bx-user"></i><span>Profile</span></a>
                            </li>

                            <div class="dropdown-divider mb-0"></div>
                            </li>
                            <li><a class="dropdown-item" href="<?php BASE_URL . 'admin/salir'; ?>"><i class='bx bx-log-out-circle'></i><span>Logout</span></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
        <!--end header -->
        <!--start page wrapper -->
        <div class="page-wrapper">
            <div class="page-content">