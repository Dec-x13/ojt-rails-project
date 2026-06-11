class Task < ApplicationRecord
  # --- Associations ---
  has_many :comments, dependent: :destroy

  # The new SubTask association
  has_many :sub_tasks, dependent: :destroy

  # This is the Phase 2 magic macro: It allows a Task form to also create SubTasks
  accepts_nested_attributes_for :sub_tasks, allow_destroy: true, reject_if: :all_blank

  # --- Validations ---
  validates :title, presence: true
  validates :description, presence: true

  # --- Callbacks ---
  # Phase 3: Trigger an automatic action right after a task is saved to the DB
  after_create :log_creation_note

  private

  def log_creation_note
    # The shovel operator (<<) instantly builds and saves the associated comment
    comments << Comment.new(body: "System log: Task initialized and secured by system admin.")
  end
end
