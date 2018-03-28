require 'rails_helper'

# test suite for todo model
RSpec.describe Todo, type: :model do
  # test if todo model has 1 to many relation ship with item modal
  it { should have_many(:items).dependant(:destroy) }

  # Validation tests
  # check the todo has a title
  it { should validate_presence_of(:title) }
  # check that todo has a created_by user
  it { should validate_presence_of(:created_by) }
end
