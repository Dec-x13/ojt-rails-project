class Comment < ApplicationRecord
  belongs_to :task

  # Prevents empty comments
  validates :body, presence: true
end
