class AddServiceIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :service_id, :integer
  end
end
