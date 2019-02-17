require 'pry'
class Owner
  
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def self.count 
    self.all.size
  end 
  
  def self.reset_all 
    self.all.clear
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end 
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end 
  
  def play_with_cats 
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def feed_fish 
    @pets[:fishes].each do |fish| 
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets 
    @pets.each do |type, array|
<<<<<<< HEAD
      array.each do |animal|
        animal.mood = "nervous"
      end 
      array.clear
    end
  end 
  
  def list_pets 
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count 
    cat_count = @pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
=======
      [type][array].each do |animal|
        binding.pry
      end 
    end
>>>>>>> 05b8da46adc8725b0ca6c8bfdc4502f4ca56ba08
  end 
  
end