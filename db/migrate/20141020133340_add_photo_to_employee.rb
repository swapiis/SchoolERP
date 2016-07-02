class AddPhotoToEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :photo_filename
    remove_column :employees, :photo_content_type
    remove_column :employees, :photo_data
    add_column :employees, :image_file_name, :string
    add_column :employees, :image_content_type, :string
    add_column :employees, :image_file_size, :integer
    add_column :employees, :image_updated_at, :datetime
  end
end
