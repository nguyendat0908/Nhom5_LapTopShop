document.addEventListener("DOMContentLoaded", () => {
  const quantityList = document.querySelectorAll(".quantity");
  quantityList.forEach((quantity, index) => {
    quantity.value = localStorage.getItem(`quantity_${index}`);
  });
});
