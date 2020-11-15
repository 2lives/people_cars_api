class AddCarsToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :person_id, :integer
  end
end
