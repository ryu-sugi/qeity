class Buy < ApplicationRecord
 belongs_to :user
 belongs_to :work
 has_one    :shipping_address
end
