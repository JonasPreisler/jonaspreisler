class AddImage2AndImage3AndImage4ToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :image_2, :string
    add_column :projects, :image_3, :string
    add_column :projects, :image_4, :string
  end
end
