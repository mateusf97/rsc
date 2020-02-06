<div class="row text-center top-space">
	<div class="columns small-12 top-space">
		Bem-vindo ao Formulário para contrato de cliente!
	</div>
</div>

<div class="row text-center top-space">
	<div class="columns medium-6 small-12 top-space">
		<div class="row text-center top-space">
			<div class="columns small-12 top-space">
				<b>Locatário</b>
			</div>
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					Nome Completo <input autocomplete="off" class="input-data" type="text" id="nome1">
				</div>
			</div>
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					Cargo <input autocomplete="off" class="input-data" type="text" id="nome1">
				</div>
			</div>
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					CPF <input autocomplete="off" class="input-data" type="text" id="nome2">
				</div>
			</div>
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					RG <input autocomplete="off" class="input-data" type="text" id="nome3">
				</div>
			</div>
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					Estado Cívil?<select name="select" id="type">
						<option value="1" selected>Casado</option>
						<option value="2">Solteiro</option>
						<option value="3">Viuvo</option>
					</select>
				</div>
			</div>
		</div>
	</div>
	<div class="columns medium-6 small-12 top-space">
		<div class="row text-center top-space">
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					Locador <input autocomplete="off" class="input-data" type="text" id="nome4">
				</div>
			</div>
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					CPF <input autocomplete="off" class="input-data" type="text" id="nome5">
				</div>
			</div>
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					RG <input autocomplete="off" class="input-data" type="text" id="nome6">
				</div>
			</div>
			<div class="columns small-12 top-space">
				<div class="input-data-container">
					Estado Cívil?<select name="select" id="type">
						<option value="1" selected>Casado</option>
						<option value="2">Solteiro</option>
						<option value="3">Viuvo</option>
					</select>
				</div>
			</div>
		</div>
	</div>
	<div class="columns small-12 top-space">
		<div class="input-data-container">
			<input value="Confirmar" class="input-data" type="button" id="submit">
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
