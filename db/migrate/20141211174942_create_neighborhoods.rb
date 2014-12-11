class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
    	t.integer			:city_id
    	t.string			:name
    	t.decimal			:avg_rent
    	t.decimal			:avg_home_price
    	t.string			:description
    	t.string			:small_image
    	t.string			:large_image
      t.timestamps
    end
  end
end
