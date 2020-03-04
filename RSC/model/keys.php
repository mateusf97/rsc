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

function giveBack($key) {
	require '../model/conexao.php';

	$SQL = "UPDATE key_list SET status = 'EM ARMÁRIO', username = NULL WHERE id = '" . $key . "'";
	mysqli_query($conexao, $SQL) or die ("Algum erro aconteceu na atualização da chave para o status EM ARMÁRIO");

	$SQL = "INSERT INTO key_history SET status = 'EM ARMÁRIO', username = NULL, `number` = '" . $key . "'";
	mysqli_query($conexao, $SQL) or die ("Algum erro aconteceu na adição do histórico da chaves quando o status mudou para EM ARMÁRIO");
}

function giveNull($key) {
	require '../model/conexao.php';

	$SQL = "UPDATE key_list SET status = 'VAGO', username = NULL WHERE id = '" . $key . "'";
	mysqli_query($conexao, $SQL) or die ("Algum erro aconteceu na atualização da chave para o status VAGO");

	$SQL = "INSERT INTO key_history SET status = 'VAGO', username = NULL, `number` = '" . $key . "'";
	mysqli_query($conexao, $SQL) or die ("Algum erro aconteceu na adição do histórico da chaves quando o status mudou para VAGO");
}

function history($key) {
	require '../model/conexao.php';

	$SQL = "SELECT * FROM key_history WHERE number = '" . $key . "' ORDER BY last_update DESC";
	$rs = mysqli_query($conexao, $SQL) or die ("Algum erro aconteceu na busca do histórico da chave");

	$results = array();

	while ($row = mysqli_fetch_assoc($rs)){
		$results[] = $row;
	}

	foreach ($results as $key => $result) {
		$results[$key]['last_update'] = date('d/m/Y H:i:s', strtotime($result['last_update']));
	}

	return $results;
}

function update($key, $username, $observation) {
	require '../model/conexao.php';

	if ($observation === "" || !$observation || $observation == "" || $observation ==  " ") {
		$observation = "NULL";
	} else {
		$observation = "'" . $observation . "'";
	}

	$SQL = "UPDATE key_list SET status = 'ALOCADO', username = '" . $username . "', observation = " . $observation . " WHERE id = '" . $key . "'";

	mysqli_query($conexao, $SQL) or die ("Algum erro aconteceu na atualização da chave para o status ALOCADO");

	$SQL = "INSERT INTO key_history SET status = 'ALOCADO', username = '" . $username . "', `number` = '" . $key . "'";
	mysqli_query($conexao, $SQL) or die ("Algum erro aconteceu na adição do histórico da chaves quando o status mudou para ALOCADO");

}

?>