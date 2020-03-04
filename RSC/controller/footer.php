<?php
  function requireToVar($file){
      ob_start();
      require($file);
      return ob_get_clean();
  }

  $usernames = requireToVar('view/usuarios.tpl');
  $status = requireToVar('view/observacao.tpl');

	require 'view/status.tpl';
  require 'view/history.tpl';
  require 'view/update.tpl';
  require 'view/footer.tpl';
?>