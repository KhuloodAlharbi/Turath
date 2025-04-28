document.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("contact-form");

  form.setAttribute("novalidate", true);

  const inputs = form.querySelectorAll("input, select, textarea");
  inputs.forEach((input) => {
    input.addEventListener("input", () => {
      clearError(input); 
      let isValid = true;
      const id = input.id;

      if (id === "contact-first-name") {
        isValid = /^[A-Za-z\s]{2,30}$/.test(input.value);
        if (!isValid) {
          showError(input, "First name must be 2–30 letters only.");
        }
      } else if (id === "contact-last-name") {
        isValid = /^[A-Za-z\s]{2,30}$/.test(input.value);
        if (!isValid) {
          showError(input, "Last name must be 2–30 letters only.");
        }
      } else if (id === "contact-mobile") {
        isValid = /^\+9665\d{8}$/.test(input.value);
        if (!isValid) {
          showError(input, "Mobile must be in format: +9665XXXXXXXX");
        }
      } else if (id === "contact-email") {
        isValid = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(input.value);
        if (!isValid) {
          showError(input, "Email must be in format: example@email.com");
        }
      } else if (id === "contact-message") {
        isValid = input.value.length >= 2 && input.value.length <= 300;
        if (!isValid) {
          showError(input, "Message must be between 2 and 300 characters.");
        }
      }
    });

    
    if (input.tagName === 'SELECT') {
      input.addEventListener("change", () => {
        clearError(input);
        if (input.value === "") {
          let errorMessage = "";
          if (input.id === "contact-gender") {
            errorMessage = "Please select your gender.";
          } else if (input.id === "contact-language") {
            errorMessage = "Please select your preferred language.";
          } else if (input.id === "contact-dob") {
            errorMessage = "Please select your date of birth.";
          }
          showError(input, errorMessage);
        }
      });
    }
  });


  function showError(element, message) {
    const error = document.createElement("div");
    error.className = "error-message";
    error.innerText = message;
    element.parentNode.insertBefore(error, element.nextSibling);
  }

  function clearError(element) {
    const nextElement = element.nextElementSibling;
    if (nextElement && nextElement.classList.contains("error-message")) {
      nextElement.remove();
    }
  }

  function clearErrors() {
    const errors = document.querySelectorAll(".error-message");
    errors.forEach((err) => err.remove());
  }
});