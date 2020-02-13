<div class="display-background-update top-space">
  <div class="row text-center top-space display-key-update">
    <div class="columns top-space small-12 text-center header-title title-number-key">CHAVE -</div>

    <div class="columns small-12 top-space">
      <div class="row key-status-table text-center">
        <div class="columns small-push-3 small-3 top-space center">Status</div>
        <div class="columns small-push-3 small-3 top-space end">Funcionário</div>
      </div>


      <div class="row key-data-table text-center top-space">
      </div>

      <div class="row text-center">
        <div class="columns small-push-3 small-3 top-space center">
          <select class="select-status">
            <option class="select-status">ALOCADO</option>
          </select>
        </div>
        <div class="columns small-push-3 small-3 top-space end">
          <select class="select-status select-username">
            <?php echo $usernames; ?>
          </select>
        </div>
      </div>

      <div class="row key-data-table text-center top-space flex-centered">
        <div class="top-space act-button">
          <button class="action-status-button update-key-status">Atualizar</button>
        </div>
      </div>
    </div>

  </div>
</div>
<input type="hidden" id="id-key" value="">
