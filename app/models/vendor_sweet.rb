class VendorSweet < ApplicationRecord
    belongs_to :sweet
    belongs_to :vendor 


    validates :price, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0} 

    validates_uniqueness_of :vendor_id, :scope => [:sweet_id]
    # validates_uniqueness_of :sweet_id, :scoope => [:vendor_id]



    private 


#There should only be one `VendorSweet` for any pair of `Vendor`
#  and `Sweet`.

# if the pair exist, do not make the pair 

# Add a validation to ensure that there is only one VendorSweet 
# for a Vendor and Sweet pair. Update your
#  error handling so that this new validation is also displayed
#   to the user.

end
