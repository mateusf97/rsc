<?php

function getFilterKeys($key) {
	require '../model/conexao.php';

	$SQL = "SELECT * FROM key_list WHERE id LIKE '" . $key . "%'";
	$rs = mysqli_query($conexao, $SQL) or die("Algum erro aconteceu na pesquisa das chaves");


	$results = array();
	while ($row = mysqli_fetch_assoc($rs)){
		$results[] = $row;
	}

	foreach ($results as $key => $result) {
		$results[$key]['last_update'] = date('d/m/Y H:i:s', strtotime($result['last_update']));
	}

	return $results;
}

?>