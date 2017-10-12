/**
 * Created by amarsoft on 2017/8/16.
 */
var mysql = require('mysql');
var setting = require('../setting');

var database = function(callback){
  var connection  = mysql.createConnection(setting);
  connection.connect();
  callback(connection);
  connection.end();
}

module.exports = database;
