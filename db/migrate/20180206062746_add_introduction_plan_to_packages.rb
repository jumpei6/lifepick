class AddIntroductionPlanToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :introduction, :text
    add_column :packages, :plan_image, :text
  end
end
