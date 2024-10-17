document.addEventListener("DOMContentLoaded", () => {
  document.getElementById("filter-form").addEventListener("submit", (e) => {
    e.preventDefault();
    createURL();
  });
});

function toArray(nodeList) {
  const arr = Array.from(nodeList).map((checkBox) => checkBox.value);

  return arr;
}

function createURL() {
  const factory = document.querySelectorAll(".factory-filter:checked");
  const purpose = document.querySelectorAll(".purpose:checked");
  const price = document.querySelectorAll(".price:checked");
  const selectedFactory = toArray(factory);
  const selectedPurpose = toArray(purpose);
  const selectedPrice = toArray(price);
  const queryStringArr = [];
  console.log(selectedFactory);

  // Đưa từng tham số truy vấn vào mảng
  if (selectedFactory.length > 0) {
    queryStringArr.push(
      `${getName(".factory-filter")}=${selectedFactory.join(",")}`
    );
  }

  if (selectedPurpose.length > 0) {
    queryStringArr.push(`${getName(".purpose")}=${selectedPurpose.join(",")}`);
  }
  if (selectedPrice.length > 0) {
    queryStringArr.push(`${getName(".price")}=${selectedPrice.join(",")}`);
  }

  // Nối các tham số truy vấn bằng ký tự '&'
  const queryString = queryStringArr.join("&");
  const currentURL = window.location.pathname;

  // Cập nhật url
  window.location.href = `${currentURL}?${queryString}`;
}

function getName(checkbox) {
  return document.querySelector(`${checkbox}`).name;
}
