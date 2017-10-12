/**
 * Created by amarsoft on 2017/8/16.
 */
var database = require('./db');
function User(user) {
  this.name = user.name;
  this.password = user.password;
}
module.exports = User;

User.prototype.save = function save(callback){
  var user = {
    name: this.name,
    password: this.password
  };

  database(function(connection){
    connection.query("INSERT INTO users(name,password) VALUES(?,?)",[user.name,user.password], function(err,result){
      callback(err,result);
    })
  })
}

User.prototype.get = function get(username, callback){
  database(function(connection){
    connection.query("SELECT * FROM users where name = ?", username, function(err, result){
      callback(err,result);
    })
  })
}