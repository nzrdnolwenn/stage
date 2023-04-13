<?php

$id_ocean=$_GET['id_area'];

//echo $id_ocean;

include 'connection.php';

$requete_float_ocean="SELECT id_float,id_area,wmo,dac FROM alert.FLOAT_BGC WHERE id_area=$id_ocean";

//if($conn) echo "ok2";

//$requete_float_ocean="SELECT id_float,wmo,dac FROM alert.FLOAT_BGC";

$resultat_float=mysqli_query($conn,$requete_float_ocean);

//printf("Select a retourné %d lignes.\n", mysqli_num_rows($resultat_float));

$champ=mysqli_fetch_array($resultat_float);

//echo $champ['wmo'];

echo("<br>WMO : {$champ['wmo']} <br>DAC : {$champ['dac']}<br>");


?>
