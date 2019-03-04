class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.belongs_to :location, foreign_key: true
      t.string :email
      t.string :username
      t.string :password_digest
      t.float :rating, default: 3.0
      t.integer :rental, default: 0

      t.timestamps
    end
  end
end
