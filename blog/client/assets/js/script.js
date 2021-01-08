window.onload = cupon();

function cupon() {
	var cupon = document.getElementById('cupon');
	var price = document.getElementById('price');
	var newPrice = document.getElementById('newPrice');

	var salePercent = cupon.innerHTML;

	if (salePercent) {
		price.style.textDecoration = 'line-through';
		price.style.color = 'red';
		newPrice.style.color = 'green';
		newPrice.innerHTML = price.innerHTML * (1 - (salePercent / 100));
	}
}

const tg = document.getElementsById

function register() {
	location.href = '/auth/register';
}

function login() {
	location.href = '/auth/login';
}