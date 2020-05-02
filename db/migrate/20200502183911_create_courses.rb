class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :price
      t.datetime :schedule_date
      t.string :category
      t.text :description
      t.integer :duration

      t.timestamps
    end
  end
end
