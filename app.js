const express = require('express');
const app=express();

const path=require('path');


app.use(express.static('public'));
app.listen(3000,()=>{console.log("Servidor corriendo en el puerto 3000")})


app.get('/',(req,res)=>{
    let htmlPath1=path.join(__dirname,'./views/index.html');
    res.sendFile(htmlPath1);
});
app.get('/carrito',(req,res)=>{
    let htmlPath2=path.join(__dirname,'./views/productCart.html');
    res.sendFile(htmlPath2);
});

app.get('/detalle-producto',(req,res)=>{
    let htmlPath3=path.join(__dirname,'./views/productDetail.html');
    res.sendFile(htmlPath3);
});
app.get('/registro',(req,res)=>{
    let htmlPath4=path.join(__dirname,'./views/register.html');
    res.sendFile(htmlPath4);
});
app.get('/login',(req,res)=>{
    let htmlPath4=path.join(__dirname,'./views/login.html');
    res.sendFile(htmlPath4);
});