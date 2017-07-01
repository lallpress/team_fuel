class Donation < ActiveRecord::Base
      validates :item, presence: true, length: {minimum: 4 }
    validates :quantity, presence: true 
end
