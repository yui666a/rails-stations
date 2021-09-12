class CreateEigas < ActiveRecord::Migration[6.1]
  def change
    create_table :eigas do |t|
      t.string :name
      t.integer :year
      t.string :description
      t.string :image_url
      t.boolean :is_showing
      t.timestamps
    end
  end
end
