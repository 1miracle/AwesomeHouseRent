class SearchesController < ApplicationController

  def new
    @search = Search.new
  end

  def create
    @search = Search.create!(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private
  def search_params
    params.require(:search).permit(:city, :rooms, :sleep_places, :kitchen,
                                    :heating, :conditioner, :animals_allowed,
                                    :wi_fi, :min_price_per_day, :max_price_per_day,
                                    :min_price_per_month, :max_price_per_month, :rating)
  end
end
