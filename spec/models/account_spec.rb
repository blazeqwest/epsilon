require 'rails_helper'

RSpec.describe Account, :type => :model do
  it "account has a valid factory" do
    expect(FactoryGirl.build(:account)).to be_valid
  end
  it "should require a balance" do
    expect(FactoryGirl.build(:account, balance: nil)).not_to be_valid
  end
  it "should require a user_id" do
    expect(FactoryGirl.build(:account, user_id: nil)).not_to be_valid
  end
  it "should require a name" do
    expect(FactoryGirl.build(:account, name: nil)).not_to be_valid
  end
  it "should require a name with length more than 3 letters(valid case)" do
    expect(FactoryGirl.build(:account, name: "ok")).not_to be_valid
  end
  it "should require a name with length more than 3 letters(invalid case)" do
    expect(FactoryGirl.build(:account, name: "okies")).to be_valid
  end
  it "should require a balance to be numerical" do
    expect(FactoryGirl.build(:account, balance: "ok")).not_to be_valid
  end
  it "should require a user_id to be numerical" do
    expect(FactoryGirl.build(:account, user_id: "ok")).not_to be_valid
  end
  it { is_expected.to have_many(:transactions) }
  it { is_expected.to belong_to(:user) }
end
