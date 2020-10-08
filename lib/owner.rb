require 'pry'
class Owner

  attr_reader :name, :species
  @@all = []

  def initialize(name, species = "human")
    @name = name 
    @species = species 
    @@all << self 
  end 

  def say_species 
    return "I am a #{species}."
  end 

  def self.all
    @@all
  end 

  def self.count 
    #self.all.count same thing 
    @@all.count
  end 

  def self.reset_all
    self.all.clear
   end

   def cats 
    Cat.all.filter{|pets|pets.owner == self }
   end 

   def dogs 
    Dog.all.filter{|pets|pets.owner == self }
   end 

   def buy_cat(name)
    kat = Cat.new(name ,self)
   end 

   def buy_dog(name)
    dug = Dog.new(name, self)
   end 

   def walk_dogs
    dogs.each{|dugs| dugs.mood = "happy"}
   end 

   def feed_cats
    cats.each{|kats| kats.mood = "happy"}
   end 

   def sell_pets 
    shmoney = cats + dogs 
    shmoney.each{|shmoney| shmoney.mood = "nervous"}
    shmoney.each{|shmoney| shmoney.owner = nil }

   end 

   def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
   end 

 
    ##binding.pry

end