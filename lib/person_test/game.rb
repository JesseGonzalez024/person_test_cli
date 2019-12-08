
class Game
    attr_accessor :question
    
    @@all = []
    
    def self.all
        @@all
    end
    
    #----------------------------------------------------------------------------------------------------------------
    
    def start_quiz
        question_counter = 0
            until question_counter == Question.all.size
                puts " "
                puts "##{question_counter + 1}. #{Question.all[question_counter].title}"
                puts " "
                @answers = Question.all[question_counter].display_answers
                puts " "
                user_input = gets.to_i
                
                if valid_entry? (user_input)
                    counting (user_input)
                else
                    until valid_entry?(user_input) == true                                                 
                    end    
                end
                question_counter += 1
            end  
    end

    #----------------------------------------------------------------------------------------------------------------

    def valid_entry?(user_input)
        if (1..4).any? {|num| num == user_input.to_i}
            true
        else
            false
        end
    end

    #----------------------------------------------------------------------------------------------------------------
    
    def counting(user_input) 
        
        result = user_input.to_i - 1 
        
        if @answers[result].id == "7642"
            CHARACTERS[0].counter += 1

        elsif @answers[result].id == "7643"
            CHARACTERS[1].counter += 1

        elsif @answers[result].id == "7644"
            CHARACTERS[2].counter += 1

        elsif @answers[result].id == "7645"
            CHARACTERS[3].counter += 1

        elsif @answers[result].id == "7647"
            CHARACTERS[4].counter += 1
        end               
    end

    #----------------------------------------------------------------------------------------------------------------

end