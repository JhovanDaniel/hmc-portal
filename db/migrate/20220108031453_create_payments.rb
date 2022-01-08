class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :email
      t.string :token
      t.integer :appointment_id

      t.timestamps
    end
  end
end
