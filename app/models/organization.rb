class Organization < ActiveRecord::Base
    validates :org_name, presence: true
end
