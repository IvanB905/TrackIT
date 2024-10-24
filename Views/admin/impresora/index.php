<?php include_once 'Views/template/header-admin.php'; ?>

<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#listaEquipo" type="button" role="tab" aria-controls="listaEquipo" aria-selected="true">Impresoras</button>
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
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Serial</th>
                                <th>IP Asignada</th>
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
                        <div class="col-md-2" id="ipAsignadaDiv">
                            <div class="form-group mb-2">
                                <label class="form-label" for="IP_Asignada">IP Asignada</label>
                                <input id="IP_Asignada" class="form-control" type="text" name="IP_Asignada" placeholder="IP Asignada">
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

<script src="<?php echo BASE_URL . 'assets/js/modulos/impresora.js'; ?>"></script>

</body>

</html>