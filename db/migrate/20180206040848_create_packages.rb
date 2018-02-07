class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string  :name
      t.text :image
      t.timestamps
    end
  end
end
