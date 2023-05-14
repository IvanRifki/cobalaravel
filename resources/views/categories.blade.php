@extends('layouts.main')

@section('container')
<h1 class="mb-5">Post Categories</h1>

<div class="container">
    <div class="row">

        @foreach ($categories as $category)

        <div class="col-md-4 mt-4">
            <a href="/posts?category={{ $category->slug }}">
                <div class="card border-light text-bg-dark">
                    <img src="https://source.unsplash.com/500x500?{{ $category->name }}" class="card-img" alt="{{ $category->name }}">
                    
                    <div class="card-img-overlay d-flex align-items-center p-0">
                      <h5 class="card-title text-center flex-fill p-4 fs-3" style="background-color: rgba(0, 0, 0, 0.5)">{{ $category->name }}</h5>
                    </div>
                </div>

            </a>
        </div>
        @endforeach
        
        {{-- https://pixabay.com/api/36360239-c35e2b3dac66c62e2b5a198e6 --}}
        {{-- https://pixabay.com/api/?key=36360239-c35e2b3dac66c62e2b5a198e6&q=yellow+flowers&image_type=photo&pretty=true --}}
    </div>
</div>
    
@endsection