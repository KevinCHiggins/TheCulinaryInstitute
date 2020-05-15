class CreateCourseModules < ActiveRecord::Migration[6.0]
  def change
    create_table :course_modules do |t|
      t.string :name
      t.string :description
      t.integer :credits

      t.timestamps
    end
  end
end
