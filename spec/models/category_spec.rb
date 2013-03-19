require 'spec_helper'

describe Category do
  it { should have_many(:articles) }
  it { should allow_mass_assignment_of(:name) }

  context "validates presence of name" do
    it { should validate_presence_of(:name) }
  end

end
