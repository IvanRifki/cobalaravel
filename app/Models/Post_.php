<?php

namespace App\Models;

//use Illuminate\Database\Eloquent\Factories\HasFactory;
//use Illuminate\Database\Eloquent\Model;

class Post 
{
     private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Ivan Rifki",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ex deserunt rem omnis maxime ea ut saepe! Soluta amet tenetur possimus ea aspernatur rerum, beatae natus labore recusandae minus explicabo dolorum inventore provident ipsum! Velit et voluptatibus consequuntur voluptas nisi aliquam ducimus amet ea voluptatum, non atque, dolore cumque facere cupiditate, a sint tempora quasi hic eum maxime? Quam sequi quidem atque velit, nostrum dicta voluptatibus accusamus! Voluptates, maxime deleniti sapiente debitis, modi pariatur, in dolores cum ipsa quos atque iste natus quod sint aliquam vero odit. Sit veritatis reiciendis doloremque!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Nur Alif",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat sequi inventore soluta unde ipsam numquam optio voluptatum et quos nihil blanditiis dolorum, corporis veritatis. Nulla tempora officiis quibusdam autem fuga, aperiam veritatis veniam atque reiciendis aspernatur quam possimus optio exercitationem amet ratione expedita illum placeat dolor quasi consequuntur. Maiores aliquam quo dolor soluta veniam aliquid tenetur similique, repellendus magni velit tempore laudantium corporis consectetur quos sequi omnis debitis. Inventore eaque aliquid laboriosam reprehenderit blanditiis dolorum atque amet ullam fugiat optio, repudiandae, recusandae, sint nesciunt! Quibusdam non totam quae iusto delectus rerum, sequi eligendi. Rerum, id odio laborum alias, quia inventore hic, quam mollitia tempora est laudantium amet! Eum sit ipsam tempora facere accusantium deserunt id, natus voluptatibus rerum ad consequuntur!"
        ]
    
        ];

        public static function all()
        {
            return collect(self::$blog_posts);
        }

        public static function find($slug)
        {
            $posts = static::all();
            return $posts->firstWhere('slug', $slug);
        }
}
