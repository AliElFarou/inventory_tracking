class Item < ApplicationRecord

    has_many :inventories
    has_many :warehouses, through: :inventories

    validates :name, presence: true
    validates :name, uniqueness: true

end
