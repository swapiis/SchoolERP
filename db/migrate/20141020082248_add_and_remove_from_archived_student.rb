class AddAndRemoveFromArchivedStudent < ActiveRecord::Migration
  def change
    remove_column :archived_students, :photo_filename
    remove_column :archived_students, :photo_content_type
    remove_column :archived_students, :photo_data
    add_column :archived_students, :image_file_name, :string
    add_column :archived_students, :image_content_type, :string
    add_column :archived_students, :image_file_size, :integer
    add_column :archived_students, :image_updated_at, :datetime
  end
end
