class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name_first
      t.string :name_last
      t.string :email
      t.string :twitter

      t.timestamps null: false
    end
  end
end
