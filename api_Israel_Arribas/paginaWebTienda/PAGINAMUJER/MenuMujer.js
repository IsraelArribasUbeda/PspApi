categorias = document.getElementById("categorias");

fetch("http://127.0.0.1:5000/categorias/mujer")
  .then((ok) => {
    console.log(ok);
    return ok.json();
  })
  .then((ok1) => {
    ok1.categorias.forEach((element) => {
      categorias.innerHTML += `<h3 align="left">&nbsp;&nbsp;&nbsp;&nbsp;
      <a href='${element.Ruta}' target="principalmujer" style="text-decoration: none;">
      <font color="#ffffff" face="courier">${element.Categoria}</font></a></h3><p>`;
    });
  })
  .catch((err) => {
    alert("Conexion incorrecta");
  });
