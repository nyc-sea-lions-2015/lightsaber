class CreateSealions < ActiveRecord::Migration
  def change
    create_table :sealion do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
