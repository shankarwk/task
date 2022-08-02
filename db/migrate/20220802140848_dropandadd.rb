class Dropandadd < ActiveRecord::Migration[7.0]
  def change
    drop_table :hrs
  end
end
