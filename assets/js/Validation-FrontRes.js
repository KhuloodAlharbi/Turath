document.addEventListener("DOMContentLoaded", () => {
  const form = document.querySelector(".reservation-container form");

  form.setAttribute("novalidate", true);

  const inputs = form.querySelectorAll("input, select, textarea");
  inputs.forEach((input) => {
    input.addEventListener("input", () => {
      const nextElement = input.nextElementSibling;
      clearError(input); 

      let isValid = true;
      const id = input.id;

      if (id === "trip") {
        isValid = input.value !== "";
        if (!isValid) {
          showError(input, "Please select a trip.");
        }
      } else if (id === "name") {
        isValid = /^[A-Za-z\s]{2,30}$/.test(input.value);
        if (!isValid) {
          showError(input, "Full name must be at least 2 characters.");
        }
      } else if (id === "email") {
        isValid = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(input.value);
        if (!isValid) {
          showError(input, "Email must be in format: example@email.com");
        }
      } else if (id === "phone") {
        isValid = /^\+9665\d{8}$/.test(input.value);
        if (!isValid) {
          showError(input, "Mobile must be in format: +9665XXXXXXXX");
        }
      } else if (id === "transaction") {
        isValid = /^\d{4}$/.test(input.value);
        if (!isValid) {
          showError(input, "Transaction number must be exactly 4 digits.");
        }
      } else if (id === "notes") {
        isValid = input.value.trim().length >= 4 && input.value.trim().length <= 400;
        if (!isValid) {
          showError(input, "Notes must be between 4 and 400 characters.");
        }
      }
    });
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