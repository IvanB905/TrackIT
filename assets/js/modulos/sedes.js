const nuevo = document.querySelector("#nuevo_registro");
const frm = document.querySelector("#frmRegistro");
const titleModal = document.querySelector("#titleModal");
const btnAccion = document.querySelector("#btnAccion");
const myModal = new bootstrap.Modal(document.getElementById("nuevoModal"));
let tblSedes;
document.addEventListener("DOMContentLoaded", function() {
    tblSedes = $("#tblSedes").DataTable({
        ajax: {
            url: base_url + "sedes/listar",
            dataSrc: "",
        },
        columns: [
            { data: "id" },
            { data: "sede" },
            { data: "imagen" },
            { data: "accion" }
        ],
        language,
        dom,
        buttons,
    });

    //levantar modal
    nuevo.addEventListener("click", function() {
        document.querySelector('#id').value = '';
        document.querySelector('#imagen_actual').value = '';
        document.querySelector('#imagen').value = '';
        titleModal.textContent = "NUEVA SEDE";
        btnAccion.textContent = 'Registrar';
        frm.reset();
        myModal.show();
        //$('#nuevoModal').modal('show');  
    });
    //submit sedes
    frm.addEventListener("submit", function(e) {
        e.preventDefault();
        let data = new FormData(this);
        const url = base_url + "sedes/registrar";
        const http = new XMLHttpRequest();
        http.open("POST", url, true);
        http.send(data);
        http.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                console.log(this.responseText);
                const res = JSON.parse(this.responseText);
                if (res.icono == "success") {
                    myModal.hide();
                    tblSedes.ajax.reload();
                    document.querySelector('#imagen').value = '';
                }
                Swal.fire("Aviso?", res.msg.toUpperCase(), res.icono);
            }
        }
    });
});

function eliminarSed(idSed) {
    Swal.fire({
        title: "Aviso?",
        text: "Esta seguro de eliminar el registro!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Si, Eliminar!",
    }).then((result) => {
        if (result.isConfirmed) {
            const url = base_url + "sedes/delete/" + idSed;
            const http = new XMLHttpRequest();
            http.open("GET", url, true);
            http.send();
            http.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    console.log(this.responseText);
                    const res = JSON.parse(this.responseText);
                    if (res.icono == "success") {
                        tblSedes.ajax.reload();
                    }
                    Swal.fire("Aviso?", res.msg.toUpperCase(), res.icono);
                }
            }
        }
    });
}

function editSed(idSed) {
    const url = base_url + "sedes/edit/" + idSed;
    const http = new XMLHttpRequest();
    http.open("GET", url, true);
    http.send();
    http.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            const res = JSON.parse(this.responseText);
            document.querySelector('#id').value = res.id;
            document.querySelector('#sede').value = res.sede;
            document.querySelector('#imagen_actual').value = res.imagen;
            btnAccion.textContent = 'Actualizar';
            titleModal.textContent = "MODIFICAR SEDE";
            myModal.show();
            //$('#nuevoModal').modal('show');
        }
    }
}