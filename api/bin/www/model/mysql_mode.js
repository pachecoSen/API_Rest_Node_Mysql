const path = require('path');
const dbConnection =  require(path.join(__dirname,'../src/mysql'));
const db = dbConnection();

const mysqlError =  require(path.join(__dirname,'../error/err_mysql'));

let mysqlModel = {};

mysqlModel.getVersion = (callback) => {
	if(db){
		db.query(
			'SELECT version_() as version',
			(err, rows) => {
				if(err)
					mysqlError.errConsulta(err);
				var data = JSON.parse(JSON.stringify(rows));
				callback(null, data[0].version);
			}
		);

		return false; 
	}
	mysqlError.errConexion(err);
};

module.exports = mysqlModel;