class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string  :name
      t.string  :address
      t.string  :city
      t.string  :state
      t.string  :country
      t.float   :lat
      t.float   :lng
      t.text    :description
      t.timestamps
      t.boolean :delta, :default => true, :null => false
    end
    
    add_index :places, :lat
    add_index :places, :lng
  end

  def self.down
    drop_table :places
  end
end
