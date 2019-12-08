class Game

    attr_accessor :questions

    @@all = []
    
    def self.all
        @@all
    end

  
    def valid_entry?(input)
        if (1..4).any? {|num| num == input.to_i}
        @result = input.to_i
          true
        else
          false
        end
    end

    def counting 
        if valid_entry? (input)
            
            if answers[@result].id == "7642"
                michael.counter += 1
            
            elsif answers[@result].id == "7643"
                dwight.counter += 1

            elsif answers[@result].id == "7644"
                jim.counter += 1

            elsif answers[@result].id == "7645"
                kelly.counter += 1

            elsif answers[@result].id == "7646"
                meredith.counter += 1

            elsif answers[@result].id == "7647"
            angela.counter += 1 

            end
        else
            
            Game.all.last
        end
            
    end
    




        









end

