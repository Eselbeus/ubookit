class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :password_digest
      t.string :band_name
      t.float :rating, default: 3.0

      t.timestamps
    end
  end
end
