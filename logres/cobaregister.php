<?php 


$conn = mysqli_connect("localhost", "root", "", "usermod5");



if(isset($_POST["register"])){
        if(registrasi($_POST) > 0){
            echo "<script>
                alert('Registrasi Berhasil!');
            </script>";
        }else{
            echo mysqli_error($conn);
        }
}

if(isset($_POST["login"])){
    header("Location: cobalogin.php");
	exit;
}

function registrasi($data){
    global $conn;

    $username = strtolower(stripslashes($data["username"]));
    $password = mysqli_real_escape_string($conn ,$data["password"]);
    $password2 = mysqli_real_escape_string($conn ,$data["password2"]);

    if ($password !== $password2){
        echo "<script>alert('konfirmasi tidak sesuai!')</script>";
        return false;
    }
    // enkripsi password
	$password = password_hash($password, PASSWORD_DEFAULT);

	// tambahkan userbaru ke database
	mysqli_query($conn, "INSERT INTO user VALUES('', '$username', '$password')");

	return mysqli_affected_rows($conn);
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
            <h1>Register</h1>
            <form action="" method = "post">
                    <label for="username">username :</label>
                    <input type="text" name="username" id="username">
                    <label for="password">password :</label>
                    <input type="password" name="password" id="password">
                    <label for="password2">confirm password :</label>
                    <input type="password" name="password2" id="password2">
                    <button type="submit" name="register">Register</button>
                    <p style="color:#ffc93c"> Already Have account?
                        <a href="Cobalogin.php">Click Here</a>
                    </p>
            </form>     
        </div>
    </body>
</html>