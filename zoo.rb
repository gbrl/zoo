class Animal
  attr_accessor :num_legs, :warm_blood, :can_swim, :can_fly

  def initialize(num_legs,warm_blood,can_swim,can_fly)
    @num_legs = num_legs
    @warm_blood = warm_blood
    @can_swim = can_swim
    @can_fly = can_fly
  end

  def warm_blooded?
    self.warm_blood
  end

  def can_swim?
    self.can_swim
  end

  def can_fly?
    self.can_fly
  end
end

class Mammal < Animal
  def initialize(num_legs,can_swim,can_fly)
    warm_blood = true
    super(num_legs,warm_blood,can_swim,can_fly)
  end
end

class Primate < Mammal
  def initialize(can_swim)
    num_legs = 2
    can_fly = false
    super(num_legs,can_swim,can_fly)
  end

end


# CHIMPANZEES

class Chimpanzee < Primate
  def initialize
    can_swim = false
    super(can_swim)
  end
end

koko = Chimpanzee.new
puts "-----------------------------------------------------------------"
puts "Is a chimpanzee warm blooded? #{koko.warm_blooded? ?  'Yes' : 'No'}"
puts "How many legs does a himpanzee have? #{koko.num_legs}"
puts "Can a chimpanzee fly? #{koko.can_fly? ?  'Yes' : 'No'}"
puts "Can a chimpanzee swim? #{koko.can_swim? ?  'Yes' : 'No'}"


# MYTHICAL SIMMER CHIMPANZEES

class SwimmerChimpanzee < Primate
  def initialize
    can_swim = true
    super(can_swim)
  end
end

waterkoko = SwimmerChimpanzee.new
puts "-----------------------------------------------------------------"
puts "Is a swimmer chimpanzee warm blooded? #{waterkoko.warm_blooded? ? 'Yes' : 'No'}"
puts "How many legs does a swimmer chimpanzee have? #{waterkoko.num_legs}"
puts "Can a swimmer chimpanzee fly? #{waterkoko.can_fly? ?  'Yes' : 'No'}"
puts "Can a swimmer chimpanzee swim? #{waterkoko.can_swim? ?  'Yes' : 'No'}"


# BIRDS

class Bird < Animal
  def initialize(can_swim)
    can_fly = true
    num_legs = 2
    warm_blood = true
    super(num_legs,warm_blood,can_swim,can_fly)
  end
end


# PARROTS

class Parrot < Bird
  def initialize
    can_swim = false
    super(can_swim)
  end
end

sam = Parrot.new
puts "-----------------------------------------------------------------"
puts "Is a parrot warm blooded? #{sam.warm_blooded? ? 'Yes' : 'No'}"
puts "How many legs does a parrto have? #{sam.num_legs}"
puts "Can a parrto fly? #{sam.can_fly? ?  'Yes' : 'No'}"
puts "Can a parrto swim? #{sam.can_swim? ?  'Yes' : 'No'}"


# DUCKS

class Duck < Bird
  def initialize
    can_swim = true
    super(can_swim)
  end
end

ducky = Duck.new
puts "-----------------------------------------------------------------"
puts "Is a duck warm blooded? #{ducky.warm_blooded? ? 'Yes' : 'No'}"
puts "How many legs does a bat have? #{ducky.num_legs}"
puts "Can a duck fly? #{ducky.can_fly? ?  'Yes' : 'No'}"
puts "Can a duck swim? #{ducky.can_swim? ?  'Yes' : 'No'}"


# AMPHIBIANS

class Amphibian < Animal
  def initialize
    warm_blood = false
    num_legs = 4
    can_swim = true
    can_fly = false
    super(num_legs,warm_blood,can_swim,can_fly)
  end
end


# FROGS

class Frog < Amphibian 
end

frogy = Frog.new
puts "-----------------------------------------------------------------"
puts "Is a sam warm blooded? #{frogy.warm_blooded? ? 'Yes' : 'No'}"
puts "How many legs does a bat have? #{frogy.num_legs}"
puts "Can a frog fly? #{frogy.can_fly? ?  'Yes' : 'No'}"
puts "Can a frog swim? #{frogy.can_swim? ?  'Yes' : 'No'}"


# BATS

class Bat < Mammal
  def initialize
    num_legs = 2
    can_fly = true
    can_swim = false
    super(num_legs,can_swim,can_fly)
  end
end

batty = Bat.new
puts "-----------------------------------------------------------------"
puts "Is a bat warm blooded? #{batty.warm_blooded? ? 'Yes' : 'No'}"
puts "How many legs does a bat have? #{batty.num_legs}"
puts "Can a bat fly? #{batty.can_fly? ?  'Yes' : 'No'}"
puts "Can a bat swim? #{batty.can_swim? ?  'Yes' : 'No'}"
