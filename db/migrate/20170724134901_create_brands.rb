class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands) do |t|
      t.column(:brand_name, :varchar)
      t.timestamps()
    end
  end
end
