productos = document.getElementById("productos");
categoria = document.getElementById("CategoriaNueva");

fetch("http://127.0.0.1:5000/productos/")
  .then((ok) => {
    console.log(ok);
    return ok.json();
  })
  .then((ok1) => {
    ok1.productos.forEach((element) => {
      productos.innerHTML += `
        <tr>
            <td>${element.Nombre}</td>
            <td>${element.Precio}</td>
            <td>${element.Url}</td>
            <td>${element.Imagen}</td>
            <td>${element.Categoria}</td>
        </tr>`;
    });
  })
  .catch((err) => {
    alert("Conexion incorrecta");
  });

fetch("http://127.0.0.1:5000/categorias/hombre/")
  .then((ok) => {
    console.log(ok);
    return ok.json();
  })
  .then((ok1) => {
    ok1.categorias.forEach((element) => {
      categoria.innerHTML += `
      <option>${element.Categoria}</option>
      `;
    });
  })
  .catch((err) => {
    alert("Conexion incorrecta");
  });

fetch("http://127.0.0.1:5000/categorias/mujer/")
  .then((ok) => {
    console.log(ok);
    return ok.json();
  })
  .then((ok1) => {
    ok1.categorias.forEach((element) => {
      categoria.innerHTML += `
      <option>${element.Categoria}</option>
      `;
    });
  })
  .catch((err) => {
    alert("Conexion incorrecta");
  });

function registro(nombre, precio, url, imagen, categoria) {
  if (
    nombre == "" ||
    precio == "" ||
    url == "" ||
    imagen == "" ||
    categoria == ""
  ) {
    alert("No ha introducido todos los datos");
  } else {
    fetch("http://127.0.0.1:5000/registro/productos/", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        Nombre: nombre,
        Precio: precio,
        Url: url,
        Imagen: imagen,
        Categoria: categoria,
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

function eliminar(url) {
  if (url == "") {
    alert("No ha introducido todos los datos");
  } else {
    fetch("http://127.0.0.1:5000/eliminar/productos/", {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        Url: url,
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

function cambiar(nombre, precio, url, imagen, categoria, UrlAntiguo) {
  if (
    nombre == "" ||
    precio == "" ||
    url == "" ||
    imagen == "" ||
    categoria == "" ||
    UrlAntiguo == ""
  ) {
    alert("No ha introducido todos los datos");
  } else {
    fetch("http://127.0.0.1:5000/modificar/productos/", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        Nombre: nombre,
        Precio: precio,
        Url: url,
        Imagen: imagen,
        Categoria: categoria,
        UrlAntigua: UrlAntiguo,
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
