$( document ).ready(function() {

  $('.key-search').on('keyup',function(){
    var key = $(this).val();

    $.ajax({
      url: 'controller/filter.php',
      dataType: 'json',
      data:{'key':key},
      type: 'POST',
      success: function(response) {
        if (response.error) {
          console.log(response);
        } else {
          $('.button-update').unbind().off();
          $('#key-filter-insertion').empty();

          response.forEach(function(element, index, array) {
            var $item = $('<div>').addClass("row key-rows-table keys-" + element.id);

            $item = $item[0];

            var col1 = $('<div>').addClass("columns small-1 action-field top-space").html(element.id);
            var col2 = $('<div>').addClass("columns small-3 action-field top-space").html(element.last_update);
            var col3 = $('<div>').addClass("columns small-2 action-field top-space").html(element.status);
            var name = "<span>&nbsp; &nbsp;</span>";
            if (element.username != null) {
              name = element.username;
            }
            var col4 = $('<div>').addClass("columns small-4 action-field top-space cut-text").html(name);
            var col5 = $('<div>').addClass("columns small-1 action-button button-update top-space").attr('data-status', element.status).attr('data-username', name).attr('data-id', element.id).html($('<img>').attr('src', '../images/change.svg'));
            var col6 = $('<div>').addClass("columns small-1 action-button button-history top-space end").attr('data-status', element.status).attr('data-username', name).attr('data-id', element.id).html($('<img>').attr('src', '../images/history.svg'));

            $item.append(col1[0]);
            $item.append(col2[0]);
            $item.append(col3[0]);
            $item.append(col4[0]);
            $item.append(col5[0]);
            $item.append(col6[0]);

            $('#key-filter-insertion').append($item);
          });

          clicks();
        }
      }, error: function(response) {
        alert("Algo deu errado. E não era pra isso ter acontecido.\n\n Já verificou se o sistema está em execução?");
      }
    });
  });

  function clicks() {
    $('.button-update').off().on('click',function() {
      var id = $(this).data('id');
      $('#id-key').val(id);

      $('.display-background-status').show();
      $('.title-number-key').html("CHAVE " + id);
      $('.give-back-key').attr('data-id', id);
      $('.selected-status-key').html($(this).data('status'));
      $('.selected-username-key').html($(this).data('username'));
      giveBackKey();
    });
  }

  clicks();

  $('.display-background-status').on('click', function(e) {
    if (e.target !== this)
      return;

    $('.display-background-status').hide();
  });

  function giveBackKey() {
    $('.give-back-key').off();

    $('.give-back-key').on('click',function() {

      var chave = $('#id-key').val();
      console.log(chave);

      $.ajax({
        url: 'controller/give_back.php',
        dataType: 'json',
        data:{'key':chave},
        type: 'POST',
        success: function(response) {
          if (response.error) {
            console.log(response);
          } else {
            $('.display-background-status').hide();
            $('.key-search').val(chave);
            $('.key-search').keyup();
            console.log(response)
          }
        }, error: function(response) {
          alert("Algo deu errado. E não era pra isso ter acontecido.\n\n Já verificou se o sistema está em execução?");
        }
      });
    });


  }
});