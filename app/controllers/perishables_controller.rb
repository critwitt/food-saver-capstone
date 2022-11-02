class PerishablesController < ApplicationController

    def index
        perishables = Perishable.all
        render json: perishables, status: :ok
    end

    def show
        perishable = Perishable.find(params[:id])
        render json: perishable, status: :ok
    end

    def create
        perishable = Perishable.create!(perishable_params)
        render json: perishable, status: :created
    end

    def destroy
        perishable = Perishable.find(params[:id])
        perishable.destroy
        head :no_content
    end

    private

    def perishable_params
        params.permit(:user_id, :ingredient_id, :date_entered, :expired)
    end

end
