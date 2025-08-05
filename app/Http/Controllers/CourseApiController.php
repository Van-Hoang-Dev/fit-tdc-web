<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Statamic\Facades\Entry;
use Statamic\Query\EntryQueryBuilder;

class CourseApiController extends Controller
{
    public function index()
    {

        /** @var EntryQueryBuilder $query $programs */
        $query = Entry::query();

        $courses = $query
            ->where('collection', 'courses')
            ->get()
            ->map(function ($course) {
                /** @var EntryQueryBuilder $query */
                $query = Entry::query();
                $programs = $query
                    ->where('collection', 'programs')
                    ->where('course', $course->id)
                    ->get()
                    ->map(function ($program) {
                        return [
                            'title' => $program->title,
                            'slug' => $program->slug,
                            'url' => $program->url,
                            'index' => $program->index,
                            'curriculum' => [
                                'title' => $program->curriculum['title'],
                                'slug' => $program->curriculum['slug'] ?? null,
                                'background_color' => $program->curriculum['background_color'] ?? null,
                                'text_color' => $program->curriculum['text_color'] ?? null,
                            ],
                        ];
                    });

                return [
                    'title' => $course->title,
                    'slug' => $course->slug(),
                    'year' => $course->get('year'),
                    'programs' => $programs->sortBy('index')->values(),
                ];
            })->sortByDesc('year')->values();

        return response()->json($courses);
    }
}
