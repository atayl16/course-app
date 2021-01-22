class RenameCoursesMarketingDescriptionToShortDescription < ActiveRecord::Migration[6.0]
  def change
    rename_column :courses, :marketing_description, :short_description
  end
end
