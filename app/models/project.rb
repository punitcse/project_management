class Project < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :name, presence: true

  enum :status, { pending: 0, in_progress: 1, on_hold: 2, completed: 3 }
end
