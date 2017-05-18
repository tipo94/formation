<?php


class UserSession
{
	public function __construct()
	{
		if(session_status() == PHP_SESSION_NONE)
		{
            // Démarrage du module PHP de gestion des sessions.
			session_start();
		}
	}

    public function create($userId, $name, $email)
    {
        // Construction de la session utilisateur.
        $_SESSION['user'] =
        [
            'UserId'    => $userId,
            'Name' => $name,
            'Email'     => $email
        ];
    }

    public function destroy()
    {
        // Destruction de l'ensemble de la session.
        $_SESSION = array();
        session_destroy();
    }

    public function getEmail()
    {
        if($this->isAuthenticated() == false)
        {
            return null;
        }

        return $_SESSION['user']['Email'];
    }

    public function getName()
    {
        if($this->isAuthenticated() == false)
        {
            return null;
        }

        return $_SESSION['user']['Name'];
    }

   

    public function getUserId()
    {
        if($this->isAuthenticated() == false)
        {
            return null;
        }

        return $_SESSION['user']['UserId'];
    }

	public function isAuthenticated()
	{
		if(array_key_exists('user', $_SESSION) == true)
		{
			if(empty($_SESSION['user']) == false)
			{
				return true;
			}
		}

		return false;
	}
}
