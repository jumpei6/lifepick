class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :image
      t.text  :introduction
      t.integer :package_id
      t.timestamps
    end
  end
end
