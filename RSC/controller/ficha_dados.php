<?php

require_once 'model/ficha_dados.php';

if (!isset($_GET['CPF']) || empty($_GET['CPF']) || !verificaCPF($_GET['CPF'])) {
  require_once 'view/ficha_dados_sem_cpf.tpl';

} else {

  $data = buscaClient($_GET['CPF']);
	require_once 'view/ficha_dados.tpl';
}

	// require_once 'model/home.php';

	// $results = getNow();

	// foreach ($results as $key => $result) {
	// 	$hora_certa = $result['hora'];
	// 	echo ($hora_certa);
	// }


?>

