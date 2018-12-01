module.exports = function(app) {
	app.get('/', (req, res) => {
		res.redirect('/home');
	});

	app.get('/home', (req, res) => {
		res.json({
			Info : {
				APP : "Demo Node & MySQL",
				Version : 0.1,
				"Rutas (GET)" : req.protocol+'://'+req.get('host')+'/info'
			}
		});
	});

	app.get('/info', (req, res) => {
		res.json({
			URL : {
				"Version de MySQL (GET)" : req.protocol+'://'+req.get('host')+'/mysql/version',
				"Persona (GET)" : req.protocol+'://'+req.get('host')+'/persona'
			}
		});
	});
}