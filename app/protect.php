<?php

if(!isset($_SESSION)) {
    session_start();
}

if(!isset($_SESSION['user'])) {
 
  
    
       die(
           "<script>alert('Você não pode acessar esta página porque não está logado'); javascript:window.location='index.php'</script>" ); 
}


?>