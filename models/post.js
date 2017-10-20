/**
 * Created by amarsoft on 2017/8/17.
 */
var database = require("../models/db");

function Post(username, post, time){
  this.user = username;
  this.post = post;
  this.time = time ? time : new Date();
}

module.exports = Post;

Post.prototype.save = function save(callback){
  var post = {
    user: this.user,
    post: this.post,
    time: this.time
  }

  database(function(connection){
    connection.query("INSERT INTO posts(user, post, time) VALUES(?,?,?)",[post.user, post.post, post.time],function(err, result){
      callback(err);
    })
  })
}

Post.getTpl = function getTpl(callback){
  database(function(connection){
    connection.query('SELECT * FROM posttpl', null, function(err,result){
      callback(err,result);
    })
  })
}

Post.get = function get(username, callback){
  if(!username){
    database(function(connection){
      connection.query('SELECT * FROM posts', function(err,result){
        callback(err,result);
      })
    })
  }else{
    database(function(connection){
      connection.query('SELECT * FROM posts where user = ?', username, function(err,result){
        callback(err,result);
      })
    })
  }

}