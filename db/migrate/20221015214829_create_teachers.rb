class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :title
      t.string :description
      t.string :activity
      t.string :language
      t.integer :price
      t.integer :duration
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
