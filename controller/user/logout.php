<?php

session_start();
session_destroy();

unset($_SESSION["name"]);
unset($_SESSION["id_user"]);
unset($_SESSION["role"]);
unset($_SESSION["avatar"]);
unset($_SESSION['previous_avatar']);
unset($_SESSION["token"]);

header("Location:../../view/home/home.php");
exit;