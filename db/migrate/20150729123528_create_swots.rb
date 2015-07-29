class CreateSwots < ActiveRecord::Migration
  def change
    create_table :swots do |t|
      t.string :company_name
      t.text :strength
      t.text :weak
      t.text :opportunity
      t.text :threat

      t.timestamps
    end
  end
end
