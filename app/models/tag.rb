class Tag < ActiveRecord::Base
  has_and_belongs_to_many :missiles
  validates :name, presence: true
  validates_uniqueness_of :name
end
