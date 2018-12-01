console.log('Iniciando Servodor.')
const express = require('express');
const app = express();

const morgan = require('morgan');
const bodyParser = require('body-parser');
const fs = require('fs');
const path = require('path');
const helmet = require('helmet');

//Configuracion
var PORT = 3000;

var pathFileJSON = path.join(__dirname,'../config/config.json');
try{
	var jsonConfig = JSON.parse(fs.readFileSync(pathFileJSON, 'utf-8'));
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
app.use(helmet());

app.disable('x-powered-by');

module.exports = app;