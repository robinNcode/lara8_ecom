<?php namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->word,
            'detail' => $this->faker->paragraph,
            'price' => $this->faker->numberBetween(100, 2000),
            'stock' => $this->faker->randomDigit(),
            'discount' => $this->faker->numberBetween(2, 30)
        ];
    }
}
