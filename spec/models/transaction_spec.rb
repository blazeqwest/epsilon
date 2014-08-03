require 'rails_helper'

RSpec.describe Transaction, :type => :model do
  it "transaction has a valid factory" do
    expect( FactoryGirl.build(:transaction)).to be_valid
  end
  
  it { is_expected.to belong_to(:account) }
end
