class CreateMatchUsers < ActiveRecord::Migration
  def change
    create_table :match_users do |t|

      t.timestamps null: false
    end
  end
end
