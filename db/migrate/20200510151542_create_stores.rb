class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.references :store_type, foreign_key: true
      t.string :name
      t.string :address
      t.string :city
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
