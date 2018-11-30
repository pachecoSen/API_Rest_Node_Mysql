const path = require('path');
const mysqlModel =  require(path.join(__dirname,'../model/mysql_mode'));

module.exports = function(app) {
	app.get('/mysql/version', (req, res) => {
		mysqlModel.getVersion((err, data) => {
			res.json({
				mysql : {
					version : data[0].version
				}
			});
		});
	});
}