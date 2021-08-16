const express= require("express"); // requiere el modulo express //
const path= require("path") // requiere le modulo path que viene con node
const port= process.env.PORT || 3000

const app= express();  // guardar la funcion de express en una variable llamada "app" //

app.listen(port,()=> {   // levantamos el servidor en el puerto 3000 //
    console.log("Servidor corriendo en el puerto 3000");  // si esta levantado en ese puerto muestra el mensaje ese //
})

const publicPath= path.resolve(__dirname, "./public"); //guarda en una variable la ruta hacia la carpeta public desde el archivo js //
app.use(express.static(publicPath)); //dice que todos los archivos dentro de la carpeta public seran estaticos para luego poder usarlos con mayor facilidad //

app.get("/", (req,res)=> {
    res.render(path.resolve(__dirname,"./src/views/index")); // Sirve para que se muestre todo lo realizado en el HTML (seria como la respuesta de lo que se tiene que ver) //
})

app.get("/register.html", (req,res)=> {
    res.render(path.resolve(__dirname,"./src/views/register.html")); //Sirve para que se muestre todo lo realizado en el register.html //
})

app.get("/login.html", (req,res)=> {
    res.render(path.resolve(__dirname,"./src/views/users/login")); //Sirve para que se muestre todo lo realizado en el login.html //
})

app.set("view engine", "ejs"); // Declara EJS como motor de plantillas (view engine) //