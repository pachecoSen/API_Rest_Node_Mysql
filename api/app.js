const app = require('./src/server');

//Rutas
require('./ruta/inicio_ruta')(app);

app.listen(
	app.get('port'),
	() => {
		console.log('\nServidor Iniciado en Puerto: ' + app.settings.port);
	}
);