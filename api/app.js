const express = require('express');
const app = express();

const morgan = require('morgan');
const bodyParser = require('body-parser');

//Configuracion
app.set('port', process.env.PORT || 3000);

//Middlewares
app.use(morgan('dev'));
app.use(bodyParser.json());

//Rutas
require('./ruta/user_ruta.js')(app);

app.listen(
	app.get('port'),
	() => {
		console.log('Servidor Iniciado en Puerto: 3000');
	}
);