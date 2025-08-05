<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Statamic\Facades\Entry;
use Statamic\Query\EntryQueryBuilder;

class DutyApiController extends Controller
{
    public function index() {
        /** @var EntryQueryBuilder $query $programs */
        $query = Entry::query();

        // Định nghĩa thứ tự ưu tiên thủ công
       $customOrder = [
        'sang-thu-2',
        'sang-thu-3',
        'sang-thu-4',
        'sang-thu-5',
        'sang-thu-6',
        'sang-thu-7',
        'sang-chu-nhat',
        'chieu-thu-2',
        'chieu-thu-3',
        'chieu-thu-4',
        'chieu-thu-5',
        'chieu-thu-6',
        'chieu-thu-7',
        'chieu-chu-nhat',
    ];

        $duties = $query
            ->where('collection', 'duties')
            ->get()
            ->map(function ($duty) {
               $lecturers = collect($duty['lecturers_field'])->map(function ($lecturer) {
                return [
                    'id' => $lecturer['lecturer']['id'],
                    'title' => $lecturer['lecturer']['title'],
                    'slug' => $lecturer['lecturer']['slug'],
                     'url' => $lecturer['lecturer']['url'],
                    'note' => $lecturer['note']
                ];
                });

                return [
                    'title' => $duty->title,
                    'slug' => $duty->slug,
                    'lecturers' => $lecturers,
                ];
            })
             ->sortBy(function ($item) use ($customOrder) {
            return array_search($item['slug'], $customOrder);
        })
            ->values();;

        return response()->json($duties);

    }
}
