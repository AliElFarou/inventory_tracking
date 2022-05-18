class Item < ApplicationRecord

    has_many :warehouse_items
    has_many :warehouses, through: :warehouse_items

    validates :name, presence: true, uniqueness: true
    validates :description, presence: :true

end
