const frm = document.querySelector("#frmRegistro");
const btnAccion = document.querySelector("#btnAccion");
const containerGaleria = document.querySelector("#containerGaleria");
let tblEquipos;

var firstTabEl = document.querySelector("#myTab li:last-child button");
var firstTab = new bootstrap.Tab(firstTabEl);

const modalGaleria = new bootstrap.Modal(
    document.getElementById("modalGaleria")
);

let desc;

const btnProcesar = document.querySelector("#btnProcesar");

document.addEventListener("DOMContentLoaded", function () {
    
    tblEquipos = $("#tblEquipos").DataTable({
        ajax: {
            url: base_url + "celulares/listar",
            dataSrc: "",
        },
        columns: [
            { data: "Codigo_Inventario" },
            { data: "categoria" },
            { data: "Sede" },
            { data: "Area" },
            { data: "Cargo" },
            { data: "IMEI_1" },
            { data: "IMEI_2" },
            { data: "MAC_Equipo" },
            { data: "N_DE_SIM" },
            { data: "Correo" },
            { data: "Contraseña" },
            { data: "Fecha_de_Entrega" },
            { data: "Marca" },
            { data: "Modelo" },
            { data: "Serial" },
            { data: "imagen" },
            { data: "accion" },
        ],
        language,
        dom,
        buttons,
    });

    // Obtener el nuevo código solo si es un registro nuevo
    obtenerNuevoCodigo();
    
    // Función para obtener el nuevo código secuencial
    function obtenerNuevoCodigo() {
        // Solo obtener nuevo código si no hay un ID definido (registro nuevo)
        if (!document.querySelector("#id").value) {
            const url = base_url + "celulares/obtenerNuevoCodigo";
            const http = new XMLHttpRequest();
            http.open("GET", url, true);
            http.send();
            http.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    const res = JSON.parse(this.responseText);
                    if (res.icono == "success") {
                        document.querySelector("#Codigo_Inventario").value = res.codigo;
                    } else {
                        Swal.fire("Aviso", res.msg, "error");
                    }
                }
            };
        }
    }

    //submit equipos
    frm.addEventListener("submit", function (e) {
        e.preventDefault();
        let data = new FormData(this);
        const url = base_url + "celulares/registrar";
        const http = new XMLHttpRequest();
        http.open("POST", url, true);
        http.send(data);
        http.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                const res = JSON.parse(this.responseText);
                if (res.icono == "success") {
                    frm.reset();
                    tblEquipos.ajax.reload();
                    document.querySelector("#imagen").value = "";
                    btnAccion.textContent = "Registrar";
                    // Recargar la página
                    setTimeout(() => {
                        location.reload();
                    }, 1500);
                }
                Swal.fire("Aviso?", res.msg.toUpperCase(), res.icono);
            }
        };
    });

    //galeria de imagenes
    let myDropzone = new Dropzone(".dropzone", {
        dictDefaultMessage: "Arrastrar y Soltar Imágenes",
        acceptedFiles: ".png, .jpg, .jpeg",
        maxFiles: 10,
        addRemoveLinks: true,
        autoProcessQueue: false,
        parallelUploads: 10,
    });

    btnProcesar.addEventListener("click", function () {
        myDropzone.processQueue();
    });

    myDropzone.on("complete", function (file) {
        myDropzone.removeFile(file);
        Swal.fire("Aviso?", "IMÁGENES SUBIDAS", "success");
        setTimeout(() => {
            modalGaleria.hide();
            location.reload();
        }, 1500);
    });

    // Cambiar entre módulos
    document.querySelectorAll('button[data-bs-toggle="tab"]').forEach(function(tabButton) {
        tabButton.addEventListener('shown.bs.tab', function(event) {
            setTimeout(() => {
                location.reload();
            }, 500);
        });
    });
});

function eliminarEqu(idEqu) {
    Swal.fire({
        title: "Aviso?",
        text: "¿Está seguro de eliminar el registro?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Sí, Eliminar!",
    }).then((result) => {
        if (result.isConfirmed) {
            const url = base_url + "celulares/delete/" + idEqu;
            const http = new XMLHttpRequest();
            http.open("GET", url, true);
            http.send();
            http.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    const res = JSON.parse(this.responseText);
                    if (res.icono == "success") {
                        tblEquipos.ajax.reload();
                        setTimeout(() => {
                            location.reload();
                        }, 1500);
                    }
                    Swal.fire("Aviso?", res.msg.toUpperCase(), res.icono);
                }
            };
        }
    });
}

function editEqu(idEqu) {
    const url = base_url + "celulares/edit/" + idEqu;
    const http = new XMLHttpRequest();
    http.open("GET", url, true);
    http.send();
    http.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            const res = JSON.parse(this.responseText);
            document.querySelector("#id").value = res.id; 
            document.querySelector("#Codigo_Inventario").value = res.Codigo_Inventario; // Mantener el código existente al editar
            document.querySelector("#categoria").value = res.id_categoria;
            document.querySelector("#Sede").value = res.id_sede;
            document.querySelector("#Area").value = res.id_area;
            document.querySelector("#Cargo").value = res.Cargo;
            document.querySelector("#IMEI_1").value = res.IMEI_1;
            document.querySelector("#IMEI_2").value = res.IMEI_2;
            document.querySelector("#MAC_Equipo").value = res.MAC_Equipo;
            document.querySelector("#N_DE_SIM").value = res.N_DE_SIM;
            document.querySelector("#Correo").value = res.Correo;
            document.querySelector("#Contraseña").value = res.Contraseña;
            document.querySelector("#Fecha_de_Entrega").value = res.Fecha_de_Entrega;
            document.querySelector("#Marca").value = res.Marca;
            document.querySelector("#Modelo").value = res.Modelo;
            document.querySelector("#Serial").value = res.Serial;
            document.querySelector("#imagen_actual").value = res.imagen;
            btnAccion.textContent = "Actualizar";
            firstTab.show();
        }
    };
}

function agregarImagenes(idEqu) {
    const url = base_url + "celulares/verGaleria/" + idEqu;
    const http = new XMLHttpRequest();
    http.open("GET", url, true);
    http.send();
    http.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            const res = JSON.parse(this.responseText);
            document.querySelector("#idcelulares").value = idEqu;
            let html = '';
            let destino = base_url + 'assets/images/celulares/' + idEqu + '/';
            for (let i = 0; i < res.length; i++) {
                html += `<div class="col-md-3">
                    <img class="img-thumbnail" src="${destino + res[i]}">
                    <div class="d-grid">
                        <button class="btn btn-danger btnEliminarImagen" type="button" data-id="${idEqu}" data-name="${idEqu + '/' +res[i]}">Eliminar</button>
                    </div>     
                </div>`;
            }
            containerGaleria.innerHTML = html;
            eliminarImagen();
            modalGaleria.show();
        }
    };
}

function eliminarImagen() {
    let lista = document.querySelectorAll('.btnEliminarImagen');
    for (let i = 0; i < lista.length; i++) {
        lista[i].addEventListener('click', function () {
            let idEqu = lista[i].getAttribute('data-id');
            let nombre = lista[i].getAttribute('data-name');
            eliminar(idEqu, nombre);
        });
    }
}

function eliminar(idEqu, nombre) {
    const url = base_url + "celulares/eliminarImg";
    const http = new XMLHttpRequest();
    http.open("POST", url, true);
    http.send(JSON.stringify({
        url: nombre,
    }));
    http.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            const res = JSON.parse(this.responseText);
            Swal.fire("Aviso?", res.msg, res.icono);
            if (res.icono == 'success') {
                agregarImagenes(idEqu);
                setTimeout(() => {
                    location.reload();
                }, 1500);
            }
        }
    };
}