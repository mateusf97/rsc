<div class="row text-center top-space">
	<div class="columns small-12 top-space">
		Bem-vindo ao pré cadastro de cliente!
	</div>
</div>

<form method="POST" action="?page=concluir_pre_cadastro">
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
						<input autocomplete="off" required class="input-data" type="text" name="nome" id="nome1">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Profissão:
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input autocomplete="off" class="input-data" type="text" name="cargo" id="cargo">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						CPF:
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input autocomplete="off" OnBlur="ValidaCPF();" required class="input-data" type="text" name="CPF" id="CPF">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Perfil:
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input autocomplete="off" class="input-data" type="text" name="perfil" id="nome3">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Naturalidade:
					</div>
				</div>
				<div class="columns small-12 medium-8 medium-6 top-space">
					<div class="input-data-container">
						<select id="estado" name="estado">
							<option value="AC">Acre</option>
							<option value="AL">Alagoas</option>
							<option value="AP">Amapá</option>
							<option value="AM">Amazonas</option>
							<option value="BA">Bahia</option>
							<option value="CE">Ceará</option>
							<option value="DF">Distrito Federal</option>
							<option value="ES">Espírito Santo</option>
							<option value="GO">Goiás</option>
							<option value="MA">Maranhão</option>
							<option value="MT">Mato Grosso</option>
							<option value="MS">Mato Grosso do Sul</option>
							<option value="MG" selected>Minas Gerais</option>
							<option value="PA">Pará</option>
							<option value="PB">Paraíba</option>
							<option value="PR">Paraná</option>
							<option value="PE">Pernambuco</option>
							<option value="PI">Piauí</option>
							<option value="RJ">Rio de Janeiro</option>
							<option value="RN">Rio Grande do Norte</option>
							<option value="RS">Rio Grande do Sul</option>
							<option value="RO">Rondônia</option>
							<option value="RR">Roraima</option>
							<option value="SC">Santa Catarina</option>
							<option value="SP">São Paulo</option>
							<option value="SE">Sergipe</option>
							<option value="TO">Tocantins</option>
							<option value="EX">Estrangeiro</option>
						</select>
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Cidade
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input autocomplete="off" class="input-data" type="text" name="cidade" id="nome8">
					</div>
				</div>
				<div class="columns small-12 medium-4 top-space">
					<div class="input-data-container padding">
						Responsável pelo cadastro:
					</div>
				</div>
				<div class="columns small-12 medium-8 top-space">
					<div class="input-data-container">
						<input autocomplete="off" class="input-data" type="text" name="responsavel" id="nome4">
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
</form>

<script type="text/javascript">
	function ValidaCPF(){

		var ao_cpf = $("#CPF").val();
		var cpfValido = /^(([0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}))$/;
		if (cpfValido.test(ao_cpf) == false)    {

			ao_cpf = ao_cpf.replace( /\D/g , "");

			if (ao_cpf.length==11){
				ao_cpf = ao_cpf.replace( /(\d{3})(\d)/ , "$1.$2");
				ao_cpf = ao_cpf.replace( /(\d{3})(\d)/ , "$1.$2");
				ao_cpf = ao_cpf.replace( /(\d{3})(\d{1,2})$/ , "$1-$2");

				$("#CPF").val(ao_cpf);
			} else {
				console.log("CPF invalido");
			}

		}
	}
</script>
