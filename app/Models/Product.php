<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Product extends Model
{
    /**
     * @return HasMany
     */
    public function reviews(){
        return $this->hasMany(Review::class);
    }
}
