document.addEventListener("DOMContentLoaded", () => {
  const submitButton = document.getElementById("submit-form");
  const form = document.querySelector("form");
  const productName = document.getElementById("product-name");
  const productPrice = document.getElementById("product-price");
  const detail = document.getElementById("product-detail");
  const short = document.getElementById("product-short");
  const quantity = document.getElementById("product-quantity");
  const factory = document.getElementById("product-factory");
  const target = document.getElementById("product-target");
  const image = document.getElementById("formFileSm");

  submitButton.addEventListener("click", function (e) {
    e.preventDefault();

    let isValid = true;
    isValid = checkEmpty(productName) && isValid;
    isValid = checkEmpty(detail) && isValid;
    isValid = checkEmpty(short) && isValid;
    isValid = checkNumber(productPrice) && isValid;
    isValid = checkNumber(quantity) && isValid;
    isValid = checkSelect(factory) && isValid;
    isValid = checkSelect(target) && isValid;
    isValid = checkImage(image) && isValid;
    if (isValid) {
      form.submit();
    }
  });

  function checkEmpty(input) {
    let formControl = input.parentElement;
    if (!input.value.trim()) {
      formControl.classList.add("form-error");
      formControl.querySelector("span").innerText = "Không được để trống!";
      return false;
    } else {
      formControl.classList.remove("form-error");
      formControl.querySelector("span").innerText = "";
      return true;
    }
  }

  function checkSelect(select) {
    let formControl = select.parentElement;
    let option = select.options[select.selectedIndex];
    if (option.disabled) {
      formControl.classList.add("form-error");
      formControl.querySelector("span").innerText = "Lựa chọn trống!";
      return false;
    } else {
      formControl.classList.remove("form-error");
      formControl.querySelector("span").innerText = "";
      return true;
    }
  }

  function checkNumber(input) {
    let formControl = input.parentElement;
    if (!input.value.trim()) {
      formControl.classList.add("form-error");
      formControl.querySelector("span").innerText = "Không được để trống!";
      return false;
    } else if (input.value < 0) {
      formControl.classList.add("form-error");
      formControl.querySelector("span").innerText =
        "Giá trị phải lơn hơn hoặc bằng 0!";
      return false;
    } else {
      formControl.classList.remove("form-error");
      formControl.querySelector("span").innerText = "";
      return true;
    }
    //   checkEmpty(input);
  }

  function checkImage(input) {
    let formControl = input.parentElement;
    if (!input.files[0]) {
      formControl.classList.add("form-error");
      formControl.querySelector("span").innerText = "Chọn ảnh!";
      return false;
    } else {
      formControl.classList.remove("form-error");
      formControl.querySelector("span").innerText = "";
      return true;
    }
  }
});
