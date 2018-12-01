const empty = require('is-empty');
const path = require('path');
const personaModel =  require(path.join(__dirname,'../model/persona_mode'));

module.exports = function(app) {
	app.get('/persona', (req, res) => {
		res.json({
			URL : {
				"Todas las personas (GET)" : req.protocol+'://'+req.get('host')+'/persona/data',
				"Buscar persona (GET)" : req.protocol+'://'+req.get('host')+'/persona/data/<search>',
				"Nueva persona (POST)" : req.protocol+'://'+req.get('host')+'/persona/new'
			}
		});
	});

	app.get('/persona/data/:search?', (req, res) => {
		var search = req.params.search;
		personaModel.getPersona(empty(search) ? null : search, (err, out) => {
			res.json({
				Persona : {
					datos : out
				}
			});
		});
	});

	app.post('/persona/new', (req, res) => {
		var data = [
			[
				req.body.nombre,
				req.body.a_paterno,
				empty(req.body.a_materno) ? null : req.body.a_materno,
				empty(req.body.email) ? null : req.body.email,
				empty(req.body.telefono) ? null : req.body.telefono,
				req.body.tipo,
				1
			]
		];
		personaModel.newPersona(data, (err, out) => {
			res.json({
				Persona : {
					datos : out
				}
			});
		});
	});
}