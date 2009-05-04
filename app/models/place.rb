class Place < ActiveRecord::Base
  define_index do
    indexes :name, :sortable => true
    indexes description, address
    indexes city, state, country, :facet => true
    
    has lat, lng
    has created_at, updated_at
  end
end
