class CreateSealions < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string :name, limit: 20, null: false
      t.integer :weight, limit: 3, null: false

      t.timestamps null: false
    end
  end
end
