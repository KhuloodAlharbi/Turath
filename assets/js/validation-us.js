document.addEventListener('DOMContentLoaded', function() {
  const form = document.getElementById('contact-form');

  form.addEventListener('submit', async function(event) {
      event.preventDefault(); 

      try {
          const formData = new URLSearchParams(new FormData(form));

          const response = await fetch(form.action, {
              method: form.method,
              body: formData,
              headers: {
                  'Content-Type': 'application/x-www-form-urlencoded'
              }
          });

          const data = await response.json(); 
          
          if (data.success) {
              alert(data.message); 
              form.reset(); 
          } else {
              alert(data.message || 'Error submitting form. Please try again.');
          }
      } catch (error) {
          console.error('Error:', error);
          alert('Error submitting form. Please try again.');
      }
  });
});