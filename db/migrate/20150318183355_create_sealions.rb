class CreateSealions < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false

      t.timestamps
    end
  end
end
