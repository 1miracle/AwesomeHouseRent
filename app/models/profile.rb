class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates :first_name, :last_name, :phone, presence: true
  validates :phone, format: /\d/

  def full_name
    "#{first_name} #{last_name}"
  end
end
