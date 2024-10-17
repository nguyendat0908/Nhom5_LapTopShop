document.addEventListener("DOMContentLoaded", () => {
  const quantityList = document.querySelectorAll(".quantity");
  quantityList.forEach((quantity, index) => {
    quantity.value = localStorage.getItem(`quantity_${index}`);
  });
  const checkoutForm = document.querySelector("#checkout-form");
  checkoutForm.addEventListener("click", (e) => {
    e.preventDefault();
    window.location.href = "thanks.jsp";
  });
});
