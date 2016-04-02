class CreateZipCodes < ActiveRecord::Migration
  def change
    create_table :zip_codes do |t|
      t.string :code
      t.integer :prefecture_id
      t.string :address

      t.timestamps null: false
    end
  end
end
