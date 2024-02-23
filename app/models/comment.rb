class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :user, optional: true
  belongs_to :prototype, optional: true
end
