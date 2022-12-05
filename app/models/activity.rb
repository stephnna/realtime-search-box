class Activity < ApplicationRecord
  validates :name, presence: true, length: { in: 6..50 }
end
