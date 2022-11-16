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
        recipes = Recipe.all.select {|recipe| recipe.ingredients.any? {|ingredient| ingredient[:id] == params[:ingredient_id].to_i}}
        render json: recipes, status: :ok
    end

    def check
        if check_params[:ingredient_exists] == "false" && check_params[:all_ingredients] == "false"
            recipes = Recipe.all
            render json: recipes, status: :ok
        elsif check_params[:ingredient_exists] == "false" && check_params[:all_ingredients] == "true"
            recipes = Recipe.all.select {|recipe| recipe.ingredients.all? {|ingredient| User.find(params[:user_id]).ingredients.include?(ingredient)}}
            render json: recipes, status: :ok
        elsif check_params[:all_ingredients] == "true"
            recipes = Recipe.all.select {|recipe| recipe.ingredients.all? {|ingredient| User.find(params[:user_id]).ingredients.include?(ingredient)} && recipe.ingredients.exists?(id: params[:ingredient_id])}
            # binding.break
            render json: recipes, status: :ok
        else
            recipes = Recipe.all.select {|recipe| recipe.ingredients.exists?(id: params[:ingredient_id])}
            # binding.break
            render json: recipes, status: :ok
        end
    end

    private

    def recipe_params
        params.permit(:name, :user_id, :steps => [])
    end

    def check_params
        params.permit(:all_ingredients, :ingredient_exists, :ingredient_id, :user_id)
    end

end
