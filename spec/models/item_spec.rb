require 'rails_helper'

RSpec.describe Item, :type => :model do
    subject {described_class.new }
    
    it "is valid with valid attributes" do
        subject.itemName = "anything"
        subject.category = "canned"
        expect(subject).to be_valid
    end
    
    it "is not valid without an item name" do
        expect(subject).to_not be_valid
    end
    
    it "is not valid without a category" do
        subject.itemName = "anything"
        expect(subject).to_not be_valid
    end
end
