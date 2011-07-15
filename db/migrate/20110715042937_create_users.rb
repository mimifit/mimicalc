class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :age, :float, :null => false
      t.column :sex, :string, :null => false
      t.column :weight, :float, :null => false
      t.column :height, :float, :null => false 
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
