class AddFeaturedToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :featured, :integer
  end
end
