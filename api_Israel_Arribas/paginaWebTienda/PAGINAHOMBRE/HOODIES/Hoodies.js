productos = document.getElementById("productosHoodies");

fetch("http://127.0.0.1:5000/productos/")
  .then((ok) => {
    console.log(ok);
    return ok.json();
  })
  .then((ok1) => {
    ok1.productos.forEach((element) => {
      if (element.Categoria == "Hoodies") {
        productos.innerHTML += `
      <table width="33%" style="float: left;">
      <tr>
          <td align="center"><a href="${element.Url}"><img src="${element.Imagen}" width="90%"></a></td>
      <tr>
          <td align="center"><font face="courier" color="white"><b>${element.Nombre}</b></font></td>
      <tr>
          <td align="center"><font face="courier" color="white">${element.Precio}</font></td>
      <tr>
          <td align="center">-</td>
    </table>`;
      }
    });
  })
  .catch((err) => {
    alert("Conexion incorrecta");
  });
