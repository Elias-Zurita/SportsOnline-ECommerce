var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const methodOverride = require('method-override'); // Es una libreria que se usa para que pueda utilizar los metodos PUT y DELETE (editar y eliminar) //

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));  // Define la ubicacion de la carpeta de views   //
app.set('view engine', 'ejs');         // declara como motor de vistas a EJS //

app.use(methodOverride('_method')); // Usa el methodOverride. Para poder usarlo ademas de declararlo (const..) y poner ahora el app.use hay que instalarlo por terminal //
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '../public'))); // Asi utiliza los archivos estaticos de public  //

const mainRoutes = require('./routes/main');
const usersRoutes = require('./routes/users');
const productsRoutes = require('./routes/products');

app.use('/', mainRoutes);
app.use("/users", usersRoutes);
app.use("/products", productsRoutes);

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
