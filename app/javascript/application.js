// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

$(document).ready(function() {
    $('#edit_tweet_form').on('submit', function(event) {
      event.preventDefault();
  
      $.ajax({
        url: $(this).attr('action'),
        type: 'PATCH',
        data: $(this).serialize(),
        success: function(response) {
          
          console.log('Tweet updated via Ajax:', response);
          
          window.location.href = '/tweets'; 
        },
        error: function(xhr, status, error) {
        
          console.error('Error updating tweet:', error);
         
        }
      });
    });
  });
  