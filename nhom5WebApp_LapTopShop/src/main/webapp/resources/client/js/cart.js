// const btnPlus = document.getElementById("btn-plus");
// const btnMinus = document.getElementById("btn-minus");
// const quantity = document.getElementById("quantity");
const products = document.querySelectorAll(".product-item");
// console.log(products);
const pays = document.querySelector("#pay");

document.addEventListener("DOMContentLoaded", () => {
  products.forEach((product) => {
    const quantity = product.querySelector(".quantity");
    const price = parseFloat(
      product.querySelector(".price").innerText.replace(/,/g, "")
    );
    let currentQuantity = parseInt(quantity.value);
    const totalPrice = product.querySelector(".total-price");
    total(price, currentQuantity, totalPrice);
    pays.innerText = pay().toLocaleString("en-US");
  });
  totalPay();
  totalPayCheckout();
  checkout();
});

products.forEach((product) => {
  const btnPlus = product.querySelector(".btn-plus");
  const btnMinus = product.querySelector(".btn-minus");
  const quantity = product.querySelector(".quantity");
  const price = parseFloat(
    product.querySelector(".price").innerText.replace(/,/g, "")
  );
  const totalPrice = product.querySelector(".total-price");

  btnPlus.addEventListener("click", function () {
    let currentQuantity = parseFloat(quantity.value);
    currentQuantity += 1;
    quantity.value = currentQuantity;
    // console.log(totalPrice);

    total(price, currentQuantity, totalPrice);
    pays.innerText = pay().toLocaleString("en-US");
    totalPay();
    totalPayCheckout();
    checkout();
  });

  btnMinus.addEventListener("click", function () {
    if (quantity.value > 1) {
      let currentQuantity = parseInt(quantity.value);
      // let price = parseInt(document.getElementById("price").innerText);
      currentQuantity -= 1;
      quantity.value = currentQuantity;
      total(price, currentQuantity, totalPrice);
      pays.innerText = pay().toLocaleString("en-US");
      totalPay();
      totalPayCheckout();
      checkout();
    }
  });
});

function total(price, quantity, totalPrice) {
  let total = price * quantity;
  totalPrice.textContent = total.toLocaleString("en-US");
}

function pay() {
  let prices = document.querySelectorAll(".product-item .total-price");
  let total = 0;
  prices.forEach((price) => {
    total += parseFloat(price.innerText.replace(/,/g, ""));
  });
  return total;
}

function totalPay() {
  let totalPay = document.querySelector("#total-pay");
  let ship = parseFloat(
    document.querySelector("#ship").innerText.replace(/,/g, "")
  );
  totalPay.innerText = (ship + pay()).toLocaleString("en-US");
}

function totalPayCheckout() {
  let totalPayCheckoutValue = document
    .getElementById("total-pay")
    .innerText.replace(/,/g, "");
  document.getElementById("hidden-total-pay").value = totalPayCheckoutValue;

  console.log(
    "value hidden input:" + document.getElementById("hidden-total-pay").value
  );
}
function checkout() {
  const quantityList = document.querySelectorAll(".quantity");
  quantityList.forEach((quantity, index) => {
    let quantityValue = quantity.value;
    localStorage.setItem(`quantity_${index}`, quantityValue);
    console.log("Đã lưu vào localStorage:");
  });
  for (let i = 0; i < quantityList.length; i++) {
    console.log(`quantity_${i}: ${localStorage.getItem(`quantity_${i}`)}`);
  }
}
