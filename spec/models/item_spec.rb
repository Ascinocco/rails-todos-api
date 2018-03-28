require 'rails_helper'

# test suite for item model
RSpec.describe Item, type: :model do
  # association test
  # esure an item belongs to a single todo record
  it { should belong_to(:todo) }

  # ensure an item has a name
  it { should validate_presence_of(:name) }
end
