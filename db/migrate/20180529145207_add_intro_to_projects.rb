class AddIntroToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :intro, :text
  end
end
