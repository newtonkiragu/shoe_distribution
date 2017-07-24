class AddImageColumnToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column(:brands, :image, :varchar)
  end
end
