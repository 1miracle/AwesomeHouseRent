class HousesController < ApplicationController
  before_action :set_house, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!, only: [:show]

  def index
    @houses = House.all.page(params[:page]).per_page(6)
  end

  def show
  end

  def new
    @house = current_user.houses.new
  end

  def create
    @house = current_user.houses.new(house_params)
    # binding.pry
    respond_to do |format|
      if @house.save
        format.html { redirect_to :root, notice: 'House was successfully created' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    #TODO
  end

  private

  def house_params
    params.require(:house).permit(:city, :address, :rooms, :sleep_places,
                                  :total_area, :kitchen, :heating,
                                  :conditioner, :animals_allowed, :wi_fi,
                                  :floor, :number_of_floors, :price_per_day,
                                  :price_per_month, :description)
  end

  def set_house
    @house = House.find(params[:id])
  end
end
