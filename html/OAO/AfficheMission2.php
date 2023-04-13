<?php
//on se connecte
include("connection.php");

//on recupere les données du moteur
$nameRecup=$_POST['namemission'];

// REQUETE sur MISSION
$requete_mission="SELECT id_mission,id_float,name,deployment_platform,deployment_cruise_id FROM `MISSION` WHERE name='$nameRecup'";
// ENVOI REQUETE
$resultat_mission=mysql_query($requete_mission, $connexion_server);

//print ($requete);
//print ($resultat_mission);

// RECUPERATION DU TABLEAU DE RESULTAT
$champ = mysql_fetch_array($resultat_mission);

//print ($nameRecup);
//print ($champ["deployment_platform"]);
//print ($champ["name"]);
//on affiche les informations de la mission 
print("<br>Mission Name : ".$champ["name"]."<br>Platform : ".$champ["deployment_platform"]."<br>CRUISE ID : ".$champ["deployment_cruise_id"]."<br>");

$id_float_mission=$champ["id_float"];
$id_mission=$champ["id_mission"];

//REQUETE SUR FLOAT 
$requete_float="SELECT platform_number,platform_type,float_serial_number,pi_name,project_name,SIM_CARD,imei FROM `FLOAT` WHERE id_float='$id_float_mission'";
// ENVOI REQUETE
$resultat_float=mysql_query($requete_float, $connexion_server);
// RECUPERATION DU TABLEAU DE RESULTAT FLOAT
$champ_float = mysql_fetch_array($resultat_float);

// Envoi des differentes infos au moment du deploiement si elle existe
// On met a disposition la feuille de deploiement et la feuille de configuration avant deploiement si elle existe
$deploymentsheet_filename='./MAL/MAL_VLFR_WMO'.$champ_float["platform_number"].'.pdf';
if (file_exists($deploymentsheet_filename))
{
print("<br><td> <a href=\"./MAL/MAL_VLFR_WMO".$champ_float["platform_number"].".pdf\">Deployment Sheet</a></td><br>");
}
// On met a disposition la feuille de deploiement excel
$deploymentsheet_filename_xlsm='./MAL/'.$champ_float["platform_number"].'.xlsm';
if (file_exists($deploymentsheet_filename_xlsm))
{
print("<td> <a href=\"./MAL/".$champ_float["platform_number"].".xlsm\">Excel Deployment Sheet</a></td><br>");
}

// On met a disposition la configuration avant le deploiement si elle existe
$predeploymentsheet_filename='./CONFIGURATION/'.$champ["name"].'.txt';
if (file_exists($predeploymentsheet_filename))
{
print("<td> <a href=\"./CONFIGURATION/".$champ["name"].".txt\">Predeployment Configuration Sheet</a></td><br>");
}

// On met a disposition le fichier xml s il existe
$xmlsheet_filename='./CALIBRATION/XML/'.$champ["name"].'_metadata.xml';
if (file_exists($xmlsheet_filename))
{
print("<td> <a href=\"./CALIBRATION/XML/".$champ["name"]."_metadata.xml\">XML file</a></td><br>");
}


// On met a disposition la calibration H2S si elle existe
//$H2S_filename='./CALIBRATION/H2S/'.$champ["name"].'.txt';
//if (file_exists($H2S_filename))
//{
//print("<br><td> <a href=\"./CALIBRATION/H2S/".$champ["name"].".txt\">CALIBRATION H2S Sheet</a></td><br>");
//}


//on affiche les informations du float
print("<br>WMO : ".$champ_float["platform_number"]."<br>TYPE : ".$champ_float["platform_type"]."<br>SN : ".$champ_float["float_serial_number"]."<br>");
print("SIM : ".$champ_float["SIM_CARD"]."<br>");
print("IMEI : ".$champ_float["imei"]."<br>");
print("<br>PI : ".$champ_float["pi_name"]."<br>Project : ".$champ_float["project_name"]."<br><br>");

//REQUETE SUR CAPTEUR
//SELECT `PARAMETER_SENSOR`.sensor AS sensor,`PARAMETER_SENSOR`.sensor_serial_no AS serial_no, `PARAMETER_SENSOR`.id_parameter_sensor AS id_par_sens, `MISSION_SENSOR`.id_parameter_sensor AS id_mis_sens  FROM `PARAMETER_SENSOR`,`MISSION_SENSOR` WHERE `PARAMETER_SENSOR`.id_parameter_sensor=`MISSION_SENSOR`.id_parameter_sensor AND `MISSION_SENSOR`.id_mission='$id_mission' ORDER BY sensor ASC"; 

$requete_capteur="SELECT `PARAMETER_SENSOR`.sensor AS sensor,`PARAMETER_SENSOR`.parameter AS parameter,`PARAMETER_SENSOR`.sensor_model AS model,`PARAMETER_SENSOR`.sensor_serial_no AS serial_no, `PARAMETER_SENSOR`.id_parameter_sensor AS id_par_sens, `MISSION_SENSOR`.id_parameter_sensor AS id_mis_sens  FROM `PARAMETER_SENSOR`,`MISSION_SENSOR` WHERE `PARAMETER_SENSOR`.id_parameter_sensor=`MISSION_SENSOR`.id_parameter_sensor AND `MISSION_SENSOR`.id_mission='$id_mission'"; 
// ENVOI REQUETE
$resultat_capteur=mysql_query($requete_capteur, $connexion_server);
print("<table width=80% border=1>");
print("<tr>");
print("<td>SENSOR</td><td>MODEL</td><td>PARAMETER</td><td>SN</td>");
while($champ_capteur = mysql_fetch_array($resultat_capteur)) {
print("<tr>");
print("<td>".$champ_capteur["sensor"]."</td>");
print("<td>".$champ_capteur["model"]."</td>");
print("<td>".$champ_capteur["parameter"]."</td>");
if ( $champ_capteur["model"]=="cROVER" || $champ_capteur["model"]=="ECO3" || $champ_capteur["model"]=="OCR504")
{
$calib_filename='./CALIBRATION/'.$champ_capteur["model"].'/'.$champ["name"].'_'.$champ_capteur["model"].'.pdf';
$calib_filename_apmt='./CALIBRATION/CTS5/'.$champ["name"].'_'.$champ_capteur["model"].'_'.$champ_capteur["serial_no"].'.txt';
if (file_exists($calib_filename))
{
print("<td>");
print("<a href=\"./CALIBRATION/".$champ_capteur["model"]."/".$champ["name"]."_".$champ_capteur["model"].".pdf\">".$champ_capteur["serial_no"]."</a>");
print("</td>");

}
elseif (file_exists($calib_filename_apmt))
{
print("<td>");
print("<a href=\"./CALIBRATION/CTS5/".$champ["name"]."_".$champ_capteur["model"]."_".$champ_capteur["serial_no"].".txt\">".$champ_capteur["serial_no"]."</a>");
print("</td>");
}
else
{
print("<td>".$champ_capteur["serial_no"]."</a></td>");
}
}
elseif ( $champ_capteur["model"]=="DO4330" )
{
$calib_filename='./CALIBRATION/'.$champ_capteur["model"].'/'.$champ_float["platform_number"].'_'.$champ_capteur["serial_no"].'_CALIB_DO.zip';
$calib_filename0='./CALIBRATION/'.$champ_capteur["model"].'/'.$champ_float["platform_number"].'_0'.$champ_capteur["serial_no"].'_CALIB_DO.zip';
if (file_exists($calib_filename))
{
print("<td>");
print("<a href=\"./CALIBRATION/".$champ_capteur["model"]."/".$champ_float["platform_number"]."_".$champ_capteur["serial_no"]."_CALIB_DO.zip\">".$champ_capteur["serial_no"]."</a>");
print("</td>");
}
elseif (file_exists($calib_filename0))
{
print("<td>");
print("<a href=\"./CALIBRATION/".$champ_capteur["model"]."/".$champ_float["platform_number"]."_0".$champ_capteur["serial_no"]."_CALIB_DO.zip\">".$champ_capteur["serial_no"]."</a>");
print("</td>");
}
else
{
print("<td>".$champ_capteur["serial_no"]."</a></td>");
}
}
elseif ( $champ_capteur["model"]=="FW2.2.6" )
{
print("<td> <a href=\"./CALIBRATION/".$champ_capteur["model"]."/".$champ["name"]."_".$champ_capteur["model"].".zip\">".$champ_capteur["serial_no"]."</a>&nbsp;<a href=\"./CONFIGURATION/".$champ_capteur["model"]."/".$champ_capteur["sensor"].$champ_capteur["serial_no"].$champ["name"]."_config.txt\">config</a>");
//print("<td> <a href=\"./CALIBRATION/".$champ_capteur["model"]."/".$champ["name"]."_".$champ_capteur["model"].".zip\">".$champ_capteur["serial_no"]."</a></td>");

// On met a disposition la calibration H2S si elle existe
$H2S_filename='./CALIBRATION/H2S/'.$champ["name"]."_".$champ_capteur["serial_no"].'.txt';
if (file_exists($H2S_filename))
{
print("&nbsp;<a href=\"$H2S_filename\">H2S Sheet</a></td><br>");
}
else
{
print("</td>");
}
}
elseif ( $champ_capteur["model"]=="SeaFET" )
{
print("<td> <a href=\"./CALIBRATION/".$champ_capteur["model"]."/".$champ["name"]."_".$champ_capteur["serial_no"].".pdf\">".$champ_capteur["serial_no"]."</a></td>");
}

else
{
print("<td>".$champ_capteur["serial_no"]."</td>");
}
print("</tr>");

}
print("</table>");


//REQUETE SUR CONFIGURATION
//$requete_configuration="SELECT `CONFIGURATION`.CONFIG_ParkPressure_dBAR AS ParkPressure,`CONFIGURATION`.CONFIG_ProfilePressure_dBAR AS ProfilePressure,`MISSION_CONFIGURATION`.mission_number FROM `CONFIGURATION`,`MISSION_CONFIGURATION` WHERE `PARAMETER_SENSOR`.id_parameter_sensor=`MISSION_SENSOR`.id_parameter_sensor AND `MISSION_SENSOR`.id_mission='$id_mission'"; 


mysql_close($connexion_server);


?>
