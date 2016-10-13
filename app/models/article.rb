class Article < ActiveRecord::Base
  acts_as_commentable
  belongs_to :user

  validates :user_id, presence: true
  validates :body, length: {in: 2..40}
end
