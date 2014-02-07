class Comment < ActiveRecord::Base
  validates :missile, :body, presence: true
  belongs_to :missile
end
