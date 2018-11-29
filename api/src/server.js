console.log('Iniciando Servodor.')
const express = require('express');
const app = express();

const morgan = require('morgan');
const bodyParser = require('body-parser');
const files = require('fs');
const path = require('path');

//Configuracion
var PORT = 3000;

var pathFileJSON = path.join(__dirname,'../config/config.json');
try{
	var jsonConfig = JSON.parse(files.readFileSync(pathFileJSON, 'utf-8'));
	PORT = jsonConfig.config.port;
}
catch (e){
	console.log('Sin Archivo de configuracion valido o existente.');
	console.log(e);
}

app.set('port', process.env.PORT || PORT);

//Middlewares
app.use(morgan('dev'));
app.use(bodyParser.json());

module.exports = app;