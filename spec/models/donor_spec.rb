require 'rails_helper'

RSpec.describe Donor, type: :model do
    subject {described_class.new }
    
  it "is valid with valid attributes" do
      subject.donorName = "XYZ Corp"
      subject.phoneNum = "5554443333"
      expect(subject).to be_valid
  end
  
  it "is not valid without a donorName" do
      expect(subject).to_not be_valid
  end
  
  it "is not valid without a phoneNum" do
      subject.donorName = "XYZ Corp"
      expect(subject).to_not be_valid
  end
end
