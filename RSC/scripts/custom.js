$( document ).ready(function() {

  $('.key-search').on('keyup',function(){
    var key = $(this).val();

    $.ajax({
      url: 'controller/filter.php',
      dataType: 'json',
      data:{'key':key},
      type: 'POST',
      beforeSend: function() {
        //$this.html('<i class="fa fa-circle-o-notch fa-spin" style="margin: auto 5px;"></i>');
      },
      success: function(response) {
        if (response.error) {
          console.log(response);
        } else {
          $('#key-filter-insertion').empty();

          response.forEach(function(element, index, array) {
            var $item = $('<div>').addClass("row key-rows-table keys-" + element.id);

            $item = $item[0];

            var col1 = $('<div>').addClass("columns small-1 action-field top-space").html(element.id);
            var col2 = $('<div>').addClass("columns small-3 action-field top-space").html(element.last_update);
            var col3 = $('<div>').addClass("columns small-2 action-field top-space").html(element.status);
            var name = "&nbsp;";
            if (element.username != null) {
              name = element.username;
            }
            var col4 = $('<div>').addClass("columns small-4 action-field top-space cut-text").html(name);
            var col5 = $('<div>').addClass("columns small-1 action-button top-space").html($('<img>').attr('src', '../images/change.svg'));
            var col6 = $('<div>').addClass("columns small-1 action-button top-space end").html($('<img>').attr('src', '../images/history.svg'));

            $item.append(col1[0]);
            $item.append(col2[0]);
            $item.append(col3[0]);
            $item.append(col4[0]);
            $item.append(col5[0]);
            $item.append(col6[0]);

            $('#key-filter-insertion').append($item);
          });
        }
      }, error: function(response) {

      }
    });

  });

});