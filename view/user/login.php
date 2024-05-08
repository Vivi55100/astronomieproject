<?php
    include_once "../../model/role.php";
    include_once "../base.php";
    include_once "../../model/pdo.php";
    include_once "../../model/functions.php";
    

    if(!empty($_POST['username']) && !empty($_POST['psw'])){
        $username = $_POST['username'];
        $sql = "SELECT * FROM user WHERE username='$username'";
        $stmt = $pdo->query($sql);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);
        
        if($user && $user["delete_date"] == null){
            // Compte existe
            if(password_verify($_POST['psw'], $user['password'])){
                $_SESSION["name"] = $user['last_name'] . " " . $user['first_name']; // $user[''] me permet d'attribuer les données des colonnes de mon utilisateur
                $_SESSION["id_user"] = $user["id_user"];
                $_SESSION["role"] = $user['role'];
                $_SESSION["avatar"] = $user["avatar"];
                $_SESSION["token"] = bin2hex(random_bytes(16)); // random_byte va nous generer un nombre binaire de 16 bits, bin2hex convertit une valueu binaire en hexa-decimale afin d'éviter attack CSRF (comparaison tokens)
                header("Location:../home/home.php");
            }else{
                alert("Le mot de passe est incorrect", "failed", "../../view/user/login.php");
            }
        }else{
            // Compte n'existe pas
            alert("Attention ce compte n'existe pas !", "failed", "../../view/user/login.php");
        }
    }
    
    include_once "../alert.php";


?>

<div class="loginPage">

    <h2 id="errorLogin" class="text-center"></h2>

    <h1 class="text-center mt-3">Connexion</h1>

    <form id="form" class="mx-auto w-50" method="post">

        <label class="mt-3" for="username">Identifiant</label>
        <input id="username" class="form-control mb-3" type="text" name="username" placeholder="Veuillez renseigner votre identifiant">

        <label for="psw">Mot de passe</label>
        <input id="psw" class="form-control mb-3" type="password" name="psw">

        <input class="form-control btn btn-success my-3" type="submit" value="Se connecter">
    </form>

    <div class="createAccount">
        <p>Pas de compte ? <span><a href="view/user/create_user.php">S'inscrire</a></span></p>    
    </div>
</div>

<script>
    const errorLogin = document.getElementById('errorLogin')
    const form = document.getElementById('form')

    form.addEventListener('submit', function(e){
        e.preventDefault()

        const usernameInput = document.getElementById('username');
        const passwordInput = document.getElementById('psw');

        if(usernameInput.value.trim() === '' || passwordInput.value.trim() === ''){ // la fonction trim me permet de supprimer les espaces entre deux quotes "   " => ""
            let error = "Veuillez remplir tous les champs s'il vous plait"
            errorLogin.style.color = "red"
            errorLogin.style.opacity = 0
            errorLogin.animate(
                {
                    opacity: [1, 0]
                },
                3000
            )
            errorLogin.innerHTML = error
        }else{
            this.submit()
        }
    })
</script>
</body>
</html>