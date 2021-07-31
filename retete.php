<?php
  // Allow from any origin. Required headers
  header("Access-Control-Allow-Origin: *");
  header("Content-Type: application/json; charset=UTF-8");
  header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
  header("Access-Control-Max-Age: 3600");
  header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

  $cnx = mysqli_connect("localhost","root","","retete");
  // Se verifica conexiunea
  if (mysqli_connect_errno()) {
     die("Connection failed: " . mysqli_connect_error());
  };
  // Impun setul de caractere utf8
  mysqli_set_charset($cnx,"utf8");

  //  Selectez toate retetele. Creez un fisier asociativ
  $lista_retete =  [];
  $cda = "SELECT * FROM retete";
  if ($rez = mysqli_query($cnx,$cda)) { 
      // Preiau articolele pe rand
      while ($linie = mysqli_fetch_assoc($rez)) {
          $lista_retete[] = $linie;
      }
      mysqli_free_result($rez);
  }

  //  Codific sirul asociativ $lista_retete in format JSON si il returnez.
  echo json_encode($lista_retete);
  mysqli_close($cnx);
?>