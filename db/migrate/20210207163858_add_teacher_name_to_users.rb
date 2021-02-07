class AddTeacherNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :teacher_name, :string
  end
end
