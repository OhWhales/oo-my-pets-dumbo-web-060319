class Owner
  # code goes here

  attr_accessor :name, :pets
  attr_reader :species 
  def initialize(species)
    @species = species 
    @pets = 
    {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end
    
  def say_species 
    return "I am a #{@species}."
  end 
  
  def buy_fish(fish)
    @pets[:fishes].push(Fish.new(fish))
  end
  def buy_cat(cat) 
    @pets[:cats].push(Cat.new(cat))
  end
  def buy_dog(dog)
    @pets[:dogs].push(Dog.new(dog))
  end
  def walk_dogs 
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end
  def play_with_cats 
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end 
  
  def sell_pets
    @pets.each do |k,v|
      v.each do |animal|
        animal.mood = "nervous"
      end
      v.clear 
    end
  end
  
  def list_pets
    fish = 0 
    dogs = 0
    cats = 0 
    @pets. each do |pet|
      
    end
  end
  
# "I have 2 fish, 3 dog(s), and 1 cat(s)."
end