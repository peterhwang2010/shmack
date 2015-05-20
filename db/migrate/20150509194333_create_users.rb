class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :image_aws
      t.timestamps null: false
    end
  end
end
