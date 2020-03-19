$(function(){
  function buildHTML(comment){
    var html = `<p>
                  <strong>
                    ${comment.user_name}
                    ：
                  </strong>
                  ${comment.text}
                </p>`


    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })    
    .done(function(data){
      var html = buildHTML(data);
      var content = $('#comment_text').val()
      if (content !== "") {
      $('.comments').append(html); 
      }
      $('.form-control').val('');
      $('.send-btn').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
})