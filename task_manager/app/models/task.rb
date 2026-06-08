class Task < ApplicationRecord
  # If a task is deleted, delete my comments
  has_many :comments, dependent: :destroy
end
