class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table(:stores) do |t|
      t.column(:store_name, :varchar)
      t.column(:location, :varchar)
      t.timestamps()
    end
  end
end
