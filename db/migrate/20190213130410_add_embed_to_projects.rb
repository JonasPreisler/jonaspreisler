class AddEmbedToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :embed, :string
  end
end
