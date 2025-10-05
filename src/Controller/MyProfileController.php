<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class MyProfileController extends AbstractController
{
    #[Route('/profile', name: 'app_hola')]
    public function index(): Response
    {
        return $this->render('my_profile/profile.html.twig', []);
    }
}
