class AddCourseOrderToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :course_order, :integer

    # Newest Duck shall rank "highest"" (be last).
    Lesson.update_all('course_order = EXTRACT(EPOCH FROM created_at)')

  end
end
