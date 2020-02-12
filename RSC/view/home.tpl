<div class="row text-center top-space">
  <div class="columns small-12 text-center header-title">RSC</div>
  <div class="columns small-12 text-center top-space">
    <input autocomplete="0ff" class="key-search" max="9999" min="0" maxlength="4" step="1" type="number" placeholder="Nº chave" name="search">
  </div>

  <div class="columns small-12 top-space">
    <div class="row key-title-table">
      <div class="columns small-1 top-space">Nº</div>
      <div class="columns small-3 top-space">Data</div>
      <div class="columns small-2 top-space">Status</div>
      <div class="columns small-4 top-space">Funcionário</div>
      <div class="columns small-1 top-space">Atz</div>
      <div class="columns small-1 top-space end">Hist</div>
    </div>
  </div>

  <div class="columns small-12 top-space" id="key-filter-insertion">
    <?php if(isset($keys) && count($keys)) foreach ($keys as $id => $key): ?>
      <div class="row key-rows-table keys-<?php echo $key['id']; ?>">
        <div class="columns small-1 action-field top-space"><?php echo $key['id']; ?></div>
        <div class="columns small-3 action-field top-space"><?php echo $key['last_update']; ?></div>
        <div class="columns small-2 action-field top-space"><?php echo $key['status']; ?></div>
        <div class="columns small-4 action-field top-space cut-text'"><?php echo $key['username'];?>&nbsp;</div>
        <div class="columns small-1 action-button top-space"><img src="../images/change.svg"></div>
        <div class="columns small-1 action-button top-space end"><img src="../images/history.svg"></div>
      </div>
    <?php endforeach ?>
  </div>

</div>
