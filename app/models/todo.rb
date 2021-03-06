class Todo < ApplicationRecord
  # assocs
  has_many :items, dependent: :destroy

  # validations
  validates_presence_of :title, :created_by
end
