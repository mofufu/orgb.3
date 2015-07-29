class CreateBusinessPlans < ActiveRecord::Migration
  def change
    create_table :business_plans do |t|
      t.string :title

      t.timestamps
    end
  end
end
