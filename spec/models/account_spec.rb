require 'rails_helper'

RSpec.describe Account, :type => :model do
  it "account has a valid factory" do
    expect( FactoryGirl.build(:account)).to be_valid
  end

  it { is_expected.to have_many(:transactions) }
end
