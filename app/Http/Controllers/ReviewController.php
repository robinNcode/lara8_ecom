<?php

namespace App\Http\Controllers;

use App\Http\Resources\ReviewResource;
use App\Models\Product;
use App\Models\Review;
use App\Http\Requests\StoreReviewRequest;
use App\Http\Requests\UpdateReviewRequest;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Illuminate\Http\Response;

class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param Product $product
     * @return AnonymousResourceCollection
     */
    public function index(Product $product)
    {
        return ReviewResource::collection($product->reviews);
        //return Review::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return void
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreReviewRequest $request
     * @return void
     */
    public function store(StoreReviewRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param Review $review
     * @return void
     */
    public function show(Review $review)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Review $review
     * @return void
     */
    public function edit(Review $review)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateReviewRequest $request
     * @param Review $review
     * @return void
     */
    public function update(UpdateReviewRequest $request, Review $review)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Review $review
     * @return void
     */
    public function destroy(Review $review)
    {
        //
    }
}
