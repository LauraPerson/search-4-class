class RemoveCategoryFromCourses < ActiveRecord::Migration[6.0]
  def change

    remove_column :courses, :category, :string
  end
end
