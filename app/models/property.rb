class Property < ApplicationRecord
    belongs_to :seller, class_name: 'User'
    has_many :bids

    validates :title, presence: true
    validates :description, presence:true
    validates :price, presence: true, numericality: {greater_than: 0}
    validates :seller, presence: true

    def highest_bid_amount
        highest_bid = bids.maximum(:amount)
        highest_bid || 0
    end
end   
