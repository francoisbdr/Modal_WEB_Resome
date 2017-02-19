<?php
session_name("Masession"); // ne pas mettre d'espace dans le nom de session !
session_start();

require('../utilities/Utilisateur.php');
require('../utilities/DataBase.php');

$studentid=$_POST['studentid'];
$utilisateur= Utilisateur::getUtilisateurID($studentid);
$appel=$utilisateur->appel;


Utilisateur::updateAppel($appel+1, $studentid);

?>