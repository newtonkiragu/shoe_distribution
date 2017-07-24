class Brand < ActiveRecord::Base
  validates(:brand_name, presence: true)
  has_many :stores, through: :stock
  before_save(:upcase_brand_name)
  private
  def upcase_brand_name
    self.brand_name = brand_name.capitalize
  end
end
