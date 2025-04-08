class Project < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :activities, as: :auditable, dependent: :destroy

  validates :name, presence: true

  after_update  -> { log_activity("updated", saved_changes) }

  enum :status, { pending: 0, in_progress: 1, on_hold: 2, completed: 3 }

  private

  def log_activity(action, saved_changes)
    changes = saved_changes.except("updated_at", "created_at")
    activities.create(action:, details: changes)
  end
end
