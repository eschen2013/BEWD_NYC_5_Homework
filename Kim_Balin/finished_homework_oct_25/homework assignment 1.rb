class Person
  def initialize name, profession
    @name = name
    @profession = profession
  end
  
  attr_accessor :name
  attr_accessor :profession

  def introduce
    "Hi! My name is #{@name}. I'm a #{@profession}"
  end

  def introduce_from_across_the_room
    "HI! MY NAME IS #{@name.upcase}. I'M A #{@profession.upcase}"
  end
end

require 'minitest/autorun'

describe Person do 
  it "is initialized with a name and profession" do
    person = Person.new "Steven", "Software Developer"
    person.introduce.must_equal "Hi! My name is Steven. I'm a Software Developer"
    person.introduce_from_across_the_room.must_equal "HI! MY NAME IS STEVEN. I'M A SOFTWARE DEVELOPER"
  end
end
