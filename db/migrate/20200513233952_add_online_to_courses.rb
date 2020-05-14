class AddOnlineToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :online, :boolean
  end
end
