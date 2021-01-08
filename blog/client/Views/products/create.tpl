<!DOCTYPE html>
<html>
<head>
	<title>products create</title>
</head>
<body>
	{include file='blocks/header.tpl'}

	<div class="container">
		<div class="col-md-6 offset-md-3 mt-5">
			<form method="post" action="/products/store">
				<h3>Жаңа тауар</h3>
				<input type="text" name="name" placeholder="Тауар атауы" class="form-control"><br>
				<textarea type="text" name="description" placeholder="Сипаттамасы" class="form-control" required></textarea><br>
				<select name="category_id" class="form-control">
					{foreach from=$categories item=category}
					<option value="{$category.id}">{$category.name}</option>
					{/foreach}
				</select><br>
				<input type="number" name="price" placeholder="Бағасы" class="form form-control" required><br>
				<input type="number" name="cupon" placeholder="Купон" class="form form-control" max="100"><br>
				<input type="text" name="image" placeholder="Суретке сілтеме" class="form form-control" required><br>
				<button type="submit" class="btn btn-primary">Сақтау</button>
			</form>
		</div>
	</div>
</body>
</html>