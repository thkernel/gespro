class CreateUnities < ActiveRecord::Migration[5.2]
  def change
    create_table :unities do |t|
      t.string :name
      t.string :unity_symbol
      t.text :description
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
