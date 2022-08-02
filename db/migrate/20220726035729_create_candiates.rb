class CreateCandiates < ActiveRecord::Migration[7.0]
  def change
    create_table :candiates do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :inter
      t.timestamps
    end
  end
end
