class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes, status: :ok
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: recipe, status: :ok
    end

    def create
        recipe = Recipe.create!(recipe_params)
        render json: recipe, status: :created
    end

    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
        head :no_content
    end

    private

    def recipe_params
        params.permit(:name, :user_id, :steps => [])
    end

end
