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
      <div class="row key-rows-table">
        <div class="columns small-1 action-field top-space"><?php echo $key['id']; ?></div>
        <div class="columns small-3 action-field top-space"><?php echo $key['last_update']; ?></div>
        <div class="columns small-2 action-field top-space"><?php echo $key['status']; ?></div>
        <div class="columns small-4 action-field top-space cut-text"><?php echo $key['username'];?>&nbsp;
          <?php if ($key['observation']) { ?>
            <div class="floating-tip" title="<?php echo $key['observation']; ?>"></div>
          <?php } ?>
        </div>
        <div class="columns small-1 action-button button-update top-space" data-status="<?php echo $key['status']; ?>" data-username="<?php echo $key['username'];?>" data-id="<?php echo $key['id']; ?>"><img src="../images/change.svg"></div>
        <div class="columns small-1 action-button button-history top-space end" data-status="" data-username="<?php echo $key['username'];?>" data-id="<?php echo $key['id']; ?>"><img src="../images/history.svg"></div>
      </div>
    <?php endforeach ?>
  </div>
</div>
