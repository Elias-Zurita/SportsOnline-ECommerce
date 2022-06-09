var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const methodOverride = require('method-override'); // Es una libreria que se usa para que pueda utilizar los metodos PUT y DELETE (editar y eliminar) //
const session = require("express-session") // Es una libreria que se usa para las sesiones (requiere instalacion) y guarda en el servidor 
const cookies = require("cookie-parser") // Es una libreria que se usa para guardar en el navegador usado y en el servidor (en este caso lo uso para dejar logueado por un tiempo "X" al usuario)

// Routers (poner antes de los middlewares)
const mainRoutes = require('./routes/mainRoutes');
const userRoutes = require('./routes/userRoutes');
const productRoutes = require('./routes/productRoutes');

var app = express();

const localsMiddleware = require("./middlewares/localsMiddleware")







// view engine setup
app.set('views', path.join(__dirname, 'views'));  // Define la ubicacion de la carpeta de views   //
app.set('view engine', 'ejs');         // declara como motor de vistas a EJS //

app.use(methodOverride('_method')); // Usa el methodOverride. Para poder usarlo ademas de declararlo (const..) y poner ahora el app.use hay que instalarlo por terminal //
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));  // captura la info que recibe desde un formulario con POST //
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '../public'))); // Asi utiliza los archivos estaticos de public  //
app.use(session({                 // Inicializacion de sesion
  secret:"Shh, es un secreto",
  resave: false,                  // Propiedades de session que se deben setear como false
  saveUninitialized: false,       // Propiedades de session que se deben setear como false
}))

app.use(localsMiddleware);


// Las rutas siempre van despues de los middleware
app.use('/', mainRoutes);
app.use("/users", userRoutes);
app.use("/products", productRoutes);


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
