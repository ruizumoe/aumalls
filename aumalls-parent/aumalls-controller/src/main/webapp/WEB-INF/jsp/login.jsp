<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Language" content="en" />
    <meta name="msapplication-TileColor" content="#2d89ef">
    <meta name="theme-color" content="#4188c9">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <link rel="icon" href="<%=request.getContextPath()%>/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/favicon.ico" />
    <!-- Generated: 2019-04-04 16:57:42 +0200 -->
    <title>Login - tabler.github.io - a responsive, flat and full featured admin template</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext">
    <script src="<%=request.getContextPath()%>/js/require.min.js"></script>
    <script>
      requirejs.config({
          baseUrl: '.'
      });
    </script>
    <!-- Dashboard Core -->
    <link href="<%=request.getContextPath()%>/css/dashboard.css" rel="stylesheet" />
    <script src="<%=request.getContextPath()%>/js/dashboard.js"></script>
    <!-- c3.js Charts Plugin -->
    <link href="<%=request.getContextPath()%>/plugins/charts-c3/plugin.css" rel="stylesheet" />
    <script src="<%=request.getContextPath()%>/plugins/charts-c3/plugin.js"></script>
    <!-- Google Maps Plugin -->
    <link href="<%=request.getContextPath()%>/plugins/maps-google/plugin.css" rel="stylesheet" />
    <script src="<%=request.getContextPath()%>/plugins/maps-google/plugin.js"></script>
    <!-- Input Mask Plugin -->
    <script src="<%=request.getContextPath()%>/plugins/input-mask/plugin.js"></script>
    <!-- Datatables Plugin -->
    <script src="<%=request.getContextPath()%>/plugins/datatables/plugin.js"></script>
</head>
<body>
<div class="page">
      <div class="page-single">
        <div class="container">
          <div class="row">
            <div class="col col-login mx-auto">
              <div class="text-center mb-6">
                <img src="<%=request.getContextPath()%>/demo/brand/tabler.svg" class="h-6" alt="">
              </div>
              <form class="card" action="login" method="post">
                <div class="card-body p-6">
                  <div class="card-title">Login to your account</div>
                  <div class="form-group">
                    <label class="form-label">Email address</label>
                    <input type="text" class="form-control" id="username" aria-describedby="emailHelp" placeholder="username" name="username" value = "${username}">
                  </div>
                  <div class="form-group">
                    <label class="form-label">
                      Password
                      <a href="#" class="float-right small">I forgot password</a>
                    </label>
                    <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                  </div>
                  <div class="form-group">
                    <label class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" />
                      <span class="custom-control-label">Remember me</span>
                    </label>
                  </div>
                  <div class="form-footer">
                    <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                    <div>${loginEorroMsg}</div>
                    
                  </div>
                </div>
              </form>
              <div class="text-center text-muted">
                Don't have account yet? <a href="#">Sign up</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>