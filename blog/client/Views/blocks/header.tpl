<!DOCTYPE html>
<html>
<head>
	<title>header</title>
</head>
<body>
{include file='lib.tpl'}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ctive">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      {if isset($smarty.session.user) AND $smarty.session.user.role eq 2}
      <li class="nav-item">
        <a class="nav-link" href="/products">Тауарлар тізімі</a>
      </li>
      {/if}
    </ul>
    <div>
      {if !isset($smarty.session.user)}
      <form class="form-inline my-2 my-lg-0">
        <button class="btn btn-outline-success my-2 mr-1 my-sm-0" type="button" onclick="login()">Кіру</button>
        <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="register()">Тіркелу</button>
      </form>
      {/if}

      {if isset($smarty.session.user)}
      <div class="form-inline my-2 my-lg-0">
        <span class="mr-1">{$smarty.session.user.name}</span>
        <form action="/auth/logout" method="post">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Шығу</button>
        </form>
      </div>
      {/if}
    </div>
  </div>
</nav>
</body>
</html>