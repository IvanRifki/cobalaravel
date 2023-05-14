<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    //$fillable =  boleh diisi
    // protected $fillable = ['title','excerpt','Body'];

    //$guarded = tidak boleh diisi
    protected $guarded = ['id'];
    protected $with =['category', 'author'];

    public function scopeFilter($query, array $filters)
    {
     // tangkep apa yg diketik di kotak pencarian. 'search' = name inputnya
     // $cari = $filters['search'];
     
     // // jika ada pencarian
     // if (isset($filters['search']) ? $filters['search'] : false) {
     // // dapatkan post where...
     // return $query->where('title', 'like', '%' . $filters['search'] . '%')
     // // atau dapatkan post where..
     //       ->orWhere('body', 'like', '%'.$filters['search'].'%');


          // $query ada isinya ngga? kalau ngga ada = false (tidak jalankan fungsi selanjutnya).
          // Jika ada isinya = tangkap $query & isi searchnya taro di $search, lalu jalankan return yang ada di dalam

          $query->when($filters['search'] ?? false, function($query, $search)
          {
               return $query->where('title', 'like', '%' . $search . '%')
               // atau dapatkan post where..
               ->orWhere('body', 'like', '%'.$search.'%');
     
          } );

          $query->when($filters['category'] ?? false, function($query, $category)
          {
               return $query->whereHas('category', function($query) use ($category){
                    $query->where('slug', $category);
               });     
          } );

          // versi callback
          // $query->when($filters['author'] ?? false, function($query, $author)
          // {
          //      return $query->whereHas('author', function($query) use ($author){
          //           $query->where('username', $author);
          //      });     
          // } );

          // versi arrow function
          $query->when($filters['author'] ?? false, fn($query, $author) => 
               $query->whereHas('author', fn($query) =>
                    $query->where('username', $author)
               )
          );

     }
     


    public function category()
    {
         return $this->belongsTo(Category::class);
    }

    public function author()
    {
         return $this->belongsTo(User::class, 'user_id' );
    }
}
