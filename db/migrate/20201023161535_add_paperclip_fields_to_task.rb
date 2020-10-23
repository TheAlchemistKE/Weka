class AddPaperclipFieldsToTask < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :image_file_name,    :string
    add_column :tasks, :image_content_type, :string
    add_column :tasks, :image_file_size,    :integer
    add_column :tasks, :image_updated_at,   :datetime
  end
end
