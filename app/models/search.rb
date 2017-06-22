class Search < ApplicationRecord
  def houses
    @houses ||= search_houses
  end

  private
  def search_houses
    houses = House.all

    houses = houses.where(["city LIKE ?", "%#{city}%"]) if city.present?
    houses = houses.where(["rooms = ?", rooms]) if rooms.present?
    houses = houses.where(["sleep_places = ?", sleep_places]) if sleep_places.present?
    houses = houses.where(["kitchen = ?", kitchen]) if kitchen.present?
    houses = houses.where(["heating = ?", heating]) if heating.present?
    houses = houses.where(["conditioner = ?", conditioner]) if conditioner.present?
    houses = houses.where(["animals_allowed = ?", animals_allowed]) if animals_allowed.present?
    houses = houses.where(["wi_fi = ?", wi_fi]) if wi_fi.present?
    houses = houses.where(["price_per_day >= ?", min_price_per_day]) if min_price_per_day.present?
    houses = houses.where(["price_per_day <= ?", max_price_per_day]) if max_price_per_day.present?
    houses = houses.where(["price_per_month >= ?", min_price_per_month]) if min_price_per_month.present?
    houses = houses.where(["price_per_month <= ?", max_price_per_month]) if max_price_per_month.present?
    houses = houses.where(["rating = ?", rating]) if rating.present?
    houses
  end
end
