var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require ('cloudinary').v2;

/* GET home page. */
router.get('/', async function(req, res, next) {
  var novedades = await novedadesModel.getNovedades()

novedades = novedades.splice (0.5); 
  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.url(novedad.img_id, {
        width:460,
        crop: 'fill'
      });
      return{
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: '/images/noimage.jpg '
      }
    }
  });


  res.render('index', {novedades});
});

router.post ('/', async (req,res)=> {
  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var teléfono = req.body.teléfono;
  var mensaje = req.body.mensaje;
  
  console.log(req.body)
  
  
  
  var obj = {
    To: 'manzinialejandro@gmail.com',
    subject: 'Mensaje desde el sitio de cervecería',
html: nombre +" "+ apellido + "se comunicó via web y quiere mas info : " + email + ". <br> También hizo este comentario: "+ mensaje + ". <br> Llamar a: " + teléfono
  }
  var transport = nodemailer.createTransport ({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  })
  var info = await transport.sendMail(obj);

  res.render ('index', {
    message: 'Su mensaje se envio',
  });
});












module.exports = router;
