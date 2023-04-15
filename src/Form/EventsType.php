<?php
 namespace App\Form;

use App\Entity\BigEvents;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

 
 class EventsType extends AbstractType
 {
     public function buildForm(FormBuilderInterface $builder, array $options): void
     {
         $builder
         ->add('name', TextType::class, ["attr" => ["class"=>"form-control", "placeholder"=>"Event Name"]])
         ->add('dateTime', DateTimeType::class)
         ->add('description', TextareaType::class, ["attr" => ["class"=>"form-control", "placeholder"=>"Event Description"]])
         ->add('image', TextType::class, ["attr" => ["class"=>"form-control"]])
         ->add('capacity', NumberType::class, ["attr" => ["class"=>"form-control", "placeholder"=>"Event Capacity"]])
         ->add('email', EmailType::class, ["attr" => ["class"=>"form-control", "placeholder"=>"Event Email"]])
         ->add('phone', TextType::class, ["attr" => ["class"=>"form-control", "placeholder"=>"Event Phone Number"]])
         ->add('address', TextType::class, ["attr" => ["class"=>"form-control", "placeholder"=>"Event Address"]])
         ->add('urlEvents', UrlType::class, ["attr" => ["class"=>"form-control", "placeholder"=>"Event Website"]])
         ->add('fktype', ChoiceType::class, ['choices'  => [
                 'Music' => "Music",
                 'Exhibition' => "Exhibition",
                 'Opera' => "Opera",
                 'Concert' => "Concert",
                 'Balet' => "Balet",
                 'Art' => "Art",
         ], "attr" => ["class"=>"form-control"]]
             )
         ->add('save', SubmitType::class, ["attr" => ["class"=>"btn btn-success", "style" => "width: 100%", "margin-top" => "5px"]])
     ;

     }
     public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => BigEvents::class,
        ]);
    }
 }