const empty = require('is-empty');
const path = require('path');
const dbConnection =  require(path.join(__dirname,'../src/mysql'));
const db = dbConnection();

let mysqlModel = {};

mysqlModel.getPersona = (inData, callback) => {
	if(db){
		var sqlTxt = empty(inData) ? "" : "WHERE Apellido_paterno="+db.escape(inData);
		db.query(
			"SELECT * FROM persona "+sqlTxt+" ORDER BY Apellido_paterno",
			(err, rows) => {
				if(err)
					throw err;
				callback(null, JSON.parse(JSON.stringify(rows)));
			}
		);

		return false; 
	}
	(err, rows) => {
		if(err)
			throw err;
		callback(null, {Error : 'Fallos de la Base de Datos'});
	}
};

mysqlModel.newPersona = (inData, callback) => {
	if(db){
	 	var sqlTxt = "INSERT INTO persona (Nombre, Apellido_paterno, Apellido_materno, Email, Telefono, FK_tipo, Estatus) VALUES ?";
	 	db.query(
	 		sqlTxt, [inData],
	 		(err, result) => {
				if(err)
					throw err;
				callback(null,
					{
						Msg : 'OK',
						Inf : {
							no_insert : result.affectedRows,
							id_insert : result.insertId
						}
					}
				);
			}
 		);

	 	return false;
	}
	(err, rows) => {
		if(err)
			throw err;
		callback(null, {Error : 'Fallos de la Base de Datos'});
	}
};

module.exports = mysqlModel;