class House < ApplicationRecord
  belongs_to :user

  validates_presence_of :city, :address, :rooms, :sleep_places,
                        #:kitchen, :heating, :conditioner, :animals_allowed, :wi_fi,
                        :floor, :number_of_floors
  validates_inclusion_of :kitchen, :heating, :conditioner, :animals_allowed, :wi_fi, in: [true, false]
  validates :floor, numericality: { greater_than_or_equal_to: 1 }
  validates :number_of_floors, numericality: { greater_than_or_equal_to: 1 }
  validates :rooms, numericality: { greater_than: 0 }
  validates :price_per_day, numericality: { greater_than_or_equal_to: 0.01 }, allow_blank: true
  validates :price_per_month, numericality: { greater_than_or_equal_to: 0.01 }, allow_blank: true
  validates :total_area, numericality: { greater_than_or_equal_to: 0.01 }
  validates :sleep_places, numericality: { greater_than: 0 }
  validates :description, length: { maximum: 500 }
  validate :if_there_is_at_least_one_price

  private

  def if_there_is_at_least_one_price
    unless price_per_day || price_per_month
      errors.add(:price_per_day,
        "should be at least one price")
      errors.add(:price_per_month,
        "should be at least one price")
    end
  end
end
