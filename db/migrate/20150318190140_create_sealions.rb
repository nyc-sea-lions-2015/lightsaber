class CreateSealions < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string :name, null: false
      t.string :niche

      t.timestamps
    end
  end
end
