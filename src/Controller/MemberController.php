<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserFormType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MemberController extends AbstractController
{
    /**
     * @Route("/member/home", name="member_homepage")
     */
    public function index(): Response
    {
        return $this->render('member/index.html.twig');
    }

    /**
     * @Route("/member/profile", name="member_profile")
     */
    public function profile(): Response
    {
        return $this->render('member/profile.html.twig');
    }

    /**
     * @Route("/member/editprofile", name="member_edit_profile")
     */
    public function editProfile( Request $request,EntityManagerInterface $em): Response
    {
        $user=$this->getUser();
        $form=$this->createForm(UserFormType::class, $user);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $em->persist($user);
            $em->flush();
            $this->addFlash('success', 'Profile Updated!');
            return $this->redirectToRoute('member_profile');
        }

        return $this->render('member/change_profile.html.twig', [
            'profileForm' => $form->createView()
        ]);
    }
    /**
     * @Route("/member/changepassword", name="member_change_password")
     */
    public function changePassword(): Response
    {
        return $this->render('member/profile.html.twig');
    }
}
