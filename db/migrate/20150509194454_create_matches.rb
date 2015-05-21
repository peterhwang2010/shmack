class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :group_id
      
      t.timestamps null: false
    end
  end
end
