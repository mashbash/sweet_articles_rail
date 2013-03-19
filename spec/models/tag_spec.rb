require 'spec_helper'

describe Tag do

  it { should have_and_belong_to_many(:articles) }
  it { should allow_mass_assignment_of(:name) }

  context "validates presence of name" do
    it { should validate_presence_of(:name) }
  end

end
