# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name="Blake")
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness > 0 and happiness < 11
            @happiness = happiness
        elsif happiness >10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end

    end

    def hygiene=(hygiene)
        if hygiene > 0 and hygiene < 11
            @hygiene = hygiene
        elsif hygiene >10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end

    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end 

    def happy?
        @happiness  > 7 ? true : false      
    end

    def clean?
        @hygiene  > 7 ? true : false      
    end

    def take_bath
        @hygiene += 4
        self.hygiene = (@hygiene)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        @hygiene -= 3
        self.hygiene = (@hygiene)
        @happiness += 2 
        self.happiness = (@happiness)
        '♪ another one bites the dust ♫'
    end

    def call_friend friend
        @happiness += 3
        friend.happiness += 3
        self.happiness=(@happiness)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
             'blah blah sun blah rain'

        else
            'blah blah blah blah blah'
        end
    end

end



kai = Person.new("Clara")
kai.happiness = 11

puts kai.happiness