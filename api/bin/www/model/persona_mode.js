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
				if(err){
					console.log(err);
					callback(null, {Err : "Error en consulta de datos."});

					return false;
				}
				callback(null, JSON.parse(JSON.stringify(rows)));
			}
		);

		return false; 
	}
	mysqlError.errConexion(err);
};

mysqlModel.newPersona = (inData, callback) => {
	if(db){
	 	var sqlTxt = "INSERT INTO persona (Nombre, Apellido_paterno, Apellido_materno, Email, Telefono, FK_tipo, Estatus) VALUES ?";
	 	db.query(
	 		sqlTxt, [inData],
	 		(err, result) => {
				if(err){
					console.log(err);
					callback(null, {Err : "Error en ingreso de datos."});

					return false;
				}
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
	mysqlError.errConexion(err);
};

module.exports = mysqlModel;