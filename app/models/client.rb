class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships

    def total_charges
        total = 0
        memberships = self.memberships
        memberships.map {|t| total += t.charge }
        
        total
    end
end
