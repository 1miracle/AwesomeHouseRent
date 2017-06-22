class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :houses
  has_one :profile
  accepts_nested_attributes_for :profile#, allow_destroy: true

  delegate :full_name, to: :profile
  delegate :phone, to: :profile
end
