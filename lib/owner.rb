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
  
  
end