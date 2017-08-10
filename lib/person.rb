# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness

    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene=(hygiene)
    @hygiene = hygiene

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene= (@hygiene)

    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene= (@hygiene)
    @happiness += 2
    self.happiness= (@happiness)
    "♪ another one bites the dust ♫"
  end


  def call_friend(friend)
    @happiness += 3
    self.happiness= (@happiness)
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      @happiness -= 2
      self.happiness= (@happiness)
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      @happiness += 1
      self.happiness= (@happiness)
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end
