class Location < ActiveRecord::Base
  has_many :user_location
  has_many :user, through: :user_location
end
