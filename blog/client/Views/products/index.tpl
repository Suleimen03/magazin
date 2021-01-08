<!DOCTYPE html>
<html>
<head>
	<title>products</title>
</head>
<body>
	{include file='blocks/header.tpl'}
	
	<div class="container mt-5">
		<form method="get" action="/products/create">
			<button class="btn btn-success mb-5" type="submit">Жаңа тауар</button>
		</form>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Атауы</th>
		      <th scope="col">Сипаттамасы</th>
		      <th scope="col">Бағасы</th>
		      <th scope="col">Суреті</th>
		      <th scope="col"></th>
		    </tr>
		  </thead>
		  <tbody>
		  	{foreach from=$products item=product}
		    <tr>
		      <th scope="row">{$product.id}</th>
		      <td>{$product.name}</td>
		      <td>{$product.description}</td>
		      <td width="85">{$product.price}</td>
		      <td>
		      	<img src="{$product.image}" width="150">
		      </td>
		      <td>
		      	<div class="d-flex">
		      		<form method="get" class="mr-1" action="/products/{$product.id}/edit">
			      		<button type="submit" class="btn btn-primary">Өзгерту</button>
			      	</form>
			      	<form method="post" action="/products/{$product.id}/delete">
			      		<button type="submit" class="btn btn-danger">Өшіру</button>
			      	</form>
		      	</div>
		      </td>
		    </tr>
		    {/foreach}
		  </tbody>
		</table>
	</div>
</body>
</html>