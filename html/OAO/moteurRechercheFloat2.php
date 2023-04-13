<?php
//1)on se connect a la base
include("connection.php");
?>

<!-- Premiere possibilite de recherche -->
Search by mission number <br>
<form action="AfficheMission2.php" method="post">
<?php
//2)construire une requête
$requete="SELECT name FROM `MISSION` ORDER BY name";

//3)on applique la requete et on recupere le resultat dans une variable 
$resultat=mysql_query($requete, $connexion_server);

//4)on ferme la connexion
//mysql_close($connexion_server);

////////////construire le menu////////////
//on ouvre le menu
print("<select name='namemission'>");

//5)on affiche le resultat total avec while et par numero de champ 
while($champ = mysql_fetch_array($resultat)) {
print("<option value=\"".$champ["name"]."\">".$champ["name"]."</option>");
}

//on ferme le menu
print("</select>");
?>
<input type="Submit" value="OK"><p></p>
</form>
<!-- Fin du premier champs de recherche -->


<!-- deuxieme possibilite de recherche -->
Search by MyFloat
<form action="AfficheFloat2.php" method="post">
<?php
//2)construire une requête
$requete2="SELECT name FROM `FLOAT` ORDER BY name";

//3)on applique la requete et on recupere le resultat dans une variable 
$resultat2=mysql_query($requete2, $connexion_server);

//4)on ferme la connexion
//mysql_close($connexion_server);

////////////construire le menu////////////
//on ouvre le menu
print("<select name='namefloat'>");

//5)on affiche le resultat total avec while et par numero de champ 
while($champ = mysql_fetch_array($resultat2)) {
print("<option value=\"".$champ["name"]."\">".$champ["name"]."</option>");
}

//on ferme le menu
print("</select>");
?>
<input type="Submit" value="OK"><p></p>
</form>
<!-- fin du deuxieme champs de recherche -->

<!--TROISIEME POSSIBILITE DE RECHERCHE-->
Search by WMOnumber
<form action="AfficheWMO2.php" method="post">
<?php
//2)construire une requête
$requete3="SELECT platform_number FROM `FLOAT` ORDER BY platform_number";

//3)on applique la requete et on recupere le resultat dans une variable 
$resultat3=mysql_query($requete3, $connexion_server);

//4)on ferme la connexion
mysql_close($connexion_server);

////////////construire le menu////////////
//on ouvre le menu
print("<select name='wmonumber'>");

//5)on affiche le resultat total avec while et par numero de champ 
while($champ = mysql_fetch_array($resultat3)) {
print("<option value=\"".$champ["platform_number"]."\">".$champ["platform_number"]."</option>");
}

//on ferme le menu
print("</select>");
?>
<input type="Submit" value="OK"><p></p>
</form>
<!-- fin du troisieme champs de recherche -->
