class AddToCadidateTable < ActiveRecord::Migration[7.0]
  def change
    add_column :candiates, :first, :integer
    add_column :candiates, :second, :integer
    add_column :candiates, :third, :integer
 
    #Ex:- :default =>''
  end
end
