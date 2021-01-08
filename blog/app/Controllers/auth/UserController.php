<?php

use App\Models\User;

class UserController extends Controller {
	
	public function login($request) {
		if (isset($request->params['error'])) {
			$this->view->set('error', $request->params['error']);
		}

		$this->view->render('auth/login');
	}

	public function register($request) {
		$this->view->render('auth/register');
	}

	public function create($request) {
		$user = Db::dispense(User::TABLE);

		$user->name = $request->params['name'];
		$user->email = $request->params['email'];
		$user->password = $request->params['password'];

		Db::store($user);
		header("location: /auth/login");
	}

	public function authorize($request) {
		$email = $request->params['email'];
		$password = $request->params['password'];

		$user = Db::findOne(User::TABLE, " email = ? AND password = ?", [
			$email,
			$password
		]);

		if (isset($user)) {
			$this->auth($user);
			header("Location: /?success=Сәтті жүйеге кірдіңіз!");
		} else {
			header("Location: /auth/login?error=Бұндай аккаунд тіркелмеген н/е қате енгіздіңіз!");
		}
	}

	public function logout() {
		unset($_SESSION['user']);
		header("Location: /");
	}

	public function auth($user) {
		$_SESSION['user'] = $user;
	}
}