<?php 
$conn = mysqli_connect("localhost", "root", "", "usermod5");

if( isset($_SESSION["login"]) ) {
	echo "<script>alert('login berhasil!')</script>";
}

if( isset($_SESSION["register"]) ) {
	header("Location: cobaregister.php");
	exit;
}

if( isset($_POST["register"]) ) {
    header("Location: cobaregister.php");
	exit;
}

if( isset($_POST["login"]) ) {

	$username = $_POST["username"];
	$password = $_POST["password"];

	$result = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

	// cek username
	if( mysqli_num_rows($result) === 1 ) {

		// cek password
		$row = mysqli_fetch_assoc($result);
		if( password_verify($password, $row["password"]) ) {
			// set session
			$_SESSION["login"] = true;

			header("Location: ../logged/");
			exit;
		}
	}

	$error = true;

}

?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Halaman Login</title>
        <link rel="stylesheet" href="style.css">
    </head>
   
    <body>
        <div class="container">
          <h1>Login</h1>
          <?php if( isset($error) ) : ?>
	            <p style="color: red; font-style: italic;">username / password salah</p>
          <?php endif; ?>
          <form action="" method="post">
                <label for="username">Username :</label><br>
                <input type="text" name="username" id="username"><br>
                <label for="password">Password :</label><br>
                <input type="password" name="password" id="password"><br>
                <button type="submit" name="login">Login</button>
				<p style="color:#ffc93c"> not have an account yet?
                  <a href="cobaregister.php">Register Here</a>
                </p>
            </form>
        </div>     
    </body>
</html>