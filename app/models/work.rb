class Work < ApplicationRecord

 with_options presence: true do
  validates :work_name
  validates :value, format: { with: /\A[0-9]+\z/ },
                    numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  validates :description
  validates :image
  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :condition_id
    validates :shipping_cost_id
    validates :shipping_area_id
    validates :shipping_day_id
  end
end

belongs_to       :user
has_one          :buy
has_one_attached :image
 
end
