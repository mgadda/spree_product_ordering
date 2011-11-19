$(document).ready(function() {
  $('#item_list').sortable({
    cursor: 'pointer',
    update: function() {
      $.ajax({
        type: 'post',
        data: $('#item_list').sortable('serialize'),
        dataType: 'script',
        complete: function(req) {
          //$('#item_list').effect('highlight');
        },
        url: '/admin/products/order_products'
      })
    }
  });
});