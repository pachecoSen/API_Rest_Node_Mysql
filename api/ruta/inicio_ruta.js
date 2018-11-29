const path = require('path');
const dbConnection = require(path.join(__dirname,'../src/mysql'));

module.exports = function(app) {
	const connection = dbConnection();
	app.get('/', (req, res) => {
		res.redirect('/home');
	});

	app.get('/home', (req, res) => {
		var statusDB = connection.connect();
		res.json({
			Info : {
				APP : "Demo Node & MySQL",
				Version : 0.1
			}
		});
	});

	app.get('/user', (req, res) => {
		
	});
}