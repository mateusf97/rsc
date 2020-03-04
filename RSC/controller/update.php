<?php
	require_once '../model/keys.php';

	if (!isset($_POST['key'])) {
    http_response_code(202);
    print_r(json_encode(array('error' => true, 'status' => 'O número da chave digitada é inválido.', )));
    exit();
  }

  $key = $_POST['key'];
  $username = $_POST['username'];
  $observation = $_POST['observation'];

  $history = update($key, $username, $observation);

  print_r(json_encode(array($history)));
?>

