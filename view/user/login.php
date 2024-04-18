<?php
    include_once "../../model/role.php";
    include_once "../base.php";
    include_once "../../model/pdo.php";
    

    if(!empty($_POST['username']) && !empty($_POST['psw'])){
        $username = $_POST['username'];
        $sql = "SELECT * FROM User WHERE username='$username'";
        $stmt = $pdo->query($sql);
        $user= $stmt->fetch(PDO::FETCH_ASSOC);
    
        if($user){
            // Compte existe
            if(password_verify($_POST['psw'], $user['password'])){
                $_SESSION["name"] = $user['last_name'] . " " . $user['first_name'];
                $_SESSION["role"] = $user['role'];
                $_SESSION["token"] = bin2hex(random_bytes(16));
                header("Location:../home/home.php");
            }else{
                echo 'Mot de passe incorrect';
            }
        }else{
            // Compte n'existe pas
            echo "Le compte n'existe pas";
        }
    }

?>

<h1 class="text-center mt-3">Connexion</h1>

<form id="form" class="mx-auto" action="" method="post">

    <label for="username">Identifiant</label>
    <input class="form-control mb-2" type="text" name="username" placeholder="Veuillez renseigner votre identifiant">

    <label for="psw">Mot de passe</label>
    <input class="form-control mb-2" type="password" name="psw">

    <input class="form-control btn btn-primary my-3" type="submit" value="Connexion">
</form>