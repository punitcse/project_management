class Activity < ApplicationRecord
  belongs_to :auditable, polymorphic: true
end
