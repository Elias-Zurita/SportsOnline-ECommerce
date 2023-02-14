const createError = require('http-errors');
const express = require('express');
const path = require('path');
const logger = require('morgan');
const methodOverride = require('method-override'); // Es una libreria que se usa para que pueda utilizar los metodos PUT y DELETE (editar y eliminar) //
const session = require("express-session") // Es una libreria que se usa para las sesiones (requiere instalacion) y guarda en el servidor 
const cookies = require("cookie-parser") // Es una libreria que se usa para guardar en el navegador usado y en el servidor (en este caso lo uso para dejar logueado por un tiempo "X" al usuario)

// Routers (poner antes de los middlewares)
const mainRoutes = require('./src/routes/mainRoutes');
const userRoutes = require('./src/routes/userRoutes');
const productRoutes = require('./src/routes/productRoutes');
const marcasRoutes = require('./src/routes/marcasRoutes');
const deportesRoutes = require('./src/routes/deportesRoutes');
const productCartRoutes = require('./src/routes/productCartRoutes');
const apiRoutes = require('./src/routes/apiRoutes');

const userLoggedMiddleware = require("./src/middlewares/userLoggedMiddleware")
const localsMiddleware = require("./src/middlewares/localsMiddleware")

const app = express();

// view engine setup
app.set('views', path.join(__dirname, 'src/views'));  // Define la ubicacion de la carpeta de views   //
app.set('view engine', 'ejs');         // declara como motor de vistas a EJS //

app.use(methodOverride('_method')); // Usa el methodOverride. Para poder usarlo ademas de declararlo (const..) y poner ahora el app.use hay que instalarlo por terminal //
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));  // captura la info que recibe desde un formulario con POST //
app.use(cookies());
app.use(express.static(path.join(__dirname, 'public'))); // Asi utiliza los archivos estaticos de public  //
app.use(session({                 // Inicializacion de sesion
  secret:"Shh, es un secreto",
  resave: false,                  // Propiedades de session que se deben setear como false
  saveUninitialized: false,       // Propiedades de session que se deben setear como false
}))

app.use(userLoggedMiddleware);
app.use(localsMiddleware);

// Las rutas siempre van despues de los middleware
app.use('/', mainRoutes);
app.use("/users", userRoutes);
app.use("/products", productRoutes);
app.use("/brand", marcasRoutes);
app.use("/sport", deportesRoutes);
app.use("/productCart", productCartRoutes);
app.use("/api", apiRoutes);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;