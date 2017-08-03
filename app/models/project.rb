class Project < ApplicationRecord
  validates :name, presence: true
  validates :goal, presence: true
end
