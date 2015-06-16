class CreatePgnates < ActiveRecord::Migration
  def change
    create_table :pgnates do |t|
      t.string :pname
      t.text :content

      t.timestamps null: false
    end
  end
end
