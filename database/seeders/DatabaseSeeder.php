<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => 'Ivan Rifki Nur Alif',
            'username' => 'ivanrifki',
            'email' => 'ivanrifkinuralif@gmail.com',
            'password' => bcrypt('asdasd')
        ]);

        // User::create([
        //     'name' => 'Nur Alif',
        //     'email' => 'nuralif@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(5)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'UI/UX',
            'slug' => 'ui-ux'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem Pertama',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla odio, alias odit distinctio similique dolor quos. Praesentium temporibus labore eaque sapiente facere suscipit esse veniam voluptas, possimus tempora ipsum quo commodi consequuntur, nemo laudantium. Ullam mollitia consequuntur quos omnis adipisci sed error, accusamus vero fugiat facere placeat doloremque non aliquid atque dolorum tempore impedit explicabo? Animi fugit sunt itaque aliquam ducimus minus ipsam deserunt, cum, eum quia cupiditate temporibus sit velit? Officia beatae tenetur, id illo porro est expedita perferendis voluptatibus doloribus fuga! Non, necessitatibus. Dolor alias consectetur nisi consequatur, rem non voluptate nemo quod ab eveniet perspiciatis doloremque quibusdam?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
         
        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem Ke Dua',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla odio, alias odit distinctio similique dolor quos. Praesentium temporibus labore eaque sapiente facere suscipit esse veniam voluptas, possimus tempora ipsum quo commodi consequuntur, nemo laudantium. Ullam mollitia consequuntur quos omnis adipisci sed error, accusamus vero fugiat facere placeat doloremque non aliquid atque dolorum tempore impedit explicabo? Animi fugit sunt itaque aliquam ducimus minus ipsam deserunt, cum, eum quia cupiditate temporibus sit velit? Officia beatae tenetur, id illo porro est expedita perferendis voluptatibus doloribus fuga! Non, necessitatibus. Dolor alias consectetur nisi consequatur, rem non voluptate nemo quod ab eveniet perspiciatis doloremque quibusdam?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
         
        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem Ke Tiga',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla odio, alias odit distinctio similique dolor quos. Praesentium temporibus labore eaque sapiente facere suscipit esse veniam voluptas, possimus tempora ipsum quo commodi consequuntur, nemo laudantium. Ullam mollitia consequuntur quos omnis adipisci sed error, accusamus vero fugiat facere placeat doloremque non aliquid atque dolorum tempore impedit explicabo? Animi fugit sunt itaque aliquam ducimus minus ipsam deserunt, cum, eum quia cupiditate temporibus sit velit? Officia beatae tenetur, id illo porro est expedita perferendis voluptatibus doloribus fuga! Non, necessitatibus. Dolor alias consectetur nisi consequatur, rem non voluptate nemo quod ab eveniet perspiciatis doloremque quibusdam?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
         
        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem Ke Empat',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla odio, alias odit distinctio similique dolor quos. Praesentium temporibus labore eaque sapiente facere suscipit esse veniam voluptas, possimus tempora ipsum quo commodi consequuntur, nemo laudantium. Ullam mollitia consequuntur quos omnis adipisci sed error, accusamus vero fugiat facere placeat doloremque non aliquid atque dolorum tempore impedit explicabo? Animi fugit sunt itaque aliquam ducimus minus ipsam deserunt, cum, eum quia cupiditate temporibus sit velit? Officia beatae tenetur, id illo porro est expedita perferendis voluptatibus doloribus fuga! Non, necessitatibus. Dolor alias consectetur nisi consequatur, rem non voluptate nemo quod ab eveniet perspiciatis doloremque quibusdam?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
         
    }
}
