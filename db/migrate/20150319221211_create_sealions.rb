class CreateSealions < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string :name, null: false, limit: 225

      t.timestamps null: false
    end

  end
end
