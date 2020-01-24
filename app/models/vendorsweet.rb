class Vendorsweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 25 }
    validates :vendor_id, uniqueness: true
    validates :sweet_id, uniqueness: true
end
