class Pirate
  attr_accessor :name, :weight, :height
	attr_reader

	@@all = []

	def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]
		self.class.all << self
	end

	def self.all
		@@all
	end

end