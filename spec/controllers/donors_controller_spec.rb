require 'rails_helper'

RSpec.describe DonorsController, type: :controller do
    describe 'update a donor phone number' do
        it 'should modify the donor attributes' do
            donor = FactoryGirl.create(:donor)
            put :update, {:id => donor.id, :donor => {:phoneNum => '123-456-7890'}}
            donor.reload
            expect(donor.phoneNum).to eq('123-456-7890')
        end
    end
end
