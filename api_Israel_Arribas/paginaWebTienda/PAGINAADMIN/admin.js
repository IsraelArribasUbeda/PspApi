usuarios = document.getElementById("usuarios");

fetch("http://127.0.0.1:5000/usuarios/")
  .then((ok) => {
    console.log(ok);
    return ok.json();
  })
  .then((ok1) => {
    ok1.usuarios.forEach((element) => {
      usuarios.innerHTML += `
        <tr>
            <td>${element.Nombre}</td>
            <td>${element.Correo}</td>
            <td>${element.Contraseña}</td>
        </tr>`;
    });
  })
  .catch((err) => {
    alert("Conexion incorrecta");
  });

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
  }
  setTimeout(() => {
    location.reload();
  }, 4000);
}

function eliminar(nombre) {
  if (nombre == "") {
    alert("No ha introducido todos los datos");
  } else {
    fetch("http://127.0.0.1:5000/eliminar/", {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        Nombre: nombre,
      }),
    })
      .then((response) => {
        return response.json();
      })
      .then((data) => console.log(data));
  }
  setTimeout(() => {
    location.reload();
  }, 4000);
}

function cambiar(nombre, correo, contraseña, nombreAntiguo) {
  if (nombre == "" || correo == "" || contraseña == "" || nombreAntiguo == "") {
    alert("No ha introducido todos los datos");
  } else {
    fetch("http://127.0.0.1:5000/modificar/", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        Nombre: nombre,
        Correo: correo,
        Contraseña: contraseña,
        NombreAntiguo: nombreAntiguo,
      }),
    })
      .then((response) => {
        return response.json();
      })
      .then((data) => console.log(data));
  }
  setTimeout(() => {
    location.reload();
  }, 4000);
}
