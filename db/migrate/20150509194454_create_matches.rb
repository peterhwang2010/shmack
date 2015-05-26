class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :group_id
      t.string :winner, :default => "none"
      t.string :playerone, :default => "none"
      t.string :playertwo, :default => "none"
      
      t.timestamps null: false
    end
  end
end
