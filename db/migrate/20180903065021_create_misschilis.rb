class CreateMisschilis < ActiveRecord::Migration[5.2]
  def change
    create_table :misschilis do |t|
      t.string :product_id

      t.timestamps
    end
  end
end
