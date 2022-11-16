require 'debug'

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

    def search
        recipes = Recipe.all.select {|recipe| recipe.ingredients.any? {|ingredient| ingredient[:id] == params[:id].to_i}}
        render json: recipes, status: :ok
    end

    def check
        recipes = Recipe.all.select {|recipe| recipe.ingredients.all? {|ingredient| User.find(params[:id]).ingredients.include?(ingredient)}}
        render json: recipes, status: :ok
    end

    private

    def recipe_params
        params.permit(:name, :user_id, :steps => [])
    end

    def recipe_user_params
        params.permit(:user_id)
    end

end
