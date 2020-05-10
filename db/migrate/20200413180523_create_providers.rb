class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :type
      t.string :name
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.string :city
      t.string :country
      t.string :phone
      t.string :po_box
      t.string :email
      t.string :status

      t.references :provider_type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
