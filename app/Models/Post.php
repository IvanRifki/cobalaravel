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


    public function category()
    {
         return $this->belongsTo(Category::class);
    }

    public function author()
    {
         return $this->belongsTo(User::class, 'user_id' );
    }
}