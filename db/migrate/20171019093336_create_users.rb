class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :email_address
      t.text :phone_number
      t.string :company_name

      t.timestamps
    end
  end
end
