class Warehouse < ApplicationRecord
    has_many :inventories
    has_many :items, through: :inventories

    validates :name, presence:  true
    validates :location, presence: true
    validates :name, uniqueness: { scope: :location}
end
