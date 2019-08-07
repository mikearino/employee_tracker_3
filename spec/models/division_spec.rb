require 'rails_helper'

describe Division do
  it {  should have_many(:employees)}
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(20) }
end

describe Division do
  it("titleizes the name of an division") do
    division = Division.create({name: "human resources"})
    expect(division.name()).to(eq("Human Resources"))
  end
end
