class AddAddressToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :address, :text
  end
end
