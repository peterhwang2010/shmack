class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :image_aws
    	t.integer :win, :default => 0
    	t.integer :lose, :default => 0 
      t.timestamps null: false
    end
  end
end
