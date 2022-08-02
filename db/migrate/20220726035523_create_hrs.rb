class CreateHrs < ActiveRecord::Migration[7.0]
  def change
    create_table :hrs do |t|
      t.string :name
      t.string :email
      t.string :password 
      t.timestamps
    end
  end
end
