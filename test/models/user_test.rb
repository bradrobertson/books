require "minitest_helper"

describe User do

  subject { User.new(:name => "test") }

  # fixtures :all

  before do
    @user = User.new(:name => "test")
  end

  it "must be valid" do
    @user.valid?.must_equal true
  end

  it{ must valid? }#have_valid(:name).when("something") }
  #it{ wont be_valid? }#have_valid(:name).when("", nil) }

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @user.blow_minds!
  #     @user.interesting?.must_equal true
  #   end
  # end

end
