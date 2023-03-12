from flask import Flask, request, jsonify
from JGVutils import Utils, MySQLConnection
from flask_cors import CORS, cross_origin

application = Flask(__name__)
cors = CORS(application)
application.config["CORS_HEADERS"] = "Content-Type"

#Realizamos la conexión con la base de datos
conexion = MySQLConnection(host="localhost", dbname="db_api_py")

#Creamos metodo get para recibir y poder utilizar los usuarios de la base de datos
@application.route("/usuarios/", methods=["GET"])
def getUsuarios():
    if conexion.is_database_connection():
        #Ejecutamos una sencilla query con un select all
        filas = conexion.execute_query("SELECT * FROM usuarios")
    #Devolvemos un diccionario formateado a json mediante la libreria JGVutils
    return Utils.format_json({"usuarios":filas})

#Otro metodo get para recibir y poder utilizar las categorias, mismo funcionamiento
@application.route("/categorias/hombre/", methods=["GET"])
def getCategoriasHombre():
    if conexion.is_database_connection():
        filas = conexion.execute_query("SELECT * FROM categoriasHombre")
    return Utils.format_json({"categorias":filas})

#Otro metodo get para recibir y poder utilizar las categorias, mismo funcionamiento
@application.route("/categorias/mujer/", methods=["GET"])
def getCategoriasMujer():
    if conexion.is_database_connection():
        filas = conexion.execute_query("SELECT * FROM categoriasMujer")
    return Utils.format_json({"categorias":filas})

#Otro metodo get para recibir y poder utilizar los productos, mismo funcionamiento
@application.route("/productos/", methods=["GET"])
def getProductos():
    if conexion.is_database_connection():
        filas = conexion.execute_query("SELECT * FROM productos")
    return Utils.format_json({"productos":filas})

#Creamos metodo post para poder enviar datos a la tabla usuarios de la base de datos
@application.route("/registro/", methods=["POST"])
def postUsuarios():
    #Requiero como "parametro" un json en el body 
    datos = request.get_json()
    if conexion.is_database_connection():
        #Ejecutamos otra sentencia sql pero esta vez un Insert
        #indicando que los values del nuevo elemento son los recogidos del json del body
        conexion.execute_query("INSERT INTO usuarios (Nombre, Correo, Contraseña) VALUES (%s, %s, %s)", [datos["Nombre"],datos["Correo"], datos["Contraseña"]])
    return datos

#Otro metodo get para poder enviar datos a la tabla productos, mismo funcionamiento
@application.route("/registro/productos/", methods=["POST"])
def postProductos():
    datos = request.get_json()
    if conexion.is_database_connection():
        conexion.execute_query("INSERT INTO productos (Nombre, Precio, Url, Imagen, Categoria) VALUES (%s, %s, %s, %s, %s)", [datos["Nombre"],datos["Precio"], datos["Url"], datos["Imagen"], datos["Categoria"]])
    return datos

#Creamos metodo put para poder modificar datos de la tabla usuarios de la base de datos
@application.route("/modificar/", methods=["PUT"])
def modificarUsuarios():
    #Requiero como "parametro" un json en el body 
    datos = request.get_json()
    if conexion.is_database_connection():
        #Ejecutamos otra sentencia sql pero esta vez un Update
        #indicando que los values del nuevo elemento son los recogidos del json del body
        conexion.execute_query("UPDATE usuarios SET Nombre = %s, Correo = %s, Contraseña = %s WHERE Nombre = %s", [datos["Nombre"],datos["Correo"], datos["Contraseña"],datos["NombreAntiguo"]])
    return datos

#Otro metodo get para poder modificar datos a la tabla productos, mismo funcionamiento
@application.route("/modificar/productos/", methods=["PUT"])
def modificarProductos():
    datos = request.get_json()
    if conexion.is_database_connection():
        conexion.execute_query("UPDATE productos SET Nombre = %s, Precio = %s, Url = %s, Imagen=%s, Imagen2=0, Imagen3=0, Categoria=%s WHERE Url = %s", [datos["Nombre"],datos["Precio"], datos["Url"],datos["Imagen"], datos["Categoria"], datos["UrlAntigua"]])
    return datos

#Creamos metodo delete para poder eliminar datos de la tabla usuarios de la base de datos
@application.route("/eliminar/", methods=["DELETE"])
def deleteUsuarios():
    #Requiero como "parametro" un json en el body 
    datos = request.get_json()
    if conexion.is_database_connection():
        #Ejecutamos otra sentencia sql pero esta vez un delete
        #indicando que los values del nuevo elemento son los recogidos del json del body
        conexion.execute_query("DELETE FROM usuarios WHERE Nombre=%s", [datos["Nombre"]])
    return datos

#Otro metodo delete para poder eliminar datos a la tabla productos, mismo funcionamiento
@application.route("/eliminar/productos/", methods=["DELETE"])
def deleteProductos():
    datos = request.get_json()
    if conexion.is_database_connection():
        conexion.execute_query("DELETE FROM productos WHERE Url=%s", [datos["Url"]])
    return datos
    
