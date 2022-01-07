class ChangeDobToDateOnly < ActiveRecord::Migration[6.1]
  def change
    change_column :appointments, :date_of_birth, :date
  end
end
