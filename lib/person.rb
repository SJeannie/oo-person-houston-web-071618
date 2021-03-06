class Person

  attr_reader  :name, :happiness, :hygiene
  attr_accessor :bank_account

  @@friend = ""

  @@people = []

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @@people << self

  end

  def clean?
    if @hygiene > 7
      return true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end


  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    # The `call_friend` method should accept another instance of the Person class,
    # or "friend". The method should increment the caller and the callee's happiness points
    # by three. If Stella calls her friend Felix, the method should return "Hi Felix!
    # It's Stella. How are you?"

    self.happiness += (3)
    friend.happiness +=(3)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"

  end

  def start_conversation(converser, topic)

    if topic == "politics"
      self.happiness -= 2
      converser.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      converser.happiness += 1
      return "blah blah sun blah rain"
    else

      return "blah blah blah blah blah"
    end
  end

end
