class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :additional
      t.boolean :wedding
      t.boolean :party

      t.timestamps null: false
    end
  end
end
