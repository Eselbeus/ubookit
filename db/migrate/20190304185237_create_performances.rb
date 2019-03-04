class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.belongs_to :musician, foreign_key: true
      t.belongs_to :venue, foreign_key: true
      t.boolean :booked, default: false
      t.datetime :time
      t.integer :feedback

      t.timestamps
    end
  end
end
