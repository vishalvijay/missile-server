class Missile < ActiveRecord::Base
  validates :message, presence: true
  has_and_belongs_to_many :tags
  after_create :prepare_tags

  private

  def prepare_tags
    tag_strings=self.message.scan /#[^\s]+/
    tags=[]
    tag_strings.each do |tag_string|
      tag_string = tag_string[1..tag_string.length]
      tag = Tag.find_by_name tag_string
      tag = Tag.create name: tag_string unless tag
      tags <<  tag
    end
    self.tags << tags
  end
end
