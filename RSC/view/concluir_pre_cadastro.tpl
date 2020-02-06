<div class="row text-center top-space">
	<div class="columns small-12 top-space">
		Concluído com sucesso.<br><br>O Cliente <b><?php echo $data['nome'] ?></b> foi vinculado ao CPF <b><?php echo $data['CPF'] ?></b>. Conclua os dados na página inicial informando o CPF.
	</div>
</div>

<div class="row text-center top-space">
	<div class="columns medium-12 center top-space">
		<div class="row text-center top-space">
			<div class="columns small-12 top-space bottom-space">
				<b>Postagem do NEWS</b>
			</div>
      <div class="iframe">
  			<div class="columns small-12 top-space">
  				NOME: <?php echo $data['nome']; ?>
  			</div>
  			<div class="columns small-12 top-space">
  				PROFISSÃO: <?php echo $data['cargo']; ?>
  			</div>
  			<div class="columns small-12 top-space">
  				CPF: <?php echo $data['CPF']; ?>
  			</div>
  			<div class="columns small-12 top-space">
  				Perfil: <?php echo $data['perfil']; ?>
  			</div>
  			<div class="columns small-12 top-space">
  				Naturalidade: <?php echo $data['cidade'];?> <?php echo $data['estado']; ?>
  			</div>
      </div>
		</div>
	</div>

	<div class="columns small-12 top-space">
		<div class="input-data-container">
			<a href="?page=home"><input value="Confirmar" class="input-data" type="button" id="submit"></a>
		</div>
	</div>
</div>

<script type="text/javascript">
	var type = 1;
	$("#type").change(function(){
		type = $(this).children("option:selected").val();
	});

	$('#submit').on('click',function(){
		var nome = $('#nome').val(),
		login = $('#login').val(),
		password = $('#password').val();


		if(nome.length < 3 || login.length < 3 || password.length < 3) {
			alert("Nome, login e password precisam ter pelo pelos 3 caracteres");
		} else {

			$.ajax({
				url: '/controller/cadastrar.php',
				dataType: 'json',
				data:{'nome':nome, 'login':login, 'password':password, 'type':type},
				type: 'POST',
				success: function(json) {
					if(json.error_exists) {
						alert('usuário já existe');
					}

					if(json.error_valid) {
						alert('dados inválidos');
					}

					if(json.success) {
						alert('Sucesso');
					}
				}
			});
		}
	});
</script>
