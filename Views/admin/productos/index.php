<?php include_once 'Views/template/header-admin.php'; ?>

<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#listaProducto" type="button" role="tab" aria-controls="listaProducto" aria-selected="true">Productos</button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#nuevoProducto" type="button" role="tab" aria-controls="nuevoProducto" aria-selected="false">Nuevo</button>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="listaProducto" role="tabpanel" aria-labelledby="home-tab">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover align-middle" style="width: 100%;" id="tblProductos">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Tipo equipo</th>
                                <th>Sede</th>
                                <th>Area</th>
                                <th>Marca</th>
                                <th>modelo</th>
                                <th>serial</th>
                                <th>IP Asignada</th>
                                <th>mac_equipo</th>
                                <th>nombre_equipo</th>
                                <th>Sistema_operativo</th>
                                <th>office_licenciado</th>
                                <th>Antivirus</th>
                                <th>VPN</th>
                                <th>Activo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="nuevoProducto" role="tabpanel" aria-labelledby="profile-tab">
        <div class="card">
            <div class="card-body p-5">
                <form id="frmRegistro">
                    <div class="row">
                        <input type="hidden" id="id" name="id">
                        <input type="hidden" id="imagen_actual" name="imagen_actual">
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="codigo">Código</label>
                                <input id="nombre" class="form-control" type="text" name="codigo" placeholder="Codigo">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group mb-2">
                                <label class="form-label" for="categoria">Tipo de Equipo</label>
                                <select id="categoria" class="form-control" name="categoria">
                                    <option value="">Seleccionar</option>
                                    <?php foreach ($data['categorias'] as $categoria) { ?>
                                        <option value="<?php echo $categoria['id']; ?>"><?php echo $categoria['categoria']; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group mb-2">
                                <label class="form-label" for="sede">Sedes</label>
                                <select id="sede" class="form-control" name="sede">
                                    <option value="">Seleccionar</option>
                                    <?php foreach ($data['sedes'] as $sede) { ?>
                                        <option value="<?php echo $sede['id']; ?>"><?php echo $sede['sede']; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="area">Área</label>
                                <input id="area" class="form-control" type="text" name="area" placeholder="Área">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="marca">Marca</label>
                                <input id="marca" class="form-control" type="text" name="marca" placeholder="Marca">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="modelo">Modelo</label>
                                <input id="modelo" class="form-control" type="text" name="modelo" placeholder="Modelo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="serial">Serial</label>
                                <input id="serial" class="form-control" type="text" name="serial" placeholder="Serial">
                            </div>
                        </div>
                        <div class="col-md-2" id="ipAsignadaDiv" style="display: none;">
                            <div class="form-group mb-2">
                                <label class="form-label" for="producto_ip">IP Asignada</label>
                                <input id="producto_ip" class="form-control" type="text" name="producto_ip" placeholder="IP Asignada">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="mac_equipo">Mac Equipo</label>
                                <input id="mac_equipo" class="form-control" type="text" name="mac_equipo" placeholder="Mac Equipo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="sistema_operativo">Sistema Operativo</label>
                                <input id="sistema_operativo" class="form-control" type="text" name="sistema_operativo" placeholder="Sistema Operativo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="office_licenciado">Office Licenciado</label>
                                <input id="office_licenciado" class="form-control" type="text" name="office_licenciado" placeholder="Office Licenciado">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="antivirus">Antivirus</label>
                                <input id="antivirus" class="form-control" type="text" name="antivirus" placeholder="Antivirus">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="vpn">VPN</label>
                                <input id="vpn" class="form-control" type="text" name="vpn" placeholder="VPN">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="extension">Extensión</label>
                                <input id="extension" class="form-control" type="text" name="extension" placeholder="Extensión">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="nombre_equipo">Nombre Equipo</label>
                                <input id="nombre_equipo" class="form-control" type="text" name="nombre_equipo" placeholder="Nombre Equipo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="activo">Activo</label>
                                <input id="activo" class="form-control" type="text" name="activo" placeholder="Activo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="cargo">Cargo</label>
                                <input id="cargo" class="form-control" type="text" name="cargo" placeholder="Cargo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="imei_1">IMEI 1</label>
                                <input id="imei_1" class="form-control" type="text" name="imei_1" placeholder="IMEI 1">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="imei_2">IMEI 2</label>
                                <input id="imei_2" class="form-control" type="text" name="imei_2" placeholder="IMEI 2">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="numero_sim">N° de SIM</label>
                                <input id="numero_sim" class="form-control" type="text" name="numero_sim" placeholder="N° de SIM">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="precio">Correo</label>
                                <input id="precio" class="form-control" type="text" name="precio" placeholder="Precio">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="precio">Contraseña</label>
                                <input id="precio" class="form-control" type="text" name="precio" placeholder="Precio">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="precio">Fecha de Entrega</label>
                                <input id="precio" class="form-control" type="text" name="precio" placeholder="Precio">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group mb-2">
                                <label for="imagen">Imagen (Opcional)</label>
                                <input id="imagen" type="file" class="form-control" name="imagen">
                            </div>
                        </div>
                    </div>
                    <div class="text-end">
                        <button class="btn btn-primary" type="submit" id="btnAccion">Registrar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div id="modalGaleria" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Imagenes del Producto</h5>
                <button class="btn-close" data-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <form action="<?php echo BASE_URL . 'productos/galeriaImagenes'; ?>" class="dropzone">
                    <input type="hidden" id="idProducto" name="idProducto">
                </form>
                <div class="text-end mt-3">
                    <button class="btn btn-primary" type="button" id="btnProcesar">Subir Imagenes</button>
                </div>
                <div class="card mt-3">
                    <div class="card-body">
                        <div class="row justify-content-between" id="containerGaleria">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<?php include_once 'Views/template/footer-admin.php'; ?>

<script src="<?php echo BASE_URL . 'assets/js/modulos/productos.js'; ?>"></script>

</body>

</html>