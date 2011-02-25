require 'spec_helper'

describe User do
  it { should respond_to(:name) }
  
  it "should create a user" do
    User.create.should be_true
  end
end