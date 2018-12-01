let mysqlError = {};

mysqlError.errConexion = (err) => {
	if(err)
		console.log(err);
	
	callback(null, {Error : 'Fallos conexion con datos.'});
};

mysqlError.errConsulta = (err) => {
	if(err)
		console.log(err);
	callback(null, {Err : "Error en consulta de datos."});
};

module.exports = mysqlError;