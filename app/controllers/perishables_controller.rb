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

    def update_perishables
        perishables = Perishable.all
        perishables.each do |perishable|
            if ((Date.today - perishable.date_entered).to_i < perishable.ingredient.shelf_life)
                perishable.update(expired: false)
            else
                perishable.update(expired: true)
            end
        end
        render json: perishables, status: :ok
    end

    private

    def perishable_params
        params.permit(:user_id, :ingredient_id, :date_entered, :expired)
    end

end
