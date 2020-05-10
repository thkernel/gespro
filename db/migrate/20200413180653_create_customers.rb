class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customer_type
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.string :city
      t.string :country
      t.string :phone
      t.string :po_box
      t.string :email
      t.string :status

      t.references :customer_type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
