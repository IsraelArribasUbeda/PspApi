check = document.getElementById("inputCheck");

function iniciarSesion(correo, contraseña) {
  if (correo == "" || contraseña == "") {
    alert("No ha introducido todos los datos");
  }
  fetch("http://127.0.0.1:5000/usuarios")
    .then((ok) => {
      console.log(ok);
      return ok.json();
    })
    .then((ok1) => {
      ok1.usuarios.forEach((element) => {
        if (correo == element.Correo && contraseña == element.Contraseña) {
          setTimeout(() => {
            window.location.href = "../PAGINAADMIN/PaginaPrincipal.html";
          }, 1500);
        }
      });
    })
    .catch((err) => {
      alert("Conexion incorrecta");
    });
}
