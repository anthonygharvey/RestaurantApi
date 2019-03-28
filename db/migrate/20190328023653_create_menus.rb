class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :drinks
      t.string :appetizers
      t.string :entrees
      t.string :desserts

      t.timestamps
    end
  end
end
