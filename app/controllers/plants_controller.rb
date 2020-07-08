class PlantsController < ApplicationController
    
    def show
        @plant = Plant.find(params[:id])
    end

    def edit
        @plant = Plant.find(params[:id])
    end

    def index
        @plants = Plant.all
    end

    def update
        @plant = Plant.find(params[:id])
        @plant.update(plant_params)
        redirect_to plant_path(@plant.id)
    end

    
    private

    def plant_params
        params.require(:plant).permit(:name, :size, :description, :price, :quantity, :img_url)
    end

    # def find_plant
    #     @plant = Plant.find(params[:id])
    # end
end