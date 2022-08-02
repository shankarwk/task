class AddToCandiate < ActiveRecord::Migration[7.0]
  def change 
    add_column :candiates, :role, :string, :default => "user"
  end
end
 