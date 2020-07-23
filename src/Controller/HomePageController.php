<?php

namespace App\Controller;
use App\Entity\Joboffer;
use App\Entity\Sector;
use App\Repository\JobofferRepository;
use App\Form\JobofferType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;


class HomePageController extends AbstractController
{
    /**
     * @Route("/", name="home_page")
     */
    public function index(JobofferRepository $jobofferRepository): Response
    {
        return $this->render('home_page/index.html.twig', [
            'joboffers' => $jobofferRepository->getAllJoboffers(),
        ]);
    }
}
