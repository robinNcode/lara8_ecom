<?php

namespace App\Http\Resources\Product;

use Illuminate\Contracts\Support\Arrayable;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use JsonSerializable;

class ProductCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  Request  $request
     * @return array|Arrayable|JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'name' => $this->name,
            'totalPrice' => round((1 - ($this->discount/100)) * $this->price, 2),
            'rating' => $this->reviews->count('star') > 0 ?
                round(($this->reviews->sum('star') / $this->reviews->count('star')), 2): 'No rating yet',
            'href' => route('products.show', $this->id)
        ];
    }
}
