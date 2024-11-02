<?php include_once 'Views/template/header-admin.php'; ?>

<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#listaEquipo" type="button" role="tab" aria-controls="listaEquipo" aria-selected="true">Celulares</button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#nuevoEquipo" type="button" role="tab" aria-controls="nuevoEquipo" aria-selected="false">Nuevo</button>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="listaEquipo" role="tabpanel" aria-labelledby="home-tab">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover align-middle" style="width: 100%;" id="tblEquipos">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Tipo equipo</th>
                                <th>Sede</th>
                                <th>Area</th>
                                <th>Cargo</th>
                                <th>IMEI 1</th>
                                <th>IMEI 2</th>
                                <th>MAC Equipo</th>
                                <th>N° DE SIM</th>
                                <th>CORREO</th>
                                <th>CONTRASEÑA</th>
                                <th>FECHA DE ENTREGA</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Serial</th>
                                <th>Imagen</th>
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
    <div class="tab-pane fade" id="nuevoEquipo" role="tabpanel" aria-labelledby="profile-tab">
        <div class="card">
            <div class="card-body p-5">
                <form id="frmRegistro">
                    <div class="row">
                        <input type="hidden" id="id" name="id">
                        <input type="hidden" id="imagen_actual" name="imagen_actual">
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Codigo_Inventario">Código</label>
                                <input id="Codigo_Inventario" class="form-control" type="text" name="Codigo_Inventario" placeholder="Código" readonly>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group mb-2">
                                <label class="form-label" for="categoria">Tipo de Equipo</label>
                                <select id="categoria" class="form-control" name="categoria" >
                                    <option value="">Seleccionar</option>
                                    <?php foreach ($data['categorias'] as $categoria) { ?>
                                        <option value="<?php echo $categoria['id']; ?>"><?php echo $categoria['categoria']; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Sede">Sedes</label>
                                <select id="Sede" class="form-control" name="Sede">
                                    <option value="">Seleccionar</option>
                                    <?php foreach ($data['sedes'] as $sede) { ?>
                                        <option value="<?php echo $sede['id']; ?>"><?php echo $sede['sede']; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Area">Área</label>
                                <select id="Area" class="form-control" name="Area" style="max-height: 150px; overflow-y: auto;">
                                    <option value="">Seleccionar</option>
                                    <?php foreach ($data['areas'] as $area) { ?>
                                        <option value="<?php echo $area['id']; ?>"><?php echo $area['area']; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Cargo">Cargo</label>
                                <input id="Cargo" class="form-control" type="text" name="Cargo" placeholder="Cargo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="IMEI_1">IMEI_1</label>
                                <input id="IMEI_1" class="form-control" type="text" name="IMEI_1" placeholder="IMEI_1">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="IMEI_2">IMEI_2</label>
                                <input id="IMEI_2" class="form-control" type="text" name="IMEI_2" placeholder="IMEI_2">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="MAC_Equipo">MAC_Equipo</label>
                                <input id="MAC_Equipo" class="form-control" type="text" name="MAC_Equipo" placeholder="MAC_Equipo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="N_DE_SIM">N°_DE_SIM</label>
                                <input id="N_DE_SIM" class="form-control" type="text" name="N_DE_SIM" placeholder="N_DE_SIM">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Correo">Correo</label>
                                <input id="Correo" class="form-control" type="text" name="Correo" placeholder="Correo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Contraseña">Contraseña</label>
                                <input id="Contraseña" class="form-control" type="text" name="Contraseña" placeholder="Contraseña">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Fecha_de_Entrega">Fecha_de_Entrega</label>
                                <input id="Fecha_de_Entrega" class="form-control" type="text" name="Fecha_de_Entrega" placeholder="Fecha_de_Entrega">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Marca">Marca</label>
                                <input id="Marca" class="form-control" type="text" name="Marca" placeholder="Marca">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Modelo">Modelo</label>
                                <input id="Modelo" class="form-control" type="text" name="Modelo" placeholder="Modelo">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group mb-2">
                                <label class="form-label" for="Serial">Serial</label>
                                <input id="Serial" class="form-control" type="text" name="Serial" placeholder="Serial">
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
                <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <form action="<?php echo BASE_URL . 'impresora/galeriaImagenes'; ?>" class="dropzone">
                    <input type="hidden" id="idimpresora" name="idimpresora">
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

<script src="<?php echo BASE_URL . 'assets/js/modulos/celulares.js'; ?>"></script>

</body>

</html>