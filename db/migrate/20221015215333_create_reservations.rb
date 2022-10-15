class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.integer :price
      t.string :state

      t.timestamps
    end
  end
end
