document.addEventListener("turbolinks:load", function() {
  $('body').on('submit', '#newMessage', function(e){
    e.preventDefault();
    // var new_message = {:message => 'this is a message'}
    // send_message :event_name, new_message
  });
})
