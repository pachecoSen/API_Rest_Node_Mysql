const path = require('path');
const dbConnection =  require(path.join(__dirname,'../src/mysql'));
const db = dbConnection();

let mysqlModel = {};

mysqlModel.getVersion = (callback) => {
	if(db){
		db.query(
			'SELECT version() as version',
			(err, rows) => {
				if(err)
					throw err;
				callback(null, JSON.parse(JSON.stringify(rows)));
			}
		) 
	}
};

module.exports = mysqlModel;