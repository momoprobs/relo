#encoding: utf-8
class LoadNewOrleansData < ActiveRecord::Migration
	def up
		down

		#Upload test info for New Orleans
		no = City.new(:name => "New Orleans", :neighborhood_map => "no_neighborhoods.jpg", :photo => "New-Orleans.jpeg")
		no.save(:validate =>false)

		#Upload test neighborhoods for New Orleans
		fq = Neighborhood.new(:name => "French Quarter", :avg_rent => 800.00, :avg_home_price => 230000.00, :description => "The French Quarter, also known as the Vieux Carré, is the oldest neighborhood in the city of New Orleans. After New Orleans (La Nouvelle-Orléans in French) was founded in 1718 by Jean-Baptiste Le Moyne de Bienville, the city developed around the Vieux Carré ('Old Square' in English), a central square. The district is more commonly called the French Quarter today, or simply 'The Quarter,' related to changes in the city with American immigration after the Louisiana Purchase.[1] Most of the present-day historic buildings were constructed during the late 18th century, during the city's period of Spanish rule, and reflect Spanish colonial architecture.",
			:small_image => "french_quarter.jpg", :large_image => "french_quarter.jpg")
		fq.city = no
		fq.save(:validate => false)

		ad = Neighborhood.new(:name => "Arts District", :avg_rent => 900.00, :avg_home_price => 550000.00, :description => "The Warehouse District, known today as the New Orleans Arts District, was originally established as an industrial area in the 19th century to store grain, coffee, and produce shipped through the Port of New Orleans. As commerce, trade, and industry practices evolved over time, the area's prosperity faded, and the once busy streets became eerily quiet.",
			:small_image => "arts_district.jpg", :large_image => "arts_district.jpg")
		ad.city = no
		ad.save(:validate => false)

		wd = Neighborhood.new(:name => "Warehouse District", :avg_rent => 1050.00, :avg_home_price => 480000.00, :description => "The Warehouse District, known today as the New Orleans Arts District, was originally established as an industrial area in the 19th century to store grain, coffee, and produce shipped through the Port of New Orleans. As commerce, trade, and industry practices evolved over time, the area's prosperity faded, and the once busy streets became eerily quiet.",
			:small_image => "warehouse_district.jpg", :large_image => "warehouse_district.jpg")
		wd.city = no
		wd.save(:validate => false)

		gd = Neighborhood.new(:name => "Garden District", :avg_rent => 1250.00, :avg_home_price => 1550000.00, :description => "The Garden District is a neighborhood of the city of New Orleans. A subdistrict of the Central City/Garden District Area, its boundaries as defined by the City Planning Commission are: St. Charles Avenue to the north, 1st Street to the east, Magazine Street to the south and Toledano Street to the west. The National Historic Landmark district extends a little further.[1] The area was originally developed between 1832 and 1900 and is considered one of the best-preserved collections of historic southern mansions in the United States. The 19th-century origins of the Garden District illustrate wealthy newcomers building opulent structures based upon the prosperity of New Orleans in that era.",
			:small_image => "garden_district.jpg", :large_image => "garden_district.jpg")
		gd.city = no
		gd.save(:validate => false)

		lv = Neighborhood.new(:name => "Lakeview", :avg_rent => 475.00, :avg_home_price => 321000.00, :description => "Lakeview is a neighborhood of the city of New Orleans. A subdistrict of the Lakeview District Area, its boundaries as defined by the City Planning Commission are: Robert E. Lee Boulevard to the north, Orleans Avenue to the east, Florida Boulevard, Canal Boulevard and I-610 to the south and Pontchartrain Boulevard to the west. Lakeview is sometimes used to describe the entire area bounded by Lake Pontchartrain to the north, the Orleans Avenue Canal to the east, City Park Avenue to the south and the 17th Street Canal to the west. This larger definition includes the West End, Lakewood and Navarre neighborhoods, as well as the Lakefront neighborhoods of Lakeshore and Lake Vista.",
			:small_image => "lakeview.jpg", :large_image => "lakeview.jpg")
		lv.city = no
		lv.save(:validate => false)		

		marigny = Neighborhood.new(:name => "Marigny", :avg_rent => 385.00, :avg_home_price => 129000.00, :description => "Faubourg Marigny (sometimes called The Marigny) is a neighborhood of the city of New Orleans. Its boundaries as defined by the City Planning Commission are North Rampart Street and St. Claude Avenue to the north, Press Street to the east, the Mississippi River to the south and Esplanade Avenue to the west.",
			:small_image => "marigny.jpg", :large_image => "marigny.jpg")
		marigny.city = no
		marigny.save(:validate => false)

		treme = Neighborhood.new(:name => "Treme", :avg_rent => 395.00, :avg_home_price => 156000.00, :description => "Tremé is a neighborhood of the city of New Orleans. 'Tremé'' is often rendered as Treme, historically the neighborhood is sometimes called by its more formal French names of Faubourg Tremé;[1] it is listed in the New Orleans City Planning Districts as Tremé / Lafitte when including the Lafitte Projects. Originally known as 'Back of Town,'' urban planners renamed the neighborhood 'Faubourg Tremé'' in an effort to revitalize the historic area[when?]. A subdistrict of the Mid-City District Area, its boundaries as defined by the City Planning Commission are Esplanade Avenue to the east, North Rampart Street to the south, St. Louis Street to the west and North Broad Street to the north. It is one of the oldest neighborhoods in the city, and early in the city's history was the main neighborhood of free people of color. Historically a racially mixed neighborhood, it remains an important center of the city's African-American and Créole culture, especially the modern brass band tradition.",
			:small_image => "treme.jpg", :large_image => "treme.jpg")
		treme.city = no
		treme.save(:validate => false)

	end

	def down
		City.delete_all
		Neighborhood.delete_all
	end
end
