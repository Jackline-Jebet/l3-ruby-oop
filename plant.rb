# TODO: Implement a class do illustrate how class variables and methods work.
class Plant

    @@num_of_trees = 0
    @@all_instances = []

    attr_accessor :species

    def initialize(species)
        @species = species
        @@num_of_trees += 1
        info = {
            instance_reference: self,
            number: @@num_of_trees
        }
        @@all_instances << info
    end

    def speak_of_species
        puts "#{self.species} is speaking"
    end

    def self.tree_count
        @@num_of_trees
    end

    def self.show_instances
        @@all_instances
    end

end

#ACCESs CLASS VARIABLE
mwarubaini = Plant.new("Neem Tree")
mwarubaini.speak_of_species
puts Plant.tree_count

mango = Plant.new("Mango Tree")
orange = Plant.new("Orange Tree")
cypress = Plant.new("Cypress Tree")
eucalyptus = Plant.new("Eucalyptus Tree")

# puts mango.tree_count
# puts orange.tree_count
# puts cypress.tree_count
# puts eucalyptus.tree_count

puts Plant.tree_count
puts Plant.show_instances