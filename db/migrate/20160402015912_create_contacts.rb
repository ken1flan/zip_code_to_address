class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :zip_code
      t.string :address
      t.string :phone_number
      t.string :mail_address

      t.timestamps null: false
    end
  end
end
