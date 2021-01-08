<!DOCTYPE html>
<html>
<head>
	<title>products/product</title>
</head>
<body>
	{include file='blocks/header.tpl'}

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6">
				<img style="width: 80%; height: 100%;" class="image" src="{$product.image}">
			</div>
			<div class="col-md-6">
				<h1 id="name">{$product.name}</h1>
				<div class="d-flex">
					<h3 id="price">{$product.price}</h3>
					<h3 id="cupon" style="visibility: hidden;">{$product.cupon}</h3>
					<h3 id="newPrice"></h3>
				</div>
				<p id="description"><pre>{$product.description}</pre></p>
			</div>
		</div>
		<div class="row my-3">
			<form class="col-md-6 ml-auto" method="post" action="/orders">
				<h3>Тапсырыс беру</h3>
				<input type="hidden" name="product_id" placeholder="Product" class="form-control" value="{$product.id}"><br>
				<input type="number" name="count" placeholder="Қанша дана" class="form-control" required max="10" min="1"><br>
				<input type="tel" name="phone_number" placeholder="Телефон номер" class="form form-control" required><br>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

	{include file='blocks/footer.tpl'}
</body>
</html>