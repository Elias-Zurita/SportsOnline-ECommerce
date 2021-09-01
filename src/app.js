var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

const mainRoutes = require('./routes/mainRoutes');
const usersRoutes = require('./routes/users');
const productsRoutes = require('./routes/products');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));  // Define la ubicacion de la carpeta de views   //
app.set('view engine', 'ejs');         // declara como motor de vistas a EJS //

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '../public'))); // Asi utiliza los archivos estaticos de public  //

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
