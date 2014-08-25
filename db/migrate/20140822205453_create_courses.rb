class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :department
      t.integer :user_id
      t.integer :university_id
      t.integer :course_number

      t.timestamps
    end
  end
end
