class CreateUserStats < ActiveRecord::Migration
  def change
    create_table :user_stats do |t|

      t.timestamps null: false
    end
  end
end
