var express = require('express');
var crypto = require('crypto');
var User = require('../models/user');
var Post = require('../models/post');
var setting = require('../setting')
var router = express.Router();

/* GET home page. */
router.get('/getPostAll', function(req, res, next) {
  Post.get('',function(err,posts){
    if(err){
      req.flash('error',err);
      return throwException(err);
    }
    res.json(posts);
  })
});

router.get('/getSessionUser', function(req, res, next) {
  res.json(req.session.user);
});

router.get('/getPost', checkLogin);
router.get('/getPost',function(req, res, next){
  var newUser = new User({
    name: req.session.user.name
  });
  newUser.get(req.session.user.name, function(err, user){
    if(user && user.length){
      user = user[0];
      Post.get(user.name,function(err, posts){
        if(err){
          req.flash('error',err);
          return throwException(err);
        }
        res.json(posts);
      })
    }else{
      req.flash('error','用户不存在');
      return throwException(err);
    }

  })
})

router.post('/post', checkLogin);
router.post('/post', function(req, res, next){
  var currentUser = req.session.user;
  console.log(req.body, req.params, req.data)
  var post = new Post(currentUser.name, req.body.post);
  post.save(function(err){
    if (err){
      req.flash('error', err);
      return throwException(err)
    }
    req.flash('info', '发表成功');
    res.json(true);
  });
})

// router.get('/reg', checkNotLogin);
// router.get('/reg', function(req, res, next){
//   res.render('reg',{title:'用户注册'})
// })

router.post('/reg', checkNotLogin);
router.post('/reg', function(req, res, next){
  if(!req.body['username']){
    req.flash('error','用户名不能为空');
    return throwException('用户名不能为空');
  }
  if(!req.body['password']){
    req.flash('error','密码不能为空');
    return throwException('密码不能为空');
  }
  if(req.body['password-repeat'] !== req.body['password']) {
    req.flash('error','两次输入的口令不一致');
    return throwException('两次输入的口令不一致');
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
      return throwException(err);
      // res.send(err);
      // return res.redirect('/reg');
    }

    newUser.save(function(err){
      if(err){
        req.flash('error',err);
        return throwException(err);
      }
      req.session.user = newUser;
      req.flash('info','恭喜用户 '+newUser.name + ', 注册成功');

    });
  });

});
// router.get('/login', checkNotLogin);
// router.get('/login', function(req, res, next){
//   res.render('login', {title: '用户登录'});
// })

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
        return throwException('密码错误');
      }
      req.session.user = user[0];
      req.flash('info','登陆成功');
    }else{
      req.flash('error', '用户不存在');
      return throwException("用户不存在");
    }
  })

})
router.get('/logout', checkLogin);
router.get('/logout', function(req, res, next){
  req.session.user = null;
  res.json('用户已注销');

})


function checkNotLogin(req, res, next){
  if(req.session.user){
    req.flash('error', '用户已登录');
    return throwException('用户已登录');
  }
  next();
}

function checkLogin(req, res, next){
  if(!req.session.user){
    req.flash('error', '用户未登录');
    return throwException('用户未登录');
  }
  next();
}

function throwException (message, error){
  console.error(message);
  res.json(message);
  // res.status(500).send(JSON.stringify((message)));
}

module.exports = router;
