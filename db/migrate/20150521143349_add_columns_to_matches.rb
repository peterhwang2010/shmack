class AddColumnsToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :name, :string
  end
end
