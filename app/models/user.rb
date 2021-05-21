class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :nickname
    validates :first_name
    validates :last_name
    validates :first_name_furigana
    validates :last_name_furigana
    validates :birth_date
  end
  has_many :works
end
