<?php
@ob_start();
session_start();
if (isset($_POST['proses'])) {
	require 'config.php';

	$user = strip_tags($_POST['user']);
	$pass = strip_tags($_POST['pass']);
	$sql = 'SELECT * FROM member WHERE user = ? AND pass = MD5(?)';
	$row = $config->prepare($sql);
	$row->execute(array($user, $pass));
	$jum = $row->rowCount();
	if ($jum > 0) {
		$hasil = $row->fetch();
		$_SESSION['admin'] = $hasil;
		echo '<script>alert("Login Sukses!");window.location="index.php"</script>';
	} else {
		echo '<script>alert("Login Gagal!");history.go(-1);</script>';
	}
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Login</title>
</head>
<body>
  <div class="wrapper">
    <div class="container main">
        <div class="row">
            <div class="col-md-6 side-image">
                       
                <!-------------      image     ------------->
                
                <img src="assets/img/kasir.png" >
            </div>

            <div class="col-md-6 right">
                
                <div class="input-box">
                   
                   <header>Login account</header>
				   <form class="form-login" method="POST">
                   <div class="input-field">
                        <input type="text" class="input" name="user"  required autofocus>
                        <label for="email">Username</label> 
                    </div> 
                   <div class="input-field">
                        <input type="password" class="input"  name="pass"  required>
                        <label for="pass">Password</label>
                    </div> 
                   <div class="input-field">   
					   <button class="btn btn-primary btn-block" name="proses" type="submit"><i class="fa fa-lock"></i>SIGN IN</button>
				   </form>
                   </div> 
                   <div class="signin">
				   <a class="small" href="register.php">Create an Account!</a>
                   </div>
                </div>  
            </div>
        </div>
    </div>
</div>
</body>
</html>