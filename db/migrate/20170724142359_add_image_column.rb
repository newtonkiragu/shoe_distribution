class AddImageColumn < ActiveRecord::Migration[5.1]
  def change
    add_column(:stores, :image, :varchar)
  end
end