var express = require('express');
var crypto = require('crypto');
var User = require('../models/user');
var Post = require('../models/post');
var setting = require('../setting')
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  Post.get('',function(err,posts){
    if(err){
      req.flash('error',err);
      return res.render('index', { title: 'Express' ,posts:[]});
    }
    console.log(posts)
    res.render('index', { title: 'Express' ,posts:posts})

  })

});

router.get('/u/:user',function(req, res, next){
  var newUser = new User({
    name: req.params.user
  });
  newUser.get(req.params.user, function(err, user){
    if(user && user.length){
      user = user[0];
      Post.get(user.name,function(err, posts){
        if(err){
          req.flash('error',err);
          return res.redirect('/');
        }
        res.render('user', {title: user.name, posts:posts});
      })
    }else{
      req.flash('error','用户不存在');
      return res.redirect('/');
    }

  })
})

router.post('/post', checkLogin);
router.post('/post', function(req, res, next){
  var currentUser = req.session.user;
  var post = new Post(currentUser.name, req.body.post);
  console.log(post);
  post.save(function(err){
    if (err){
      req.flash('error', err);
      return res.redirect('/');
    }
    req.flash('info', '发表成功');
    res.redirect('/u/' + currentUser.name);
  });
})

router.get('/reg', checkNotLogin);
router.get('/reg', function(req, res, next){
  res.render('reg',{title:'用户注册'})
})

router.post('/reg', checkNotLogin);
router.post('/reg', function(req, res, next){
  if(!req.body['username']){
    req.flash('error','用户名不能为空');
    return res.redirect('/reg');
  }
  if(!req.body['password']){
    req.flash('error','密码不能为空');
    return res.redirect('/reg');
  }
  if(req.body['password-repeat'] !== req.body['password']) {
    req.flash('error','两次输入的口令不一致');
    return res.redirect('/reg');
  }

  var md5 = crypto.createHash('md5');
  var password = md5.update(req.body.password).digest('base64');
  var newUser = new User({
    name: req.body.username,
    password: password
  });

  newUser.get(newUser.name, function(err, user) {
    if(user && user.length) {
      err = 'Username already exists.';
    }
    if(err) {
      req.flash('error', err);
      return res.redirect('/reg');
      // res.send(err);
      // return res.redirect('/reg');
    }

    newUser.save(function(err){
      if(err){
        req.flash('error',err);
        return res.redirect('/reg');
      }
      req.session.user = newUser;
      req.flash('info','恭喜用户 '+newUser.name + ', 注册成功');
      res.redirect('/');

    });
  });

});
router.get('/login', checkNotLogin);
router.get('/login', function(req, res, next){
  res.render('login', {title: '用户登录'});
})

router.post('/login', checkNotLogin);
router.post('/login', function(req, res, next){
  var md5 = crypto.createHash('md5');
  var password = md5.update(req.body.password).digest('base64');
  var newUser = new User({
    name: req.body.username,
    password: password
  });

  newUser.get(newUser.name, function(err,user){
    if(user && user.length){
      if(user[0].password !== newUser.password){
        req.flash('error', '密码错误');
        return res.redirect('/login');
      }
      req.session.user = user[0];
      console.log(req.session)
      req.flash('info','登陆成功');
      res.redirect('/');
    }else{
      req.flash('error', '用户不存在');
      return res.redirect("/login");
    }
  })

})
router.get('/logout', checkLogin);
router.get('/logout', function(req, res, next){
  req.session.user = null;
  req.flash('info','用户已注销');
  res.redirect('/');
})


function checkNotLogin(req, res, next){
  if(req.session.user){
    req.flash('error', '用户已登录');
    return res.redirect('/');
  }
  next();
}

function checkLogin(req, res, next){
  if(!req.session.user){
    req.flash('error', '用户未登录');
    return res.redirect('/login');
  }
  next();
}

module.exports = router;
