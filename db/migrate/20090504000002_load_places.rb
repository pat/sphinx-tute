class LoadPlaces < ActiveRecord::Migration
  def self.up
    file_contents = open('db/places.yml') { |f| f.read }
    YAML::load(file_contents).each do |args|
      puts "Creating #{args[:name]}"
      Place.create args
    end
  end

  def self.down
    #
  end
end
