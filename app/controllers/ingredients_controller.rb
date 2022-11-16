class IngredientsController < ApplicationController

    def index
        ingredients = Ingredient.all
        render json: ingredients, status: :ok
    end

    def show
        ingredient = Ingredient.find(params[:id])
        render json: ingredient, status: :ok
    end

    def create
        ingredient = Ingredient.create!(ingredient_params)
        render json: ingredient, status: :created
    end

    def update
        ingredient = Ingredient.find(params[:id])
        ingredient.update(ingredient_params)
        render json: ingredient, status: :ok
    end

    def destroy
        ingredient = Ingredient.find(params[:id])
        ingredient.destroy
        head :no_content
    end

    def search
        ingredients = Ingredient.all.select {|ingredient| ingredient[:name].downcase.include?(params[:name])}
        render json: ingredients, status: :ok
    end

    private

    def ingredient_params
        params.permit(:name, :perishable, :shelf_life, :image, :category)
    end

end
