class HousesController < ApplicationController
  before_action :find_house, only: [:show, :edit, :update, :destroy]

  def index
    @houses = House.all
  end

  def show
  end

  def edit    
  end

  def update
     if @house.update(house_params)
      redirect_to houses_path
    else
      render 'edit'
    end
  end

  def new
    @house = House.new
  end

  def create
    house = House.new(house_params)
    if house.save
      redirect_to houses_path
    else
      render 'new'
    end
  end

  def destroy
    @house.destroy
    redirect_to houses_path
  end

  private

  def house_params
    params.require(:house).permit(bedrooms: integer, bathroom: float, year_built:integer, square_feet: integer, garages: integer, price: float)
  end

  def find_house
      @house = House.find(params[:id])
  end
end

