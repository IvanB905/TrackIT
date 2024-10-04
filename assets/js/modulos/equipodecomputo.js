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
            url: base_url + "equipodecomputo/listar",
            dataSrc: "",
        },
        columns: [
            { data: "Codigo_Inventario" },
            { data: "categoria" },
            { data: "Sede" },
            { data: "Area" },
            { data: "Marca" },
            { data: "Modelo" },
            { data: "Serial" },
            { data: "IP_Asignada" },
            { data: "MAC_Equipo" },
            { data: "Nombre_Equipo" },
            { data: "Sistema_Operativo" },
            { data: "Office_Licenciado" },
            { data: "Antivirus" },
            { data: "VPN" },
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
            const url = base_url + "equipodecomputo/obtenerNuevoCodigo";
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
        const id = document.querySelector("#id").value; // Campo oculto para verificar si es edición
        let url;

        if (id) { // Si existe un ID, es una actualización
            url = base_url + "equipodecomputo/modificar"; // URL corregida para modificar
        } else { // Si no existe un ID, es un registro nuevo
            url = base_url + "equipodecomputo/registrar";
        }

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
                    btnAccion.textContent = "Registrar"; // Regresar a estado inicial
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
        }, 1500);
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
            const url = base_url + "equipodecomputo/delete/" + idEqu;
            const http = new XMLHttpRequest();
            http.open("GET", url, true);
            http.send();
            http.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    const res = JSON.parse(this.responseText);
                    if (res.icono == "success") {
                        tblEquipos.ajax.reload();
                    }
                    Swal.fire("Aviso?", res.msg.toUpperCase(), res.icono);
                }
            };
        }
    });
}

function editEqu(idEqu) {
    const url = base_url + "equipodecomputo/edit/" + idEqu;
    const http = new XMLHttpRequest();
    http.open("GET", url, true);
    http.send();
    http.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            const res = JSON.parse(this.responseText);
            document.querySelector("#id").value = res.id || ""; // Asigna el ID del equipo al campo oculto
            document.querySelector("#Codigo_Inventario").value = res.Codigo_Inventario || ""; // Mantiene el código de inventario actual
            document.querySelector("#categoria").value = res.id_categoria || "";
            document.querySelector("#Sede").value = res.id_sede || "";
            document.querySelector("#Area").value = res.id_area || "";
            document.querySelector("#Marca").value = res.Marca || "";
            document.querySelector("#Modelo").value = res.Modelo || "";
            document.querySelector("#Serial").value = res.Serial || "";
            document.querySelector("#IP_Asignada").value = res.IP_Asignada || "";
            document.querySelector("#MAC_Equipo").value = res.MAC_Equipo || "";
            document.querySelector("#Nombre_Equipo").value = res.Nombre_Equipo || "";
            document.querySelector("#Sistema_Operativo").value = res.Sistema_Operativo || "";
            document.querySelector("#Office_Licenciado").value = res.Office_Licenciado || "";
            document.querySelector("#Antivirus").value = res.Antivirus || "";
            document.querySelector("#VPN").value = res.VPN || "";
            document.querySelector("#imagen_actual").value = res.imagen || "";
            btnAccion.textContent = "Actualizar";
            firstTab.show();
        }
    };
}

function agregarImagenes(idEqu) {
    const url = base_url + "equipodecomputo/verGaleria/" + idEqu;
    const http = new XMLHttpRequest();
    http.open("GET", url, true);
    http.send();
    http.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            const res = JSON.parse(this.responseText);
            document.querySelector("#idequipodecomputo").value = idEqu;
            let html = '';
            let destino = base_url + 'assets/images/equipodecomputo/' + idEqu + '/';
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
    const url = base_url + "equipodecomputo/eliminarImg";
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
            }
        }
    };
}
