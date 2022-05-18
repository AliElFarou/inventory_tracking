class Warehouse < ApplicationRecord
    has_many :warehouse_items
    has_many :items, through: :warehouse_items

    validates :name, presence:  true
    validates :location, presence: true, uniqueness: true
end
