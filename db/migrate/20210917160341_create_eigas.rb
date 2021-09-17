class CreateEigas < ActiveRecord::Migration[6.1]
  def change
    create_table :eigas do |t|
      t.string :name, :null => false
      t.integer :year
      t.string :description
      t.string :image_url
      t.boolean :is_showing, :null => false
      t.timestamps
    end
    # 一意性の確保
    # remove_index :eigas, [:name]
    add_index :eigas, [:name], :unique => true
  end
end
