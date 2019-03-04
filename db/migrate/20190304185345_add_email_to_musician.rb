class AddEmailToMusician < ActiveRecord::Migration[5.2]
  def change
    add_column :musicians, :email, :string
  end
end
