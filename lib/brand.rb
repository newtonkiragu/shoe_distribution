class Brand < ActiveRecord::Base
  validates(:brand_name, presence: true)
  has_many :stores, through: :stock
end
