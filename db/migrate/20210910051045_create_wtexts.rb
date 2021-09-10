class CreateWtexts < ActiveRecord::Migration[6.1]
  def change
    create_table :wtexts do |t|
      t.string :name
      t.integer :hour
    end
  end
end
