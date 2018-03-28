class Item < ApplicationRecord
  # assocs
  belongs_to :todo

  validates_presence_of :name
end
