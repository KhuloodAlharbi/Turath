document.addEventListener('DOMContentLoaded', function() {
  const reservationForm = document.querySelector('.reservation-container.form');

  if (reservationForm) {
      reservationForm.addEventListener('submit', function(event) {
          event.preventDefault();

          const formData = new URLSearchParams(new FormData(reservationForm));

          fetch(reservationForm.action, {
              method: reservationForm.method,
              body: formData,
              headers: {
                  'Content-Type': 'application/x-www-form-urlencoded'
              }
          })
          .then(response => {
              if (!response.ok) {
                  return response.json().then(err => { throw err; });
              }
              return response.json();
          })
          .then(data => {
              if (data.success) {
                  alert(data.message);
                  reservationForm.reset();
              } else {
                  alert(data.message || 'Error submitting form. Please try again.');
              }
          })
          .catch(error => {
              console.error('Error:', error);
              alert(error.message || 'Error submitting form. Please try again.');
          });
      });
  }

  
  const contactForm = document.querySelector('#contact-form'); 
  if (contactForm) {
      contactForm.addEventListener('submit', function(event) {
          event.preventDefault();
          
          const formData = new URLSearchParams(new FormData(contactForm));
          
          fetch(contactForm.action, {
              method: contactForm.method,
              body: formData,
              headers: {
                  'Content-Type': 'application/x-www-form-urlencoded'
              }
          })
          .then(response => {
              if (!response.ok) {
                  return response.json().then(err => { throw err; });
              }
              return response.json();
          })
          .then(data => {
              if (data.success) {
                  alert(data.message);
                  contactForm.reset();
              } else {
                  alert(data.message || 'Error submitting contact form. Please try again.');
              }
          })
          .catch(error => {
              console.error('Error:', error);
              alert(error.message || 'Error submitting contact form. Please try again.');
          });
      });
  }
});