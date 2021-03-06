<?php

namespace App\Controller;

use App\Entity\Joboffer;
use App\Entity\Sector;
use App\Form\JobofferType;
use App\Repository\JobofferRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/joboffer")
 */
class JobofferController extends AbstractController
{

    /**
     * @Route("/", name="joboffer_view", methods={"GET"})
     */
    public function viewOffers(JobofferRepository $jobofferRepository): Response
    {
        
        return $this->render('joboffer/view_offers.html.twig', [
            'joboffers' => $jobofferRepository->getAllJoboffers()
        ]);
    }



    /**
     * @Route("/", name="joboffer_HomepageView", methods={"GET"})
     */
    public function viewOffersHomePage(JobofferRepository $jobofferRepository): Response
    {
        
        return $this->render('home_page/index.html.twig', [
            'joboffers' => $jobofferRepository->getAllJoboffers()
        ]);
    }


    /**
     * @Route("/new", name="joboffer_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $joboffer = new Joboffer();
        $form = $this->createForm(JobofferType::class, $joboffer);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($joboffer);
            $entityManager->flush();

            return $this->redirectToRoute('joboffer_view');
        }

        return $this->render('joboffer/new.html.twig', [
            'joboffer' => $joboffer,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="joboffer_show", methods={"GET"})
     */
    public function show(Joboffer $joboffer): Response
    {
        return $this->render('joboffer/offerDetails.html.twig', [
            'joboffer' => $joboffer,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="joboffer_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Joboffer $joboffer): Response
    {
        $form = $this->createForm(JobofferType::class, $joboffer);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('joboffer_index');
        }

        return $this->render('joboffer/edit.html.twig', [
            'joboffer' => $joboffer,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="joboffer_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Joboffer $joboffer): Response
    {
        if ($this->isCsrfTokenValid('delete'.$joboffer->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($joboffer);
            $entityManager->flush();
        }

        return $this->redirectToRoute('joboffer_index');
    }
}
