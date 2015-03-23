class CreateLightsaber < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string :name, null: false
    end
  end
end
