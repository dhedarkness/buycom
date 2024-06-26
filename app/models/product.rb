class Product < ApplicationRecord
    has_one :order_detail
end
