<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Statamic\Facades\Entry;
use Statamic\Query\EntryQueryBuilder;

class PostApiController extends Controller
{
    public function getPostsWithSearch(Request $request) {
        $search = $request->query('search');
        Log::info("Search", [$search]);

        /** @var EntryQueryBuilder $query $programs */
        $query = Entry::query();

        $posts = $query
         ->whereCollection('posts')
          ->when($search, function ($query, $search) {
        $query->where('title', 'like', "%{$search}%");
    })
        ->get();

        Log::info("Data", [$posts]);

        // return response()->json($posts);
        return response()->json($posts->map(function ($post) {
            return [
                'title' => $post->get('title'),
                'slug' => $post->slug(),
                'url' => $post->url(),
                'thumbnail' => url('assets/'. $post->get('thumbnail')),
                'date' => $post->date()->format('d-m-Y'),
            ];
        }));
    }
}
