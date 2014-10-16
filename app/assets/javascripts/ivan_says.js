var ready;
ready = function startup(){
  $('.com_section a.coma').on('click', function(event) {
    event.preventDefault();
    var container = $(this).parent().first();
    var id = container.attr('id');
    $.ajax({
      url: '/comments/',
      data: {post_id: id},
      type: 'get',
      success: function(data){
        $('#'+id+'.com_section').html(data);

        $('.rep_section a.repa').on('click', function(event) {
          event.preventDefault();
          event.stopPropagation();
          var container = $(this).parent().first();
          var id = container.attr('id');
          console.log(container);
          console.log(id);
          $.ajax({
            url: '/replies/',
            data: {com_id: id},
            type: 'get',
            success: function(data){
              $('#'+id+'.rep_section').html(data);},
            error: function(){ $('#'+id+'.rep_section').html('Oooops, Ba Da Bum!!!'); }
          });
        });
      },
      error: function(){ $('#'+id+'.com_section').html('Oooops, Ba Da Bum!!!'); }
    });
  });


};





$(document).ready(ready);
$(document).on('page:load', ready);
