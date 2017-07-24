class CreateStock < ActiveRecord::Migration[5.1]
  def change
    create_table(:stock) do |t|
      t.column(:store_id, :integer)
      t.column(:brand_id, :integer)
      t.column(:store_name, :varchar)
      t.column(:brand_name, :varchar)
    end
  end
end
