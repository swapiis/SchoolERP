class AddAndRemoveFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :photo_filename
    remove_column :students, :photo_content_type
    remove_column :students, :photo_data
    add_column :students, :image_file_name, :string
    add_column :students, :image_content_type, :string
    add_column :students, :image_file_size, :integer
    add_column :students, :image_updated_at, :datetime
  end
end
