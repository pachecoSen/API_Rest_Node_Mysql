const empty = require('is-empty');
const path = require('path');
const mysqlModel =  require(path.join(__dirname,'../model/mysql_mode'));

module.exports = function(app) {
	app.get('/mysql/version', (req, res) => {
		mysqlModel.getVersion((err, out) => {
			res.json({
				mysql : {
					version : out
				}
			});
		});
	});
}