<?php
//connexion à une SGBD mySql
//1)connection au serveur mysql
$connexion_server=mysql_connect("oao2016.obs-vlfr.fr","poteau","poteau");
//2)connexion à la base de donnée
$connexion_base=mysql_select_db("metadata",$connexion_server );
?>



