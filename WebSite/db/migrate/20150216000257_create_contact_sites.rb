class CreateContactSites < ActiveRecord::Migration
  def change
    create_table :contact_sites do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company_name
      t.string :phone_number
      t.integer :type_contact_id
      t.text :message
      t.boolean :active

      t.timestamps
    end
  end
end
