class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :slogan
      t.string :activity_area
      t.string :address
      t.string :phone
      t.string :po_box
      t.string :city
      t.string :country
      t.string :email
      t.text :about

      t.timestamps
    end
  end
end
