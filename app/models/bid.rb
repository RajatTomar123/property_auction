class Bid < ApplicationRecord
    belongs_to :property
    belongs_to :bidder, class_name: 'User'

    validates :amount, presence: true, numericality: {greater_than: 0}
    validates :property, presence: true
    validates :bidder, presence: true
end
