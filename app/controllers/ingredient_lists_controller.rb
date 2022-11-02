class IngredientListsController < ApplicationController

    def index
        ingredient_list = IngredientList.all
        render json: ingredient_list, status: :ok
    end

    def show
        ingredient_list = IngredientList.find(params[:id])
        render json: ingredient_list, status: :ok
    end

    def create
        ingredient_list = IngredientList.create!(ingredient_list_params)
        render json: ingredient_list, status: :created
    end

    def destroy
        ingredient_list = IngredientList.find(params[:id])
        ingredient_list.destroy
        head :no_content
    end

    private

    def ingredient_list_params
        params.permit(:ingredient_id, :recipe_id, :ingredient_amount, :unit)
    end

end
