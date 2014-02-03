class Missile < ActiveRecord::Base
  validates :message, presence: true
end
