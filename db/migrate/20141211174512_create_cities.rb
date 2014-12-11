class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
    	t.string			:name
    	t.string			:neighborhood_map
    	t.string			:photo
      t.timestamps
    end
  end
end
