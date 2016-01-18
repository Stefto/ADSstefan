<?php
$host = "localhost";
$gebruiker = "root";
$wachtwoord = "";
$database = "datavis";

//locatie, gebruikersnaam, wachtwoord, db
$conn = mysqli_connect($host, $gebruiker, $wachtwoord, $database)
        or die("Could not connect: " . mysqli_connect_error());

?>