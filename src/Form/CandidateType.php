<?php

namespace App\Form;

use App\Entity\Candidate;
use App\Entity\Sector;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


use Symfony\Component\BrowserKit\Request;


class CandidateType extends AbstractType
{

   
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('email')
            ->add('password')
            ->add('gender', ChoiceType::class, [
                'choices' => [
                    'placeholder' => 'select a value',
                    'Male' => 'Male',
                    'Female' => 'Female',
                    'Transgender' => 'Transgender',
                ]
            ])
            ->add('first_name')
            ->add('last_name')
            ->add('address')
            ->add('country')
            ->add('nationality')
            ->add('is_passport_valid')
            ->add('passport')
            ->add('cv')
            ->add('profil_pic')
            ->add('current_location')
            ->add('birth_date')
            ->add('birth_place')
            ->add('is_available')
            ->add('experience')
            ->add('description')
            ->add('created_at')
            ->add('updated_at')
            ->add('deleted_at')
            ->add('notes')
            ->add('files')
            ->add('sector', EntityType::class, [
                'placeholder' => 'select a value',
                'class' => Sector::class,
                "choice_label" => "sector",
                "multiple" => false
            ])
           ;
    }
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Candidate::class,
        ]);
    }

    
    
}
