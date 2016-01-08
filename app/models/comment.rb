class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user

  validates :content, presence: true
  
  def to_partial_path
    "articles/comment"
  end
end
