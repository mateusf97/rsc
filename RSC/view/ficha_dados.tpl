<div class="row text-center top-space">
	<div class="columns small-12 top-space">
		Bem-vindo ao Formulário para contrato de cliente. Esse cliente foi pré-cadastrado por <?php echo $data['created_by']; ?>
	</div>
</div>

	<div class="row text-center top-space">
		<div class="columns small-12 top-space">
			<div class="row text-left top-space">
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Nome Completo:
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input value="<?php echo $data['name']; ?>" autocomplete="off" required class="input-data" type="text" name="nome" id="nome1">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Profissão:
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input value="<?php echo $data['occupation']; ?>" autocomplete="off" class="input-data" type="text" name="cargo" id="cargo">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						CPF:
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input value="<?php echo $data['CPF']; ?>" autocomplete="off" OnBlur="ValidaCPF();" required class="input-data" type="text" name="CPF" id="CPF">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Perfil:
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input value="<?php echo $data['profile']; ?>" autocomplete="off" class="input-data" type="text" name="perfil" id="nome3">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Naturalidade:
					</div>
				</div>
				<div class="columns small-12 medium-8 medium-6 top-space">
					<div class="input-data-container">
						<input value="<?php echo $data['city'] . " " . $data['state']; ?>" autocomplete="off" class="input-data" type="text" name="d2w" id="nome13">
					</div>
				</div>
			</div>
		</div>
		<div class="columns small-12 top-space">
			<div class="input-data-container">
				<input value="Confirmar" class="input-data" type="submit" id="submit">
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
