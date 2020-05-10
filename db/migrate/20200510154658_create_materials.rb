class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.references :material_type, foreign_key: true
      t.string :name
      t.string :brand
      t.string :serial
      t.string :model
      t.string :matriculation_number
      t.string :serial_number
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
