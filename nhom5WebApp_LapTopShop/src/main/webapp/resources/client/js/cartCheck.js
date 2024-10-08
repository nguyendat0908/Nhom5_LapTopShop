const confirmPay = document.getElementById("confirm-pay");
confirmPay.addEventListener("click", (e) => {
  e.preventDefault();
  checkout();
  window.location.href = e.currentTarget.href;
});
function checkout() {
  const quantityList = document.querySelectorAll(".quantity");
  quantityList.forEach((quantity, index) => {
    let quantityValue = quantity.value;
    localStorage.setItem(`quantity_${index}`, quantityValue);
    console.log("Đã lưu vào localStorage:");
    for (let i = 0; i < quantityList.length; i++) {
      console.log(`quantity_${i}: ${localStorage.getItem(`quantity_${i}`)}`);
    }
  });
}
