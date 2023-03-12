alerta = document.getElementById("alert");

function registro(nombre, correo, contraseña) {
  if (nombre == "" || correo == "" || contraseña == "") {
    alert("No ha introducido todos los datos");
  } else {
    fetch("http://127.0.0.1:5000/registro/", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        Nombre: nombre,
        Correo: correo,
        Contraseña: contraseña,
      }),
    })
      .then((response) => {
        return response.json();
      })
      .then((data) => console.log(data));
    setTimeout(() => {
      window.location.href = "inicio_sesion.html";
    }, 1500);
  }
}
