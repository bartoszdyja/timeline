# Article model
class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :comments

  self.per_page = 5

  validates :title, :content, :category, :completed_on, :user, presence: true
end
