class AddCategoryToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :category, :string
  end
end
