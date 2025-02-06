class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.string "phone_number"
      t.integer "company_id"


      t.timestamps
    end
  end
end
