class User < ApplicationRecord
    has_many :listed_properties, foreign_key: 'seller_id', class_name: 'Property'
    has_many :bids, foreign_key: 'bidder_id'

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :user_type, presence:true, inclusion: { in: ['buyer', 'seller']}
end
