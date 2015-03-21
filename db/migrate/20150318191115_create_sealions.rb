class CreateSealions < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string :name
      t.string :favourite_dance

      t.timestamps
    end
  end
end
