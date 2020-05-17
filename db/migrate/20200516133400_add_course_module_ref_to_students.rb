class AddCourseModuleRefToStudents < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :course_module, foreign_key: true
  end
end
