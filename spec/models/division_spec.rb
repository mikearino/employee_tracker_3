require 'rails_helper'

describe Division do
  it {  should have_many(:employees)}
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(20) }
end
