class CreateLinkToShortens < ActiveRecord::Migration[5.2]
  def change
    create_table :link_to_shortens do |t|
      t.integer :product_id
      t.string :color
      t.string :size
      t.integer :amount

      t.timestamps
    end
  end
end
