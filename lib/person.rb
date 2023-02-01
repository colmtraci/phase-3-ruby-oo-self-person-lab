class Person 
    attr_reader :name, :happiness;
    attr_accessor :bank_account, :hygiene;
    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness= number
        if number > 10 
            @happiness = 10
        elsif number < 0 
            @happiness = 0
        else 
            @happiness = number
        end
    end

    def hygiene= number
        if number > 10 
            @hygiene = 10
        elsif number < 0 
            @hygiene = 0
        else 
            @hygiene = number
        end
    end

    def happy? 
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid amount
        self.bank_account += amount
        'all about the benjamins'
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic 
        case topic
        when 'politics' then
                friend.happiness -= 2
                self.happiness -= 2
                'blah blah partisan blah lobbyist'
            
        when 'weather' then
                friend.happiness += 1
                self.happiness += 1
                'blah blah sun blah rain'
                
        else 'blah blah blah blah blah'
        end
    end
end
