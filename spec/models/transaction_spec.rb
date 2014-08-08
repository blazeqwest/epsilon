require 'rails_helper'

RSpec.describe Transaction, :type => :model do
  it "transaction has a valid factory" do
    expect( FactoryGirl.build(:transaction)).to be_valid
  end
  it "should require an amount" do
    expect(FactoryGirl.build(:transaction, amount: nil)).not_to be_valid
  end
  it "should require an user_id" do
    expect(FactoryGirl.build(:transaction, account_id: nil)).not_to be_valid
  end
  it "should require an amount" do
    expect(FactoryGirl.build(:transaction, amount: nil)).not_to be_valid
  end
  it { is_expected.to belong_to(:account) }
end
