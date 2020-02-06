<?php

  $data = $_POST;

  require_once 'model/pre_cadastro.php';

  newClient($data);

	require_once 'view/concluir_pre_cadastro.tpl';

?>

