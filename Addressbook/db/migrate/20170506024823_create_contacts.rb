class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :phone
      t.references :addbook, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
