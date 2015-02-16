class CreateTypeContacts < ActiveRecord::Migration
  def change
    create_table :type_contacts do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
