module TripFunctions

  def create_shipping_category(shipping_attrs)
    shipping_category = Spree::ShippingCategory.where(:name => shipping_attrs[:name]).first_or_create
    puts "ShippingCategory: #{shipping_attrs[:name]}"
    shipping_category
  end

  def create_taxonomy(taxonomy_attrs)
    taxonomy = Spree::Taxonomy.where(:name => taxonomy_attrs[:name]).first_or_create(taxonomy_attrs)
    puts "Taxonomy: #{taxonomy_attrs[:name]}"
    taxonomy
  end

  def create_taxon(taxonomy, taxon_attrs)
    taxon_attrs[:parent] = Spree::Taxon.where(:name => taxon_attrs[:parent]).first if taxon_attrs[:parent]
    taxon_attrs[:taxonomy] = taxonomy
    taxon = Spree::Taxon.where(:name => taxon_attrs[:name]).first_or_create(taxon_attrs)
    puts "Taxon: #{taxon_attrs[:name]}"
    taxon
  end

  def create_property(property_attrs)
    property = Spree::Property.where(:name => property_attrs[:name]).first_or_create(property_attrs)
    puts "Property: #{property_attrs[:name]}"
    property
  end

end