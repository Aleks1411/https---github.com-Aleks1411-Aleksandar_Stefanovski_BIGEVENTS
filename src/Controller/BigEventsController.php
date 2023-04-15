<?php

namespace App\Controller;

use App\Entity\BigEvents;
use App\Form\EventsType;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;


class BigEventsController extends AbstractController
{
    #[Route('/', name: 'app_big_events')]
    public function index(ManagerRegistry $doctrine): Response
    {
        $events = $doctrine->getRepository(BigEvents::class)->findAll();
        
        return $this->render('big_events/index.html.twig', [
            "events" => $events
        ]);
    }
    #[Route('/details/{id}', name: 'app_big_events_details')]
    public function details(ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(BigEvents::class)->find($id);
        
        return $this->render('big_events/details.html.twig', [
            "event" => $event
        ]);
    }
    #[Route('/create', name: 'app_big_events_create')]
    public function create(ManagerRegistry $doctrine, Request $request): Response
    {
        $event = new BigEvents();

        $form = $this->createForm(EventsType::class, $event);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            
            $event = $form->getData();
            // $now = new DateTime("now");
            $em = $doctrine->getManager();

            $em->persist($event);
            $em->flush();

            return $this->redirectToRoute('app_big_events');
        }

        
       return $this->render('big_events/new.html.twig', [
            'form' => $form
        ]);
    }
    #[Route('/edit/{id}', name: 'app_big_events_edit')]
    public function edit(ManagerRegistry $doctrine, Request $request, $id): Response
    {
        $event = $doctrine->getRepository(BigEvents::class)->find($id);

        $form = $this->createForm(EventsType::class, $event);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            
            $event = $form->getData();
            // $now = new DateTime("now");
            $em = $doctrine->getManager();

            $em->persist($event);
            $em->flush();

            return $this->redirectToRoute('app_big_events');
        }

        
       return $this->render('big_events/edit.html.twig', [
            'form' => $form
        ]);
    }
    #[Route('/delete/{id}', name: 'app_big_events_delete')]
    public function delete(ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(BigEvents::class)->find($id);
        $em = $doctrine->getManager();

        $em->remove($event);
        $em->flush();
        return $this->redirectToRoute('app_big_events');
        
    }
}
