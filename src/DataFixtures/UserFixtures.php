<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Faker\Factory;
use Faker\Generator;

class UserFixtures extends Fixture
{
    private $passwordEncoder;
    private $faker;

    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
        $this->faker = Factory::create();
    }

    public function load(ObjectManager $manager): void
    {
        for ($i = 0; $i < 10; $i++) {
            $user = new User();
            $user->setEmail(sprintf('user%d@healthone.com', $i));
            $user->setPassword($this->passwordEncoder->encodePassword(
                $user, 'qwerty'));
            $user->setRoles(['ROLE_MEMBER']);
            $user->setFirstName($this->faker->firstName);
            $user->setLastName($this->faker->lastName);
            $manager->persist($user);

            $manager->flush();
        }
    }
}
