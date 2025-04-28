document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("phone-lookup-form");
    const phoneInput = document.getElementById("phone-number");
    const listDiv = document.getElementById("reservations-list");
  
    form.setAttribute("novalidate", true);
  
    form.addEventListener("submit", function (e) {
      e.preventDefault();
      clearErrors();
  
      let isValid = true;
  
   
    if (!phoneInput.value.trim()) {
        showError(phoneInput, "Please enter your mobile number.");
        isValid = false;
    } else if (!/^\+9665\d{8}$/.test(phoneInput.value)) {
        showError(phoneInput, "Mobile must be in format: +9665XXXXXXXX");
        isValid = false;
    }
    
    if (!isValid) {
        return; 
    }
    

      listDiv.innerHTML = '<p>Searching for reservations...</p>';
  
      fetch(`http://localhost:3000/get-reservations-by-phone?phone=${encodeURIComponent(phoneInput.value)}`)
        .then(response => response.json())
        .then(data => {
          if (data.success) {
            if (data.reservations.length > 0) {
              let html = '<h4>Your Reservations</h4>';
              data.reservations.forEach(res => {
                html += `
                  <div class="reservation-card">
                    <h5>${res.trip}</h5>
                    <p><strong>Reservation Date:</strong> ${new Date(res.reservation_date).toLocaleString()}</p>
                    <p><strong>Name:</strong> ${res.name}</p>
                    <p><strong>Email:</strong> ${res.email}</p>
                    <p><strong>Reference #:</strong> ${res.transaction}</p>
                    ${res.notes ? `<p><strong>Notes:</strong> ${res.notes}</p>` : ''}
                  </div>
                `;
              });
              listDiv.innerHTML = html;
            } else {
              listDiv.innerHTML = `<p>${data.message}</p>`;
            }
          } else {
            listDiv.innerHTML = `<p class="error">${data.message}</p>`;
          }
        })
        .catch(error => {
          listDiv.innerHTML = `<p class="error">Error: ${error.message}</p>`;
        });
    });
  
    const inputs = form.querySelectorAll("input");
  
    inputs.forEach((input) => {
      input.addEventListener("input", () => {
        const nextElement = input.nextElementSibling;
        if (nextElement && nextElement.classList.contains("error-message")) {
          let valid = /^\+9665\d{8}$/.test(input.value);
          if (valid) {
            nextElement.remove();
          }
        }
      });
    });
  
    function showError(element, message) {
      const error = document.createElement("div");
      error.className = "error-message";
      error.style.color = "red";
      error.style.marginTop = "5px";
      error.innerText = message;
      element.parentNode.insertBefore(error, element.nextSibling);
    }
  
    function clearErrors() {
      const errors = document.querySelectorAll(".error-message");
      errors.forEach((err) => err.remove());
    }
  });
  