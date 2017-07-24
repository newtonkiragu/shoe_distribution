class Store < ActiveRecord::Base
  has_many :brands, through: :stock
  before_save(:upcase_store_name)
  private
  def upcase_store_name
    self.store_name = store_name.upcase
  end
end
