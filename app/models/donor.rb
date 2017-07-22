class Donor < ActiveRecord::Base
    validates_presence_of :donorName, :phoneNum
end
