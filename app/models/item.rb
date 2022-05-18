class Item < ApplicationRecord

    has_many :warehouse_items
    has_many :warehouses, through: :warehouse_items

    validates :name, presence: true
    validates :description, presence: :true
    validates :name, uniqueness: true

end
